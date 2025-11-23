# 📦 Shared Models

**Global Data Transfer Objects.**

These are models used by multiple features simultaneously.

- **Example:** `UserModel` (Used by Auth, Profile, and Home).
- **Note:** Feature-specific models (like `LoginRequest`) should stay inside `features/{name}/data/models/`.
