# Style and Schedule

## Overview

Style and Schedule is a web-based application designed to streamline salon and spa appointment scheduling. It provides a user-friendly interface for clients to book appointments conveniently online.

## Features

- **User Authentication**: Secure login and registration for clients and staff members.
- **Appointment Management**: Schedule, reschedule, and cancel appointments with ease.
- **Service Selection**: Choose from a variety of salon and spa services with detailed descriptions.
- **Staff Management**: Assign staff members to appointments and manage their schedules.
- **Notification System**: Automated email notifications for appointment confirmations and reminders.
- **Admin Dashboard**: Monitor bookings, manage staff schedules, and view detailed analytics.

## Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/SohaibKhaliq/style-and-schedule.git
   cd style-and-schedule
2. **Install dependencies:**
   ```bash
   npm install
   composer install
   npm run dev
3. **Configure the environment:**
    . Duplicate .env.example and rename it to .env
    . Update database and mail configurations in the .env file.
5. **Run database migrations:**
    ```bash
    php artisan migrate
6. **Start the Laravel development server:**
    ```bash
    php artisan serve
7. **Usage:**
   . Client Interface: Navigate to the application URL and register/login.
   . Appointment Booking: Select desired services, choose available dates/times, and confirm bookings.
   . Staff Interface: Access the admin dashboard to manage appointments and staff schedules.
8. **Technologies Used**
   . **Backend:** Laravel PHP framework, MySQL database
   . **Frontend:** HTML, CSS, JavaScript
   . **Dependencies:** Laravel Passport for API authentication, Bootstrap for frontend styling
9. **Contributing**
   . Fork the repository and clone it locally.
   . Create a new branch for your feature or bug fix.
   . Commit your changes and push to your forked repository.
   . Submit a pull request for review.
10. **Credits**
   . Developed by [SohaibKhaliq]
   . For inquiries or support, contact [sohaibkhaliq510@gmail.com].
