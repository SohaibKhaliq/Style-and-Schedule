<?php

namespace App\Http\Controllers\Auth;

use App\Http\Traits\Notify;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Auth\Events\Registered;
use App\Providers\RouteServiceProvider;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\JsonResponse;
use Facades\App\Services\BasicService;
use Illuminate\Validation\Rules\Password;

class RegisterController extends Controller
{
    use Notify;
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
//    protected $redirectTo = RouteServiceProvider::HOME;
    protected $redirectTo = '/user/dashboard';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Show the application registration form.
     *
     * @return \Illuminate\View\View
     */
    public function showRegistrationForm()
    {
        if (config('basic.registration') == 0) {
            return redirect('/')->with('warning', 'Registration Has Been Disabled.');
        }

        $info = json_decode(json_encode(getIpInfo()), true);
        $country_code  = null;
        if(!empty($info['code'])){
        $country_code = @$info['code'][0];
        }
        $countries = config('country');

        return view(template().'auth.register',compact('country_code','countries'));
    }

    public function sponsor($sponsor)
    {
        if (config('basic.registration') == 0) {
            return redirect('/')->with('warning', 'Registration Has Been Disabled.');
        }

        session()->put('sponsor', $sponsor);
        $info = json_decode(json_encode(getIpInfo()), true);
        $country_code  = null;
        if(!empty($info['code'])){
            $country_code = @$info['code'][0];
        }
        $countries = config('country');

        return view(template().'auth.register', compact('sponsor', 'countries','country_code'));

    }


    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        if (config('basic.strong_password') == 0) {
            $rules['password'] = ['required', 'min:6', 'confirmed'];
        } else {
            $rules['password'] = ["required", 'confirmed',
                Password::min(6)->mixedCase()
                    ->letters()
                    ->numbers()
                    ->symbols()
                    ->uncompromised()];
        }

        if (basicControl()->reCaptcha_status_registration) {
            $rules['g-recaptcha-response'] = ['sometimes', 'required', 'captcha'];
        }

        $rules['firstname'] = ['required', 'string', 'max:91'];
        $rules['lastname'] = ['required', 'string', 'max:91'];
        $rules['username'] = ['required', 'alpha_dash', 'min:5', 'unique:users,username'];
        $rules['email'] = ['required', 'string', 'email', 'max:255', 'unique:users,email'];
        $rules['address'] = ['required', 'string', 'max:255', 'min:5', 'regex:/^[a-zA-Z0-9\s]+$/'];
        $rules['country_code'] = ['max:5'];
        // $rules['phone_code'] = ['required'];
        $rules['phone'] = ['required', 'starts_with:+92', 'regex:/^\+92[0-9]{10}$/'];
        return Validator::make($data, $rules, [
            'firstname.required' => 'First Name Field is required',
            'lastname.required' => 'Last Name Field is required',
            'username.required' => 'Username Field is required',
            'username.alpha_dash' => 'Username must be alphanumeric and may contain dashes and underscores',
            'username.min' => 'Username must be at least 5 characters',
            'username.unique' => 'Username already taken',
            'email.required' => 'Email Field is required',
            'email.email' => 'Email must be a valid email address',
            'email.unique' => 'Email already taken',
            'password.required' => 'Password Field is required',
            'password.min' => 'Password must be at least 6 characters',
            'password.confirmed' => 'Password does not match',
            'address.required' => 'Address Field is required',
            'address.min' => 'Address must be at least 5 characters',
            'address.regex' => 'Address must be alphanumeric',
            'country_code.max' => 'Country Code must be at most 5 characters',
            // 'phone_code.required' => 'Phone Code Field is required',
            'phone.required' => 'Phone Field is required',
            // 'phone_code.max' => 'Phone Code must be at most 5 characters',
            'phone.max' => 'Phone must be at most 11 characters',
            'phone.min' => 'Phone must be at least 5 characters',
            'phone.regex' => 'Phone must be numeric',
            'g-recaptcha-response.required' => 'The reCAPTCHA field is required.',
        ]);

    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\Models\User
     */
    protected function create(array $data)
    {
        $basic = (object) config('basic');

        $sponsor = session()->get('sponsor');
        if ($sponsor != null) {
            $sponsorId = User::where('username', $sponsor)->first();
        } else {
            $sponsorId = null;
        }


        return  User::create([
            'firstname' => $data['firstname'],
            'lastname' => $data['lastname'],
            'username' => $data['username'],
            'email' => $data['email'],
            'address'=>$data['address'],
            'referral_id' => ($sponsorId != null) ? $sponsorId->id : null,
            'country_code' => $data['country_code'],
            'phone_code' => $data['phone_code'],
            'phone' => $data['phone'],
            'password' => Hash::make($data['password']),
            'email_verification' => ($basic->email_verification) ? 0 : 1,
            'sms_verification' => ($basic->sms_verification) ? 0 : 1,
        ]);
    }

    public function register(Request $request)
    {

        $this->validator($request->all())->validate();

        $user = $this->create($request->all());
        $msg = [
            'username' => $user->username,
        ];
        $action = [
            "link" => route('admin.user-edit',$user->id),
            "icon" => "fas fa-user text-white"
        ];

        $this->adminPushNotification('ADDED_USER', $msg, $action);

        $this->guard()->login($user);


        session()->forget('sponsor');

        if ($response = $this->registered($request, $user)) {
            return $response;
        }

        if($request->ajax()) {
            return route('user.home');
        }

        return $request->wantsJson()
            ? new JsonResponse([], 201)
            : redirect($this->redirectPath());
    }


    /**
     * The user has been registered.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  mixed  $user
     * @return mixed
     */
    protected function registered(Request $request, $user)
    {
        $user->last_login = Carbon::now();
        $user->two_fa_verify = ($user->two_fa == 1) ? 0 : 1;
        $user->save();

    }

    protected function guard()
    {
        return Auth::guard();
    }

}
