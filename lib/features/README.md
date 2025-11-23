# 🚀 Features

This is where the business logic and UI screens live. Each folder represents a functional module.

## Standard Feature Structure

Every feature (e.g., `auth`, `home`) must follow this structure:

### 1. Data Layer (`/data`)

- **models/**: JSON parsers (e.g., `ProductModel`).
- **services/**: The "Worker". Raw Dio calls to the API (e.g., `ProductService`).
- **repos/**: The "Manager". Coordinates data fetching and error handling (e.g., `ProductRepository`).

### 2. Presentation Layer (`/presentation`)

- **viewmodel/**: The "Brain". Manages state (Loading/Success/Error) and logic.
- **views/**: The "Face". UI Widgets that listen to the ViewModel.
