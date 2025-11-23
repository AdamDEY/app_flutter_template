# 🏗️ Project Architecture

This project follows a **Feature-First Architecture** combined with **MVVM** (Model-View-ViewModel) and the **Repository Pattern**.

## 📂 Folder Structure

- **core/**: Global utilities, generic widgets, network clients, and themes. Things used by multiple features.
- **features/**: The actual functional modules (screens) of the app. Each feature is self-contained.
- **router/**: Navigation configuration using `go_router`.

## 🚀 Key Design Principles

1.  **Separation of Concerns:** UI doesn't know about Network. Network doesn't know about UI.
2.  **Scalability:** To add a new feature, just add a folder in `features/`.
3.  **Theme-Driven:** Styles are defined globally in `core/theme/app_theme.dart`.
