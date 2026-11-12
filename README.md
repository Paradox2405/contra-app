# Contra: Construction Contracting App

A Flutter marketplace that connects construction contractors with engineers and skilled workers. Workers and engineers post profiles with their skills and day rates, and contractors browse, hire and chat with them.

## Features

- **Apply as an engineer or worker**: post a profile with your specialisation, skills, previous experience and pay rate (for example 4000 LKR per day)
- **Hire personnel**: browse available engineers and workers and view their past performance and quality of work
- **Job listings** and contractor information pages
- **Construction map**: contractor locations on Google Maps
- **In-app chat** with a contractor
- **Ratings and feedback** (`flutter_rating_bar`)
- Card payment screen for posting profiles, plus terms and health and safety regulations pages
- Sign in with email and password or Google, with password reset

## Tech stack

- **Flutter** (Dart) with **GetX** (controllers and bindings)
- **Firebase Authentication** and Google Sign-In
- **Google Maps Flutter**
- `shared_preferences`, `flutter_rating_bar`

## Project structure

```
lib/
  controllers/  GetX controllers and bindings per screen
  models/       engineer, worker, profile and map marker models
  routes/       route table
  screens/      welcome, login, registration, hire personnel, job listing,
                post profile, chat, map, payment, feedback, T&C
  tools/        shared helpers
```

## Getting started

1. Add your Firebase config (`android/app/google-services.json`, `ios/Runner/GoogleService-Info.plist`) and enable Email/Password and Google sign-in.
2. Add a Google Maps API key to `AndroidManifest.xml` and `AppDelegate.swift`.
3. Run:
   ```bash
   flutter pub get
   flutter run
   ```

> Built in 2022 against Firebase plugin versions from that time. Upgrade the plugins before building with a current Flutter SDK.
