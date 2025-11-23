# 🎨 App Theme & Design System

This folder contains the **Single Source of Truth** for the application's design.

Instead of hardcoding colors (`Colors.blue`) or font sizes (`fontSize: 20`) inside your widgets, you must use the rules defined in `app_theme.dart`.

---

## 🚀 How to use

### 1. Automatic Styling (Zero Effort)

Standard Flutter widgets are pre-configured to look good automatically. You do not need to add style properties to them.

| Widget             | Behavior                                                                                 |
| :----------------- | :--------------------------------------------------------------------------------------- |
| **Scaffold**       | Automatically uses the **Mint Green** background defined in the theme.                   |
| **AppBar**         | Automatically **Transparent** (seamless look) with black text.                           |
| **TextField**      | Automatically has a **White Background**, rounded corners, and colored borders on focus. |
| **ElevatedButton** | Automatically uses **Primary Color** background and White text with rounded corners.     |

**Example:**

```dart
// ✅ GOOD: It styles itself automatically
TextField(
  decoration: InputDecoration(hintText: "Enter email"),
)

// ❌ BAD: Don't manually style unless absolutely necessary
TextField(
  decoration: InputDecoration(
    fillColor: Colors.white,
    border: OutlineInputBorder(...)
  ),
)
```
