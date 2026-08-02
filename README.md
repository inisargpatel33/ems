Event Management System

Introduction  
An Event Management System (EMS) is a software tool that assists in planning and organizing events efficiently. It simplifies the process by managing tasks such as event scheduling, ticket booking, and communication. Organizing an event can be tough, but an EMS makes it easier by handling everything in one place. Whether it’s a conference, concert, wedding, or corporate meeting, an EMS helps event organizers stay organized and gives attendees a better experience.  

Objectives  
- Simplify Event Planning: Help organizers plan and manage concerts efficiently.  
- Manage Ticket Booking: Allow attendees to book tickets easily.  
- Improve Communication: Provide updates and ticket notifications to attendees.  
- Handle Payments Securely: Support safe and convenient payment options.  
- Improve Audience Experience: Ensure a hassle-free concert experience.  
- Support Online and Offline Events: Organize both virtual and live concerts.  
- Enable Sponsorship Management: Help manage sponsors and partnerships.  
- Provide Customer Support: Offer assistance to attendees before and during the concert.  
- Manage Marketing and Promotions: Help in advertising and promoting the event.  

Features  
Admin Features  
- Dashboard: View an overview of the event, including event bookings, users, categories, and sponsors.  
- Category Management: Add, update, or delete event categories.  
- Sponsor Management: Add and manage sponsors along with their logos.  
- Event Management: Add new events with details such as name, date, time, location, pricing, and capacity.  
- Booking Management: View all bookings, confirm bookings, or cancel user bookings.  
- User Management: Manage registered users, including account approval, suspension, or deletion.  
- General Settings: Change website header, footer, name, phone number, email, and address.  
- Feedback Management: View and manage user feedback.  

User Features
- Register and Login: Create an account and log into the system securely.  
- Profile Management: Update profile details and change passwords.  
- View Events: Browse ongoing, upcoming, and completed events.  
- Book Events: Securely book tickets with a maximum limit of 10 tickets per booking.  
- Cancel Booking: Cancel previous event reservations.  
- Payment Processing: Complete payments securely using the Razorpay API integration.  
- Give Feedback: Submit inquiries and event feedback directly to the administration.  

System Architecture and Database  
The Event Management System is a web-based software hosted on a centralized server. The database offers flexible storage for users, products, orders, and system information.  

 🛠️ How to Run Locally

To run this project on your local machine, you will need a local server environment that supports PHP and MySQL (such as XAMPP, WAMP, or MAMP).

Step 1: Set up the Project Folder
1. Download and install [XAMPP](https://www.apachefriends.org/index.html).
2. Clone this repository: `git clone https://github.com/inisargpatel33/ems.git`
3. Move the cloned `ems` folder into your local server's root directory:
   * For XAMPP: `C:\xampp\htdocs\ems`
   * For WAMP: `C:\wamp\www\ems`

Step 2: Database Configuration
1. Open your XAMPP Control Panel and start the **Apache** and **MySQL** modules.
2. Open your web browser and navigate to `http://localhost/phpmyadmin`.
3. Create a new database named `ems`.
4. Click on the `ems` database, go to the **Import** tab, and upload the `ems.sql` file located in the root of this repository.

Step 3: Update Connection Settings
If your local MySQL setup uses a password (by default, XAMPP does not), update the database credentials in the following files:
* `includes/config.php`
* `admin/includes/config.php`

Step 4: Launch the Application
Open your web browser and go to `http://localhost/ems` to view the site.

Demo Credentials:
* Admin: `admin` / `Test@123`
* User: `testuser` / `Test@123`
