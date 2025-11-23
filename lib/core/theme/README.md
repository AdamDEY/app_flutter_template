# 🌐 Network

**Connectivity Configuration.**

- `dio_client.dart`: The singleton instance of Dio with interceptors, timeouts, and base URL.
- **Note:** Actual API calls do **not** go here. They go in `features/{feature}/data/services/`.
