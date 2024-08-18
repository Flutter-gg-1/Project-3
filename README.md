# KidLearn

KidLearn is a prototype Flutter application designed to facilitate English learning for kids. The app showcases a clean and maintainable codebase, adhering to Object-Oriented Programming (OOP) principles and Clean Code practices. Although it is a prototype focusing on the UI design, it includes basic functionality and limited user interactions.

![App Clip](metalUp.gif)

## Table of Contents

- [Screens](#screens)
- [Data Models](#data-models)
- [Design Philosophy](#design-philosophy)
- [Functionality](#functionality)
- [Getting Started](#getting-started)
- [Future Enhancements](#future-enhancements)
- [Created By](#created-by)


## App Overview

### Screens

1. **Authentication**
   - No Authentication Mechanism. Tapping the 'GO' button takes the user to the home screen.

2. **Home (Courses)**
   - Displays available English courses for kids.
   - Users can browse through the courses and select one to view more details.

3. **Course Unit & Chapters**
   - After selecting a course, users can view the list of units and chapters.
   - The content is organized into units, with each unit containing multiple chapters.

4. **Profile**
   - Displays the user’s profile information.
   - Includes basic details such as username, email, and achievements.

5. **Challenges**
   - Contains a list of challenges that the user can complete to earn XP and rewards.
   - Encourages users to engage more with the learning material.

### Data Models

The app’s code includes data models for the following proposed tables:

- **User:** Represents the user’s profile information.
- **Stats:** Tracks user-specific data like XP, streaks, and other performance-related metrics.
- **Challenge:** Details the challenges available to the user.
- **Achievement:** Captures the achievements unlocked by the user.
- **Course:** Represents the English courses available in the app.
- **Unit:** Represents the different units within a course.
- **Chapter:** Represents the chapters within each unit.

### Design Philosophy

- **OOP & Clean Code:** The app is built using Object-Oriented Programming principles to ensure a maintainable and scalable codebase. Clean Code practices are followed to make the code easy to read, understand, and extend.
- **UI Design:** The design of the app was created based on a provided UI, ensuring a visually appealing and user-friendly interface.

### Functionality

As a prototype, KidLearn has limited functionality, focusing mainly on the UI and basic navigation between screens, serving as a foundation for further development.
There is no data persistance or backend integrations at this stage.

## Getting Started

### Prerequisites

- Flutter SDK
- A code editor (such as VS Code or Android Studio)

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/kidlearn.git
    ```
2. Navigate to the project directory:

    ```bash
   cd kidlearn
    ```

3. Get the dependencies:

    ```bash
   flutter pub get
    ```

4. Run the app:

    ```bash
   flutter run
    ```
### Future Enhancements

- **User Interaction:** Implement full user interaction and backend integration for a complete learning experience.
- **Content Delivery:** Add actual English learning content and exercises.
- **Enhanced Challenges:** Develop a more interactive and rewarding challenge system.
- **Progress Tracking:** Introduce detailed progress tracking and personalized learning paths.

## Created By

- **Amer Alyusuf**
- [Personal Website](https://amer266030.github.io)
- [LinkedIn](https://www.linkedin.com/in/amer-alyusuf-77398587)

