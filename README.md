# Pokemon App

This Flutter application is a practice project that displays a list of Pokemon, their moves, and allows users to mark Pokemon as favorites.

## Features

* Displays a list of Pokemon with their images and names.
* Shows detailed information about each Pokemon, including their moves.
* Allows users to mark Pokemon as favorites.
* Persists favorite Pokemon using `shared_preferences`.
* Uses skeleton loading animations while data is loading.

## Technologies Used

* **Flutter**: Cross-platform mobile development framework.
* **Flutter Riverpod:** State management.
* **Dio:** HTTP client for API requests.
* **Get_it:** Service locator for dependency injection.
* **Google Fonts:** Custom font integration.
* **Skeletonizer:** Skeleton loading animations.
* **Shared Preferences:** Local data storage.

## Packages

* **`flutter_riverpod: ^2.6.1`**: Used for efficient state management, allowing for reactive data updates throughout the app.
* **`google_fonts: ^6.2.1`**: Enables the use of custom fonts from the Google Fonts library for a more visually appealing UI.
* **`dio: ^5.8.0+1`**: Handles network requests to the PokeAPI to fetch Pokemon data.
* **`get_it: ^8.0.3`**: Implements a service locator pattern for easy access to dependencies across the application.
* **`skeletonizer: ^1.4.3`**: Provides skeleton loading animations to enhance the user experience during data loading.
* **`shared_preferences: ^2.5.2`**: Used for local storage to persist the user's favorite Pokemon selections.

## Getting Started

1.  **Clone the repository:**

    ```bash
    git clone [your-repository-url]
    ```

2.  **Navigate to the project directory:**

    ```bash
    cd [your-project-directory]
    ```

3.  **Install dependencies:**

    ```bash
    flutter pub get
    ```

4.  **Run the application:**

    ```bash
    flutter run
    ```

## Screenshots

Here are some screenshots of the app:

![Pokemon List](assets/app_screenshots_readme/Screenshot%20from%202025-02-26%2023-56-53.pngimages/pokemon_list.png)
![Pokemon Details](assets/app_screenshots_readme/Screenshot%20from%202025-02-26%2023-56-53.pngimages/pokemon_details.png)