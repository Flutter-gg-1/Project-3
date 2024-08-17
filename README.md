---

# Mental Up - Mobile App (Design Only)

**Mental Up** is a Flutter-based mobile application design prototype aimed at enhancing cognitive skills through various exercises and challenges. This project focuses on the UI/UX design without any functional backend or state management.

## Screenshots

![Mental Up Screenshot](./education_kids_game/assets/screen.gif)

## Overview

This project demonstrates the UI/UX design of a mental training app. It includes several screens that are part of the user journey, such as the login screen, skill-building units, progress tracking, and user profile.

### Features (Design Only)

- **Login Screen:** Clean and user-friendly login interface.
- **Home Screen:** Displays categories like Logical Reasoning, Artistic Thinking, and Verbal Skills.
- **Unit Details:** Visual representation of progress and locked/unlocked units.
- **Profile Screen:** Shows user statistics, friends list, and achievements.
- **Challenges and Achievements:** Designed sections for displaying user challenges and achievements.

## Getting Started

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Dart: Included with Flutter SDK
- IDE: Android Studio, VS Code, or any other IDE with Flutter support

### Installation

1. **Clone the repository:**

    ```bash
    git clone https://github.com/trt14/Project-3.git
    cd Project-3
    cd education_kids_game
    code .
    ```

2. **Install dependencies:**

    ```bash
    flutter pub get
    ```

3. **Run the app:**

    Connect your device or start an emulator, then run:

    ```bash
    flutter run
    ```

### Folder Structure

```bash
mental_up_design/
|- lib/
   |- screens/
   |- bottom_nav_bar.dart
   |- main.dart
|- assets/
   |- images/
   |- icons/
   |- logo/
|- pubspec.yaml
```

- **lib/screens/**: Contains all the screen UI files like login, profile, and home screens.
- **bottom_nav_bar.dart**: Bottom navigation bar that allows users to switch between different screens (Home, Challenges, Profile, Settings) with dynamic color changes based on the selected tab.
- **main.dart**: The entry point of the app, routing between screens.

### Customization

- **Icons & Images**: Update assets in the `assets/` directory.

## Contributing

Since this is a design-focused project, contributions can include improvements to the UI, adding new screens, or refining existing components. Fork the repository and create a pull request with your changes.


## Contact

For any inquiries or suggestions, please contact:

- Name: Ali Altarouty
- Email: tarooti14@gmail.com

---

