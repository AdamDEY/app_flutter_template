# /lib

This project follows a **Feature-First Architecture** combined with **MVVM** (Model-View-ViewModel) and the **Repository Pattern**.

## Structure Overview

- **core/**: Functionality shared across multiple features (Networking, Constants, Themes).
- **features/**: Functional modules of the application. Each feature is self-contained.
- **router/**: Navigation configuration using GoRouter.

# /core

This folder contains "Global" resources. Code here is **feature-agnostic**.

**Rule:** If code is used in **two or more** different features (e.g., Auth and Profile), it belongs here. If it is only used in one, keep it in that feature's folder.

# /core/constants

Static configuration files.

- `app_routes.dart`: String paths for navigation.
- `api_endpoints.dart`: Base URLs and specific API paths.
- `app_keys.dart`: Third-party keys (Stripe, Maps, etc.).

# /core/models

**Shared Data Models.**

These are models used by multiple features (e.g., `UserModel`, `ErrorModel`).
Feature-specific models (like `LoginRequest`) should stay inside their respective feature folder.

# /core/widgets

**Global UI Components.**

Dumb widgets that are reused throughout the app (e.g., `PrimaryButton`, `CustomTextField`, `LoadingSpinner`).
These widgets should not hold business logic.

# /features

This folder contains the functional modules of the app.

**Folder Structure per Feature:**

1. **Data:** Handling data sourcing (Network/DB) and parsing.
2. **Presentation:** Handling UI (Views) and Logic (ViewModels).

# /data/services

**The "Worker" Layer.**

- **Responsibility:** Makes raw network requests (GET, POST) using `DioClient`.
- **Input:** Primitive data (Strings, Ints).
- **Output:** Raw `Response` or `Map<String, dynamic>`.
- **Logic:** None. It just hits the endpoint.

# /data/repos

**The "Manager" Layer.**

- **Responsibility:** Coordinates data retrieval. It calls the Service.
- **Action:** Converts raw JSON/Data into Type-Safe **Models**.
- **Error Handling:** Catches technical errors (DioError) and rethrows clean Exceptions.

# /data/models

**Data Transfer Objects (DTOs).**

Models specific to this feature.

- Example: `LoginResponseModel`, `ProductDetailModel`.
- Includes `fromJson` and `toJson` methods.

# /presentation/viewmodel

**The "Logic" Layer (VM).**

- **Responsibility:** Manages the State of the View.
- **Action:** Calls the Repository methods.
- **State:** Updates the UI with states like `Loading`, `Success(Data)`, or `Error(Message)`.
- **Constraint:** NEVER imports UI libraries (Material/Cupertino).

# /presentation/views

**The "UI" Layer (V).**

- **Responsibility:** Draws the pixels on the screen.
- **Action:** Listens to the `ViewModel` and rebuilds when state changes.
- **Logic:** Zero business logic. Only UI logic (animations, navigation triggers).

# /router

**Navigation Configuration.**

- `app_router.dart`: The `GoRouter` configuration, defining all routes and the Bottom Navigation Shell.
- `routes.dart`: Static string constants for route paths.
- `app_shell.dart`: The wrapper widget containing the Bottom Navigation Bar.
