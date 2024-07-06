@bookAppointment
@if(isset($templates['book-appointment'][0]) && $bookAppointment = $templates['book-appointment'][0])
    <section class="appoinment_area"
             style="background: linear-gradient(rgb(53, 49, 47, 0.9),rgb(53, 49, 47, 0.9)), url({{ getFile(config('location.content.path').$bookAppointment->templateMedia()->background_image) }}); background-repeat: no-repeat; background-size: 100% 50%; background-position: top">
        <div class="container">
            <div class="row g-4">
                <div class="col-md-6" data-aos="fade-left">
                    <div class="section_left h-100">
                        <div class="bg-transparent border-0 card rounded-0 h-100">
                            <div class="pb-40 section_header">
                                <h2>@lang(optional($bookAppointment->description)->title)</h2>
                                <p>
                                    @lang(optional($bookAppointment->description)->short_details)
                                </p>
                            </div>
                            <div class="image_area h-100">
                                <iframe class="w-100 h-100"
                                        src="{{ optional($bookAppointment->templateMedia())->map_link }}" width="600"
                                        height="450" style="border:0;" allowfullscreen="" loading="lazy"
                                        referrerpolicy="no-referrer-when-downgrade"></iframe>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6" data-aos="fade-right">
                    <div class="section_right">
                        <form action="{{ route('user.book.appointment') }}" method="post">
                            @csrf
                            <div class="mt-4">
                                <select class="form-select form-control" name="service_name"
                                        aria-label="Default select example">
                                    <option selected disabled>@lang('Choose service')</option>
                                    @foreach($servicesName as $data)
                                        <option
                                            value="{{ $data->id }}">@lang(optional($data->serviceDetails)->service_name)</option>
                                    @endforeach
                                </select>
                            </div>
                            @error('service_name')
                            <span class="text-danger">{{ $message }}</span>
                            @enderror
                            <div class="mt-4 date">
                                <input type="date" name="date_of_appointment" class="form-control"
                                    value="{{ old('date_of_appointment') }}" min="{{ date('Y-m-d') }}" autocomplete="off" onkeydown="return false">
                                @error('date_of_appointment')
                                <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="mt-4">
                                <textarea class="form-control" name="message" placeholder="@lang('Type Your Massage')"
                                          rows="5">{{ old('message') }}</textarea>
                                @error('message')
                                <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <button type="submit" class="mt-4 common_btn">@lang('BOOK APPOINTMENT')</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endif
@endbookAppointment
