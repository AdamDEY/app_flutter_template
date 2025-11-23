import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // 1. PRIVATE CONSTRUCTOR
  // Prevents instantiation. We only want static access.
  AppTheme._();

  // 2. COLOR PALETTE (The Source of Truth)
  // Change these hex codes to update the whole app.
  static const _primaryColor = Color(0xFF6200EE); // Deep Purple
  static const _secondaryColor = Color(0xFF03DAC6); // Teal
  static const _errorColor = Color(0xFFB00020); // Standard Red

  // The specific background color you requested (Mint Green)
  static const _scaffoldBackground = Color.fromARGB(255, 219, 254, 235);
  static const _surfaceColor = Colors.white;

  // 3. THE LIGHT THEME DEFINITION
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,

    // A. GLOBAL COLOR SCHEME
    // Automatically generates a full palette based on your primary color
    colorScheme: ColorScheme.fromSeed(
      seedColor: _primaryColor,
      primary: _primaryColor,
      secondary: _secondaryColor,
      surface: _surfaceColor,
      error: _errorColor,
      background: _scaffoldBackground,
    ),

    // B. SCAFFOLD AND APP BAR
    scaffoldBackgroundColor: _scaffoldBackground,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent, // Transparent to show scaffold color
      elevation: 0, // Flat design (no shadow)
      centerTitle: true,
      scrolledUnderElevation: 0, // Prevents color change on scroll
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5,
      ),
    ),

    // C. TEXT THEME (Typography)
    // Uses Google Fonts 'Poppins'. ensure you have google_fonts in pubspec.yaml
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      displayLarge: const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      titleLarge: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
      bodyLarge: const TextStyle(
        fontSize: 16,
        color: Colors.black87,
        height: 1.5, // Better readability
      ),
      bodyMedium: const TextStyle(fontSize: 14, color: Colors.black54),
    ),

    // D. INPUT DECORATION (TextFields)
    // This makes every TextField look uniform automatically
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white, // White inputs stand out against Mint Green
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),

      // Default Border
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),

      // Enabled Border (Idle)
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none, // Clean look
      ),

      // Focused Border (Active)
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: _primaryColor, width: 2),
      ),

      // Error Border
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: _errorColor, width: 1.5),
      ),
    ),

    // E. BUTTONS (ElevatedButton)
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _primaryColor,
        foregroundColor: Colors.white, // Text color
        elevation: 2,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
        ),
      ),
    ),

    // F. FLOATING ACTION BUTTON
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: _primaryColor,
      foregroundColor: Colors.white,
    ),
  );
}
