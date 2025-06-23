import 'dart:core';

class Validators {
  // Name validation
  static String? name(String? value, {int minLength = 2, int maxLength = 50}) {
    if (value == null || value.trim().isEmpty) return 'Name is required';

    final trimmed = value.trim();
    if (trimmed.length < minLength) {
      return 'Name must be at least $minLength characters';
    }
    if (trimmed.length > maxLength) {
      return 'Name must not exceed $maxLength characters';
    }
    if ((!RegExp(r'^[a-zA-Z\s\-\.]+$').hasMatch(trimmed))) {
      return 'Name can only contain letters, spaces, hyphens, dots, and apostrophes';
    }

    return null;
  }

  // Enhanced email validation
  static String? email(String? value) {
    if (value == null || value.trim().isEmpty) return 'Email is required';

    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );

    if (!emailRegex.hasMatch(value.trim())) {
      return 'Please enter a valid email address';
    }
    if (value.trim().length > 254) return 'Email address is too long';
    return null;
  }

  // Strong password validation
  static String? password(
    String? value, {
    int minLength = 8,
    int maxLength = 128,
    bool requireUppercase = true,
    bool requireLowercase = true,
    bool requireNumbers = true,
    bool requireSpecialChars = true,
  }) {
    if (value == null || value.isEmpty) return 'Password is required';

    if (value.length < minLength) {
      return 'Password must be at least $minLength characters';
    }
    if (value.length > maxLength) {
      return 'Password must not exceed $maxLength characters';
    }

    if (requireUppercase && !RegExp(r'[A-Z]').hasMatch(value)) {
      return 'Password must contain at least one uppercase letter';
    }
    if (requireLowercase && !RegExp(r'[a-z]').hasMatch(value)) {
      return 'Password must contain at least one lowercase letter';
    }
    if (requireNumbers && !RegExp(r'\d').hasMatch(value)) {
      return 'Password must contain at least one number';
    }
    if (requireSpecialChars &&
        !RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
      return 'Password must contain at least one special character';
    }

    // Check for common weak patterns
    if (RegExp(r'(.)\1{2,}').hasMatch(value)) {
      return 'Password cannot contain repeated characters';
    }
    if (RegExp(
      r'(012|123|234|345|456|567|678|789|890|abc|bcd|cde|def)',
    ).hasMatch(value.toLowerCase())) {
      return 'Password cannot contain sequential characters';
    }

    return null;
  }

  // Confirm password validation
  static String? confirmPassword(String? value, String? password) {
    if (value == null || value.isEmpty) return 'Please confirm your password';
    if (value != password) return 'Passwords do not match';
    return null;
  }

  // Enhanced phone validation with international support
  static String? phone(String? value, {String? countryCode}) {
    if (value == null || value.trim().isEmpty) {
      return 'Phone number is required';
    }

    // Remove all non-digit characters for validation
    final digitsOnly = value.replaceAll(RegExp(r'[^\d]'), '');

    if (countryCode == 'US') {
      if (!RegExp(r'^[1]?[0-9]{10}$').hasMatch(digitsOnly)) {
        return 'Please enter a valid US phone number';
      }
    } else if (countryCode == 'UK') {
      if (!RegExp(r'^[0-9]{10,11}$').hasMatch(digitsOnly)) {
        return 'Please enter a valid UK phone number';
      }
    } else {
      // International format
      if (digitsOnly.length < 7 || digitsOnly.length > 15) {
        return 'Please enter a valid phone number (7-15 digits)';
      }
    }
    return null;
  }

  // URL validation
  static String? url(String? value, {bool requireHttps = false}) {
    if (value == null || value.trim().isEmpty) return 'URL is required';

    try {
      final uri = Uri.parse(value.trim());
      if (!uri.hasScheme) return 'URL must include http:// or https://';
      if (requireHttps && uri.scheme != 'https') return 'URL must use HTTPS';
      if (!uri.hasAuthority) return 'Please enter a valid URL';
      return null;
    } catch (e) {
      return 'Please enter a valid URL';
    }
  }

  // Credit card validation (Luhn algorithm)
  static String? creditCard(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Credit card number is required';
    }

    final digitsOnly = value.replaceAll(RegExp(r'[^\d]'), '');

    if (digitsOnly.length < 13 || digitsOnly.length > 19) {
      return 'Credit card number must be 13-19 digits';
    }

    // Luhn algorithm
    int sum = 0;
    bool alternate = false;

    for (int i = digitsOnly.length - 1; i >= 0; i--) {
      int digit = int.parse(digitsOnly[i]);

      if (alternate) {
        digit *= 2;
        if (digit > 9) digit -= 9;
      }

      sum += digit;
      alternate = !alternate;
    }

    if (sum % 10 != 0) return 'Please enter a valid credit card number';
    return null;
  }

  // Date validation
  static String? date(String? value, {DateTime? minDate, DateTime? maxDate}) {
    if (value == null || value.trim().isEmpty) return 'Date is required';

    try {
      final date = DateTime.parse(value.trim());

      if (minDate != null && date.isBefore(minDate)) {
        return 'Date must be after ${_formatDate(minDate)}';
      }
      if (maxDate != null && date.isAfter(maxDate)) {
        return 'Date must be before ${_formatDate(maxDate)}';
      }

      return null;
    } catch (e) {
      return 'Please enter a valid date (YYYY-MM-DD)';
    }
  }

  // Age validation
  static String? age(String? value, {int minAge = 0, int maxAge = 150}) {
    if (value == null || value.trim().isEmpty) return 'Age is required';

    final age = int.tryParse(value.trim());
    if (age == null) return 'Please enter a valid age';
    if (age < minAge) return 'Age must be at least $minAge';
    if (age > maxAge) return 'Age must not exceed $maxAge';
    return null;
  }

  // Numeric validation
  static String? number(
    String? value, {
    double? min,
    double? max,
    bool allowDecimals = true,
    int? decimalPlaces,
  }) {
    if (value == null || value.trim().isEmpty) return 'Number is required';

    final number = double.tryParse(value.trim());
    if (number == null) return 'Please enter a valid number';

    if (!allowDecimals && number != number.truncate()) {
      return 'Decimal numbers are not allowed';
    }

    if (decimalPlaces != null) {
      final parts = value.trim().split('.');
      if (parts.length > 1 && parts[1].length > decimalPlaces) {
        return 'Number can have at most $decimalPlaces decimal places';
      }
    }

    if (min != null && number < min) return 'Number must be at least $min';
    if (max != null && number > max) return 'Number must not exceed $max';
    return null;
  }

  // Text length validation
  static String? textLength(
    String? value, {
    int? minLength,
    int? maxLength,
    bool required = true,
  }) {
    if (required && (value == null || value.trim().isEmpty)) {
      return 'This field is required';
    }

    if (value != null) {
      final length = value.trim().length;
      if (minLength != null && length < minLength) {
        return 'Must be at least $minLength characters';
      }
      if (maxLength != null && length > maxLength) {
        return 'Must not exceed $maxLength characters';
      }
    }

    return null;
  }

  // Custom pattern validation
  static String? pattern(String? value, RegExp pattern, String errorMessage) {
    if (value == null || value.trim().isEmpty) return 'This field is required';
    if (!pattern.hasMatch(value.trim())) return errorMessage;
    return null;
  }

  // Username validation
  static String? username(
    String? value, {
    int minLength = 3,
    int maxLength = 20,
  }) {
    if (value == null || value.trim().isEmpty) return 'Username is required';

    final trimmed = value.trim();
    if (trimmed.length < minLength) {
      return 'Username must be at least $minLength characters';
    }
    if (trimmed.length > maxLength) {
      return 'Username must not exceed $maxLength characters';
    }

    if (!RegExp(r'^[a-zA-Z0-9_.-]+$').hasMatch(trimmed)) {
      return 'Username can only contain letters, numbers, dots, hyphens, and underscores';
    }

    if (RegExp(r'^[._-]|[._-]$').hasMatch(trimmed)) {
      return 'Username cannot start or end with special characters';
    }

    return null;
  }

  // ZIP/Postal code validation
  static String? postalCode(String? value, {String? countryCode}) {
    if (value == null || value.trim().isEmpty) return 'Postal code is required';

    final trimmed = value.trim().toUpperCase();

    switch (countryCode) {
      case 'US':
        if (!RegExp(r'^\d{5}(-\d{4})?$').hasMatch(trimmed)) {
          return 'Please enter a valid US ZIP code (12345 or 12345-6789)';
        }
        break;
      case 'CA':
        if (!RegExp(r'^[A-Z]\d[A-Z] \d[A-Z]\d$').hasMatch(trimmed)) {
          return 'Please enter a valid Canadian postal code (A1A 1A1)';
        }
        break;
      case 'UK':
        if (!RegExp(r'^[A-Z]{1,2}\d[A-Z\d]? \d[A-Z]{2}$').hasMatch(trimmed)) {
          return 'Please enter a valid UK postal code';
        }
        break;
      default:
        if (trimmed.length < 3 || trimmed.length > 10) {
          return 'Please enter a valid postal code';
        }
    }

    return null;
  }

  // Helper method to format dates
  static String _formatDate(DateTime date) {
    return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
  }

  // Composite validation - combine multiple validators
  static String? composite(
    String? value,
    List<String? Function(String?)> validators,
  ) {
    for (final validator in validators) {
      final result = validator(value);
      if (result != null) return result;
    }
    return null;
  }

  // Required field validation
  static String? required(String? value, [String? fieldName]) {
    if (value == null || value.trim().isEmpty) {
      return '${fieldName ?? 'This field'} is required';
    }
    return null;
  }
}

// Extension for easy chaining of validations
extension ValidatorChaining on String? {
  String? validate(List<String? Function(String?)> validators) {
    return Validators.composite(this, validators);
  }
}
