import 'dart:ui';

/// Comprehensive String extensions for Flutter applications
/// 
/// Provides utility methods for common string operations including
/// capitalization, validation, formatting, and transformation.
extension StringExtensions on String {

  // MARK: - Capitalization Extensions

  /// Capitalizes only the first letter of the string
  /// 
  /// Example:
  /// ```dart
  /// 'hello world'.capitalizeFirstLetter() // 'Hello world'
  /// 'HELLO WORLD'.capitalizeFirstLetter() // 'Hello world'
  /// ```
  String capitalizeFirstLetter() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }

  /// Capitalizes the first letter of each word
  /// 
  /// Example:
  /// ```dart
  /// 'hello world'.capitalizeFirstOfEach // 'Hello World'
  /// 'john doe smith'.capitalizeFirstOfEach // 'John Doe Smith'
  /// ```
  String get capitalizeFirstOfEach =>
      split(' ').map((str) => str.capitalizeFirstLetter()).join(' ');

  /// Capitalizes the first letter while preserving the rest
  /// 
  /// Example:
  /// ```dart
  /// 'hELLO wORLD'.capitalizeFirst // 'HELLO wORLD'
  /// ```
  String get capitalizeFirst {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1);
  }

  /// Converts to title case (each word capitalized)
  /// 
  /// Example:
  /// ```dart
  /// 'the quick brown fox'.toTitleCase() // 'The Quick Brown Fox'
  /// ```
  String toTitleCase() {
    return split(' ')
        .map((word) => word.isEmpty ? word : word.capitalizeFirst)
        .join(' ');
  }

  /// Converts to sentence case (first letter of sentence capitalized)
  /// 
  /// Example:
  /// ```dart
  /// 'hello. world. how are you?'.toSentenceCase() // 'Hello. World. How are you?'
  /// ```
  String toSentenceCase() {
    return replaceAllMapped(RegExp(r'(^|[.!?]\s*)([a-z])'), (match) {
      return match.group(1)! + match.group(2)!.toUpperCase();
    });
  }

  // MARK: - Username/Social Extensions

  /// Ensures the string starts with '@' for usernames
  /// 
  /// Example:
  /// ```dart
  /// 'john_doe'.startsWithAt // '@john_doe'
  /// '@jane_doe'.startsWithAt // '@jane_doe'
  /// ```
  String get startsWithAt {
    if (startsWith('@')) return this;
    return '@$this';
  }

  /// Removes '@' from the beginning if present
  /// 
  /// Example:
  /// ```dart
  /// '@john_doe'.removeAt // 'john_doe'
  /// 'jane_doe'.removeAt // 'jane_doe'
  /// ```
  String get removeAt {
    if (startsWith('@')) return substring(1);
    return this;
  }

  /// Ensures the string starts with '#' for hashtags
  /// 
  /// Example:
  /// ```dart
  /// 'flutter'.startsWithHash // '#flutter'
  /// '#dart'.startsWithHash // '#dart'
  /// ```
  String get startsWithHash {
    if (startsWith('#')) return this;
    return '#$this';
  }

  // MARK: - Validation Extensions

  /// Checks if string is a valid email
  /// 
  /// Example:
  /// ```dart
  /// 'user@example.com'.isValidEmail // true
  /// 'invalid-email'.isValidEmail // false
  /// ```
  bool get isValidEmail {
    return RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
        .hasMatch(this);
  }

  /// Checks if string is a valid phone number
  /// 
  /// Example:
  /// ```dart
  /// '+1234567890'.isValidPhone // true
  /// '123-456-7890'.isValidPhone // true
  /// ```
  bool get isValidPhone {
    final digitsOnly = replaceAll(RegExp(r'[^\d]'), '');
    return digitsOnly.length >= 10 && digitsOnly.length <= 15;
  }

  /// Checks if string is a valid URL
  /// 
  /// Example:
  /// ```dart
  /// 'https://example.com'.isValidUrl // true
  /// 'not-a-url'.isValidUrl // false
  /// ```
  bool get isValidUrl {
    try {
      final uri = Uri.parse(this);
      return uri.hasScheme && uri.hasAuthority;
    } catch (e) {
      return false;
    }
  }

  /// Checks if string contains only alphabetic characters
  /// 
  /// Example:
  /// ```dart
  /// 'HelloWorld'.isAlpha // true
  /// 'Hello123'.isAlpha // false
  /// ```
  bool get isAlpha {
    return RegExp(r'^[a-zA-Z]+$').hasMatch(this);
  }

  /// Checks if string contains only numeric characters
  /// 
  /// Example:
  /// ```dart
  /// '12345'.isNumeric // true
  /// '123.45'.isNumeric // false
  /// ```
  bool get isNumeric {
    return RegExp(r'^[0-9]+$').hasMatch(this);
  }

  /// Checks if string contains only alphanumeric characters
  /// 
  /// Example:
  /// ```dart
  /// 'Hello123'.isAlphaNumeric // true
  /// 'Hello-123'.isAlphaNumeric // false
  /// ```
  bool get isAlphaNumeric {
    return RegExp(r'^[a-zA-Z0-9]+$').hasMatch(this);
  }

  // MARK: - Formatting Extensions

  /// Formats string as phone number
  /// 
  /// Example:
  /// ```dart
  /// '1234567890'.formatAsPhone() // '(123) 456-7890'
  /// ```
  String formatAsPhone() {
    final digitsOnly = replaceAll(RegExp(r'[^\d]'), '');
    if (digitsOnly.length == 10) {
      return '(${digitsOnly.substring(0, 3)}) ${digitsOnly.substring(3, 6)}-${digitsOnly.substring(6)}';
    }
    return this;
  }

  /// Formats string as currency
  /// 
  /// Example:
  /// ```dart
  /// '1234.56'.formatAsCurrency() // '$1,234.56'
  /// ```
  String formatAsCurrency({String symbol = '\$'}) {
    final number = double.tryParse(this);
    if (number == null) return this;
    
    return '$symbol${number.toStringAsFixed(2).replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match m) => '${m[1]},',
    )}';
  }

  /// Adds thousand separators to numeric string
  /// 
  /// Example:
  /// ```dart
  /// '1234567'.addThousandSeparators() // '1,234,567'
  /// ```
  String addThousandSeparators({String separator = ','}) {
    return replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match m) => '${m[1]}$separator',
    );
  }

  // MARK: - Transformation Extensions

  /// Converts string to snake_case
  /// 
  /// Example:
  /// ```dart
  /// 'HelloWorld'.toSnakeCase() // 'hello_world'
  /// 'helloWorld'.toSnakeCase() // 'hello_world'
  /// ```
  String toSnakeCase() {
    return replaceAllMapped(RegExp(r'[A-Z]'), (match) {
      return '_${match.group(0)!.toLowerCase()}';
    }).replaceFirst(RegExp(r'^_'), '');
  }

  /// Converts string to camelCase
  /// 
  /// Example:
  /// ```dart
  /// 'hello_world'.toCamelCase() // 'helloWorld'
  /// 'hello-world'.toCamelCase() // 'helloWorld'
  /// ```
  String toCamelCase() {
    final words = split(RegExp(r'[_\-\s]+'));
    if (words.isEmpty) return this;
    
    return words.first.toLowerCase() + 
           words.skip(1).map((word) => word.capitalizeFirst).join('');
  }

  /// Converts string to PascalCase
  /// 
  /// Example:
  /// ```dart
  /// 'hello_world'.toPascalCase() // 'HelloWorld'
  /// 'hello-world'.toPascalCase() // 'HelloWorld'
  /// ```
  String toPascalCase() {
    return split(RegExp(r'[_\-\s]+'))
        .map((word) => word.capitalizeFirst)
        .join('');
  }

  /// Converts string to kebab-case
  /// 
  /// Example:
  /// ```dart
  /// 'HelloWorld'.toKebabCase() // 'hello-world'
  /// 'hello_world'.toKebabCase() // 'hello-world'
  /// ```
  String toKebabCase() {
    return toSnakeCase().replaceAll('_', '-');
  }

  /// Reverses the string
  /// 
  /// Example:
  /// ```dart
  /// 'hello'.reverse() // 'olleh'
  /// ```
  String reverse() {
    return split('').reversed.join('');
  }

  /// Removes all whitespace characters
  /// 
  /// Example:
  /// ```dart
  /// 'hello world'.removeWhitespace() // 'helloworld'
  /// ```
  String removeWhitespace() {
    return replaceAll(RegExp(r'\s+'), '');
  }

  /// Removes extra whitespace (multiple spaces become single space)
  /// 
  /// Example:
  /// ```dart
  /// 'hello    world'.removeExtraWhitespace() // 'hello world'
  /// ```
  String removeExtraWhitespace() {
    return replaceAll(RegExp(r'\s+'), ' ').trim();
  }

  // MARK: - Utility Extensions

  /// Truncates string to specified length with ellipsis
  /// 
  /// Example:
  /// ```dart
  /// 'This is a long text'.truncate(10) // 'This is a...'
  /// ```
  String truncate(int maxLength, {String ellipsis = '...'}) {
    if (length <= maxLength) return this;
    return '${substring(0, maxLength - ellipsis.length)}$ellipsis';
  }

  /// Wraps string with specified characters
  /// 
  /// Example:
  /// ```dart
  /// 'hello'.wrap('"') // '"hello"'
  /// 'world'.wrap('[', ']') // '[world]'
  /// ```
  String wrap(String wrapper, [String? endWrapper]) {
    return '$wrapper$this${endWrapper ?? wrapper}';
  }

  /// Repeats string n times
  /// 
  /// Example:
  /// ```dart
  /// 'ha'.repeat(3) // 'hahaha'
  /// ```
  String repeat(int times) {
    return List.filled(times, this).join();
  }

  /// Counts occurrences of substring
  /// 
  /// Example:
  /// ```dart
  /// 'hello world hello'.countOccurrences('hello') // 2
  /// ```
  int countOccurrences(String substring) {
    return split(substring).length - 1;
  }

  /// Checks if string is palindrome
  /// 
  /// Example:
  /// ```dart
  /// 'racecar'.isPalindrome // true
  /// 'hello'.isPalindrome // false
  /// ```
  bool get isPalindrome {
    final cleaned = toLowerCase().removeWhitespace();
    return cleaned == cleaned.reverse();
  }

  /// Gets initials from full name
  /// 
  /// Example:
  /// ```dart
  /// 'John Doe Smith'.getInitials() // 'JDS'
  /// 'john doe'.getInitials(2) // 'JD'
  /// ```
  String getInitials([int? maxInitials]) {
    final words = trim().split(RegExp(r'\s+'));
    final initials = words
        .where((word) => word.isNotEmpty)
        .map((word) => word[0].toUpperCase())
        .take(maxInitials ?? words.length)
        .join();
    return initials;
  }

  /// Masks string for privacy (e.g., credit cards, emails)
  /// 
  /// Example:
  /// ```dart
  /// 'john@example.com'.maskEmail() // 'j***@example.com'
  /// '1234567890123456'.maskCreditCard() // '****-****-****-3456'
  /// ```
  String maskEmail() {
    if (!isValidEmail) return this;
    final parts = split('@');
    final username = parts[0];
    final domain = parts[1];
    
    if (username.length <= 2) return this;
    
    return '${username[0]}${'*' * (username.length - 2)}${username[username.length - 1]}@$domain';
  }

  String maskCreditCard() {
    final digitsOnly = replaceAll(RegExp(r'[^\d]'), '');
    if (digitsOnly.length < 8) return this;
    
    final masked = '*' * (digitsOnly.length - 4) + digitsOnly.substring(digitsOnly.length - 4);
    
    // Format as ****-****-****-1234
    if (digitsOnly.length == 16) {
      return '${masked.substring(0, 4)}-${masked.substring(4, 8)}-${masked.substring(8, 12)}-${masked.substring(12)}';
    }
    
    return masked;
  }

  // MARK: - Color Extensions

  /// Converts hex color string to Color object
  /// 
  /// Example:
  /// ```dart
  /// '#FF5733'.toColor() // Color(0xFFFF5733)
  /// 'FF5733'.toColor() // Color(0xFFFF5733)
  /// ```
  Color? toColor() {
    try {
      String hexColor = replaceAll('#', '');
      if (hexColor.length == 6) {
        hexColor = 'FF$hexColor'; // Add alpha if not present
      }
      return Color(int.parse(hexColor, radix: 16));
    } catch (e) {
      return null;
    }
  }

  // MARK: - File Extensions

  /// Gets file extension from file path/name
  /// 
  /// Example:
  /// ```dart
  /// 'document.pdf'.fileExtension // 'pdf'
  /// '/path/to/image.jpg'.fileExtension // 'jpg'
  /// ```
  String get fileExtension {
    final lastDot = lastIndexOf('.');
    if (lastDot == -1) return '';
    return substring(lastDot + 1).toLowerCase();
  }

  /// Gets filename without extension
  /// 
  /// Example:
  /// ```dart
  /// 'document.pdf'.fileNameWithoutExtension // 'document'
  /// ```
  String get fileNameWithoutExtension {
    final lastDot = lastIndexOf('.');
    final lastSlash = lastIndexOf('/');
    final start = lastSlash == -1 ? 0 : lastSlash + 1;
    final end = lastDot == -1 ? length : lastDot;
    return substring(start, end);
  }

  /// Checks if string is a valid file extension
  /// 
  /// Example:
  /// ```dart
  /// 'image.jpg'.hasValidImageExtension // true
  /// 'document.pdf'.hasValidImageExtension // false
  /// ```
  bool get hasValidImageExtension {
    final validExtensions = ['jpg', 'jpeg', 'png', 'gif', 'bmp', 'webp', 'svg'];
    return validExtensions.contains(fileExtension);
  }

  bool get hasValidVideoExtension {
    final validExtensions = ['mp4', 'avi', 'mov', 'wmv', 'flv', 'webm', 'mkv'];
    return validExtensions.contains(fileExtension);
  }

  bool get hasValidAudioExtension {
    final validExtensions = ['mp3', 'wav', 'aac', 'ogg', 'wma', 'flac', 'm4a'];
    return validExtensions.contains(fileExtension);
  }
}