# Contributing to Flutter Packages Suite

Thank you for your interest in contributing to the Flutter Packages Suite! 🎉

## 📋 Table of Contents

- [Code of Conduct](#code-of-conduct)
- [How to Contribute](#how-to-contribute)
- [Development Setup](#development-setup)
- [Package Structure](#package-structure)
- [Coding Standards](#coding-standards)
- [Testing Guidelines](#testing-guidelines)
- [Documentation](#documentation)
- [Pull Request Process](#pull-request-process)

## 🤝 Code of Conduct

This project adheres to a code of conduct. By participating, you are expected to uphold this code:

- Be respectful and inclusive
- Welcome newcomers and help them learn
- Focus on constructive feedback
- Respect different viewpoints and experiences

## 🚀 How to Contribute

### Reporting Bugs

1. **Check existing issues** first to avoid duplicates
2. **Use the bug report template** when creating new issues
3. **Provide detailed information**:
   - Flutter version
   - Dart version
   - Device/platform information
   - Steps to reproduce
   - Expected vs actual behavior
   - Code samples or screenshots

### Suggesting Features

1. **Check existing feature requests** first
2. **Use the feature request template**
3. **Explain the use case** and why it would be valuable
4. **Provide examples** of how the feature would be used

### Contributing Code

1. **Fork the repository**
2. **Create a feature branch**: `git checkout -b feature/amazing-feature`
3. **Make your changes** following our coding standards
4. **Add tests** for new functionality
5. **Update documentation** as needed
6. **Commit your changes**: `git commit -m 'Add amazing feature'`
7. **Push to your branch**: `git push origin feature/amazing-feature`
8. **Open a Pull Request**

## 🛠 Development Setup

### Prerequisites

- Flutter SDK (latest stable version)
- Dart SDK (comes with Flutter)
- IDE with Flutter support (VS Code, Android Studio, or IntelliJ)

### Setup Steps

1. **Clone the repository**:
   \`\`\`bash
   git clone https://github.com/noyon-360/flutx_core.git
   \`\`\`

2. **Install dependencies**:
   \`\`\`bash
   flutter pub get
   \`\`\`

3. **Run the showcase app**:
   \`\`\`bash
   flutter run
   \`\`\`

4. **Run tests**:
   \`\`\`bash
   flutter test
   \`\`\`

## 📁 Package Structure

Each package follows this structure:

\`\`\`
package_name/
├── lib/
│   ├── src/           # Private implementation
│   └── package_name.dart  # Public API
├── test/              # Unit tests
├── example/           # Example usage
├── README.md          # Package documentation
├── CHANGELOG.md       # Version history
├── pubspec.yaml       # Package configuration
└── LICENSE            # MIT License
\`\`\`

## 📝 Coding Standards

### Dart Style Guide

- Follow the [official Dart style guide](https://dart.dev/guides/language/effective-dart/style)
- Use `dart format` to format your code
- Use `dart analyze` to check for issues

### Code Quality

- **Write clear, self-documenting code**
- **Use meaningful variable and function names**
- **Add comments for complex logic**
- **Keep functions small and focused**
- **Follow SOLID principles**

### Example:

\`\`\`dart
// ✅ Good
class EmailValidator {
  /// Validates an email address using RFC 5322 specification.
  /// 
  /// Returns `null` if valid, error message if invalid.
  static String? validate(String? email) {
    if (email == null || email.isEmpty) {
      return 'Email is required';
    }
    
    if (!_emailRegex.hasMatch(email)) {
      return 'Please enter a valid email address';
    }
    
    return null;
  }
  
  static final RegExp _emailRegex = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );
}

// ❌ Bad
class EmailValidator {
  static String? validate(String? e) {
    if (e == null || e.isEmpty) return 'Email is required';
    if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(e)) return 'Please enter a valid email address';
    return null;
  }
}
\`\`\`

## 🧪 Testing Guidelines

### Test Coverage

- **Aim for 90%+ test coverage**
- **Test all public APIs**
- **Include edge cases and error conditions**
- **Test both positive and negative scenarios**

### Test Structure

\`\`\`dart
import 'package:flutter_test/flutter_test.dart';
import 'package:your_package/your_package.dart';

void main() {
  group('EmailValidator', () {
    group('validate', () {
      test('should return null for valid email', () {
        // Arrange
        const email = 'test@example.com';
        
        // Act
        final result = EmailValidator.validate(email);
        
        // Assert
        expect(result, isNull);
      });
      
      test('should return error for invalid email', () {
        // Arrange
        const email = 'invalid-email';
        
        // Act
        final result = EmailValidator.validate(email);
        
        // Assert
        expect(result, equals('Please enter a valid email address'));
      });
    });
  });
}
\`\`\`

## 📚 Documentation

### Code Documentation

- **Use dartdoc comments** for all public APIs
- **Include examples** in documentation
- **Document parameters and return values**
- **Explain complex algorithms or business logic**

### README Files

- **Clear installation instructions**
- **Usage examples with code**
- **Feature list**
- **API reference links**

### Example Documentation:

\`\`\`dart
/// A comprehensive email validation utility.
/// 
/// This class provides methods to validate email addresses according to
/// RFC 5322 specification with additional practical constraints.
/// 
/// Example:
/// \`\`\`dart
/// final validator = EmailValidator();
/// final result = validator.validate('user@example.com');
/// if (result == null) {
///   print('Email is valid!');
/// } else {
///   print('Error: $result');
/// }
/// ```
class EmailValidator {
  /// Validates an email address.
  /// 
  /// Parameters:
  /// - [email]: The email address to validate
  /// 
  /// Returns:
  /// - `null` if the email is valid
  /// - Error message string if the email is invalid
  /// 
  /// Throws:
  /// - No exceptions are thrown by this method
  static String? validate(String? email) {
    // Implementation...
  }
}
\`\`\`

## 🔄 Pull Request Process

### Before Submitting

1. **Ensure all tests pass**: `flutter test`
2. **Check code formatting**: `dart format --set-exit-if-changed .`
3. **Run static analysis**: `dart analyze`
4. **Update documentation** if needed
5. **Add changelog entry** for significant changes

### PR Requirements

- **Clear title** describing the change
- **Detailed description** explaining what and why
- **Link to related issues**
- **Screenshots** for UI changes
- **Breaking change notes** if applicable

### Review Process

1. **Automated checks** must pass (CI/CD)
2. **Code review** by maintainers
3. **Testing** on multiple platforms if needed
4. **Documentation review**
5. **Final approval** and merge

## 🏷 Versioning

We follow [Semantic Versioning](https://semver.org/):

- **MAJOR**: Breaking changes
- **MINOR**: New features (backward compatible)
- **PATCH**: Bug fixes (backward compatible)

## 📞 Getting Help

- **GitHub Issues**: For bugs and feature requests
- **GitHub Discussions**: For questions and general discussion
- **Discord**: [Flutter Community Discord](https://discord.gg/flutter)

## 🎉 Recognition

Contributors will be recognized in:

- **CONTRIBUTORS.md** file
- **Package documentation**
- **Release notes** for significant contributions

Thank you for contributing to the Flutter Packages Suite! 🚀
