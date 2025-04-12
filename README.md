# Supabase Auth and Contacts App

This is a Flutter app that utilizes **Supabase** for user authentication and data management.
Each user can only access their own data, ensuring privacy.
The app leverages **PostgreSQL** as the database with **Supabase Policies** for access control.

## Features

- **User Authentication**: Sign up, log in, and reset password functionalities.
- **Contacts Management**: Add, edit, and delete contacts.
- **Real-time Data**: Contacts are updated in real-time using **Supabase Realtime**.
- **Data Security**: Each user has access to their own information, with **Supabase Row-Level Security Policies** ensuring data privacy.

## Tech Stack

- **Frontend**: Flutter
- **Backend**: Supabase (PostgreSQL, Auth, Realtime)
- **Authentication**: Email and Password

## Setup Instructions

1. Clone the repository:
   ```bash
   git clone https://github.com/hamidbozorgvar/supabase_contacts_flutter.git
Navigate to the project folder:

Configuration
Set up a Supabase project (if you don’t already have one) at Supabase.io.

Create a new project and retrieve the URL and anon key from your Supabase project.

Replace the URL and anon key in the lib/main.dart file in the following lines:


await Supabase.initialize(
  url: 'your_supabase_url',
  anonKey: 'your_supabase_anon_key',
);
