import 'package:flutter/material.dart';

abstract class AppTheme {
  // Paleta de colores para modo claro.
  static final Color _primaryLight = const Color(0xFF2ecc71); // Verde brillante
  static final Color _primaryContainerLight =
      const Color(0xFF27ae60); // Verde contenedor
  static final Color _secondaryLight =
      const Color(0xFFe67e22); // Naranja quemado
  static final Color _tertiaryLight =
      const Color(0xFF9b59b6); // Púrpura moderado
  static final Color _backgroundLight = Colors.white;
  static final Color _surfaceLight = const Color(0xFFF2F2F2);
  static final Color _errorLight = Colors.redAccent;

  // Paleta de colores para modo oscuro.
  static final Color _primaryDark =
      const Color(0xFF2ecc71); // Mismo verde principal
  static final Color _primaryContainerDark =
      const Color(0xFF1e8449); // Verde más oscuro para contenedores
  static final Color _secondaryDark =
      const Color(0xFFd35400); // Versión oscura del naranja
  static final Color _tertiaryDark =
      const Color(0xFF8e44ad); // Versión oscura del púrpura
  static final Color _backgroundDark = const Color(0xFF121212);
  static final Color _surfaceDark = const Color(0xFF1E1E1E);
  static final Color _errorDark = Colors.redAccent;

  /// TextStyle para el texto en movimiento con efecto contorno (stroke).
  /// El color del trazo varía según el modo: en light mode se usa un gris oscuro y en dark mode un gris claro.
  static TextStyle movingTextStyle(Brightness brightness) {
    return TextStyle(
      fontFamily: 'AvenirNext',
      fontSize: 60,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      foreground: Paint()
        ..style = PaintingStyle.fill
        ..strokeWidth = 3
        ..color = brightness == Brightness.light
            ? Colors.grey[700]!
            : Colors.grey[300]!,
    );
  }

  static ThemeData get lightTheme {
    final ColorScheme colorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: _primaryLight,
      primaryContainer: _primaryContainerLight,
      secondary: _secondaryLight,
      secondaryContainer: _secondaryLight,
      tertiary: _tertiaryLight,
      surface: _surfaceLight,
      error: _errorLight,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onTertiary: Colors.white,
      onSurface: Colors.black87,
      onError: Colors.white,
    );

    return ThemeData(
      fontFamily: 'Avenir Next',
      colorScheme: colorScheme,
      primaryColor: colorScheme.primary,
      scaffoldBackgroundColor: _backgroundLight,
      cardColor: _surfaceLight,
      dividerColor: Colors.grey[300],
      appBarTheme: AppBarTheme(
        backgroundColor: _primaryLight,
        iconTheme: const IconThemeData(color: Colors.white),
        titleTextStyle: const TextStyle(
          fontFamily: 'Avenir Next',
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: _primaryLight,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: const TextStyle(
            fontFamily: 'Avenir Next',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _secondaryLight,
        elevation: 3,
        shape: const CircleBorder(),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: _primaryLight),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      tabBarTheme: TabBarTheme(
        labelColor: _primaryLight,
        unselectedLabelColor: Colors.grey,
      ),
      textTheme: TextTheme(
        displayLarge: const TextStyle(
            fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black87),
        displayMedium: const TextStyle(
            fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black87),
        displaySmall: const TextStyle(fontSize: 24, color: Colors.black87),
        titleLarge: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
        titleMedium: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
        titleSmall: const TextStyle(fontSize: 16, color: Colors.black87),
        bodyLarge: const TextStyle(fontSize: 16, color: Colors.black87),
        bodyMedium: const TextStyle(fontSize: 14, color: Colors.black54),
        bodySmall: const TextStyle(fontSize: 12, color: Colors.black45),
        labelLarge: TextStyle(fontSize: 16, color: _primaryLight),
        labelMedium: TextStyle(fontSize: 14, color: _primaryLight),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }

  static ThemeData get darkTheme {
    final ColorScheme colorScheme = ColorScheme(
      brightness: Brightness.dark,
      primary: _primaryDark,
      primaryContainer: _primaryContainerDark,
      secondary: _secondaryDark,
      secondaryContainer: _secondaryDark,
      tertiary: _tertiaryDark,
      surface: _surfaceDark,
      error: _errorDark,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onTertiary: Colors.white,
      onSurface: Colors.white70,
      onError: Colors.black,
    );

    return ThemeData(
      fontFamily: 'Avenir Next',
      colorScheme: colorScheme,
      primaryColor: colorScheme.primary,
      scaffoldBackgroundColor: _backgroundDark,
      cardColor: _surfaceDark,
      dividerColor: Colors.grey[700],
      appBarTheme: AppBarTheme(
        backgroundColor: _primaryDark,
        iconTheme: const IconThemeData(color: Colors.white),
        titleTextStyle: const TextStyle(
          fontFamily: 'Avenir Next',
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: _primaryDark,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: const TextStyle(
            fontFamily: 'Avenir Next',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _secondaryDark,
        elevation: 3,
        shape: const CircleBorder(),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: _primaryContainerDark),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      tabBarTheme: TabBarTheme(
        labelColor: _secondaryDark,
        unselectedLabelColor: Colors.grey,
      ),
      textTheme: TextTheme(
        displayLarge: const TextStyle(
            fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
        displayMedium: const TextStyle(
            fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
        displaySmall: const TextStyle(fontSize: 24, color: Colors.white),
        titleLarge: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        titleMedium: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        titleSmall: const TextStyle(fontSize: 16, color: Colors.white),
        bodyLarge: const TextStyle(fontSize: 16, color: Colors.white70),
        bodyMedium: const TextStyle(fontSize: 14, color: Colors.white60),
        bodySmall: const TextStyle(fontSize: 12, color: Colors.white54),
        labelLarge: TextStyle(fontSize: 16, color: _primaryDark),
        labelMedium: TextStyle(fontSize: 14, color: _primaryDark),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }

  // Método asíncrono para obtener el tema según el modo.
  static Future<ThemeData> getTheme({required bool isLightMode}) async {
    return isLightMode ? lightTheme : darkTheme;
  }
}
