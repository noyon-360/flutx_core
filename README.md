# flutx_core

# Flutter Packages Showcase

A comprehensive collection of production-ready Flutter packages for modern app development.

## 📦 Packages Included

### 🔍 Flutter Validators
Comprehensive validation rules for forms and data validation.

**Features:**
- Email validation with RFC compliance
- Strong password validation with customizable rules
- International phone number support
- Credit card validation with Luhn algorithm
- URL validation with protocol checking
- Custom validator builder

**Installation:**
\`\`\`bash
flutter pub add flutter_validators
\`\`\`

**Usage:**
\`\`\`dart
TextFormField(
  validator: Validators.email(),
  decoration: InputDecoration(labelText: 'Email'),
)
\`\`\`

### 🎨 Flutter Text Styles
Semantic typography system with responsive design and theme integration.

**Features:**
- Semantic typography system
- Responsive text scaling
- Dark/light theme support
- Material Design 3 integration
- Text extension methods

**Installation:**
\`\`\`bash
flutter pub add flutter_text_styles
\`\`\`

**Usage:**
\`\`\`dart
Text('Headline', style: AppTextStyles.headlineLarge)
Text('Body text', style: AppTextStyles.bodyMedium)
\`\`\`

### 🔐 Flutter Secure Storage Services
Encrypted storage with multiple strategies and authentication helpers.

**Features:**
- AES-256 encryption
- Multiple storage backends
- Biometric authentication
- Cache with TTL support
- Authentication helpers

**Installation:**
\`\`\`bash
flutter pub add flutter_secure_storage_services
\`\`\`

**Usage:**
\`\`\`dart
final storage = SecureStorageService();
await storage.store('key', 'encrypted_value');
final value = await storage.retrieve('key');
\`\`\`

### 📝 Flutter String Extensions
Powerful string manipulation and utilities.

**Features:**
- Email, URL, phone validation
- Case conversion utilities
- Data extraction helpers
- Null-safe string operations
- Regular expression helpers

**Installation:**
\`\`\`bash
flutter pub add flutter_string_extensions
\`\`\`

**Usage:**
\`\`\`dart
'user@example.com'.isEmail; // true
'hello world'.titleCase; // 'Hello World'
'long text'.truncate(10); // 'long text...'
\`\`\`

### 📏 Flutter App Sizes
Consistent spacing and responsive design system.

**Features:**
- Consistent spacing system
- Responsive design utilities
- Widget extension methods
- Easy-to-use syntax
- Accessibility compliance

**Installation:**
\`\`\`bash
flutter pub add flutter_app_sizes
\`\`\`

**Usage:**
\`\`\`dart
Container(
  padding: AppSizes.paddingMd.all,
  margin: AppSizes.marginLg.horizontal,
  decoration: BoxDecoration(
    borderRadius: AppSizes.radiusLg.all,
  ),
)
\`\`\`

## 🚀 Getting Started

1. **Install the packages you need:**
   \`\`\`bash
   flutter pub add flutter_validators flutter_text_styles flutter_secure_storage_services flutter_string_extensions flutter_app_sizes
   \`\`\`

2. **Import in your Dart files:**
   \`\`\`dart
   import 'package:flutter_validators/flutter_validators.dart';
   import 'package:flutter_text_styles/flutter_text_styles.dart';
   import 'package:flutter_secure_storage_services/flutter_secure_storage_services.dart';
   import 'package:flutter_string_extensions/flutter_string_extensions.dart';
   import 'package:flutter_app_sizes/flutter_app_sizes.dart';
   \`\`\`

3. **Start using the packages in your app!**

## 📱 Demo App

This repository includes a comprehensive demo app showcasing all packages. Run the demo to see interactive examples and code snippets.

\`\`\`bash
git clone https://github.com/your-username/flutter-packages-showcase.git
cd flutter-packages-showcase
flutter run
\`\`\`

## 🤝 Contributing

Contributions are welcome! Please read our contributing guidelines and submit pull requests for any improvements.

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

# Flutter Text Styles Package

A comprehensive and customizable text styling package for Flutter applications with semantic styles, responsive design, and theme integration.

## Features

- 🎨 **Semantic Styling** - Display, Headline, Title, Body, and Label styles
- 📱 **Responsive Design** - Automatic text scaling based on screen size
- 🔧 **Highly Customizable** - Support for multiple font families and colors
- 🚀 **Developer Friendly** - Extension methods for easy usage
- ♿ **Accessibility Ready** - WCAG compliant with proper contrast ratios

## Quick Reference

### Font Sizes & Weights

| Style | Size | Weight | Usage |
|-------|------|--------|-------|
| Display Large | 57px | Regular (400) | Hero sections, splash screens |
| Display Medium | 45px | Regular (400) | Secondary hero text |
| Display Small | 36px | Regular (400) | Large section headers |
| Headline Large | 32px | SemiBold (600) | Main page sections |
| Headline Medium | 28px | SemiBold (600) | Subsections, card titles |
| Headline Small | 24px | SemiBold (600) | Small sections |
| Title Large | 22px | Medium (500) | App bar titles |
| Title Medium | 16px | Medium (500) | List item titles |
| Title Small | 14px | Medium (500) | Small component titles |
| Body Large | 16px | Regular (400) | Main content |
| Body Medium | 14px | Regular (400) | Secondary content |
| Body Small | 12px | Regular (400) | Fine print, metadata |
| Label Large | 14px | Medium (500) | Primary buttons |
| Label Medium | 12px | Medium (500) | Secondary buttons |
| Label Small | 11px | Medium (500) | Small buttons, chips |

## Usage Examples

```dart
// Semantic usage (recommended)
Text('Welcome', style: AppTextStyles.headlineLarge())
"Welcome".headlineLarge()

// With customization
Text('Error', style: AppTextStyles.bodyMedium(color: Colors.red))
"Error".bodyMedium(color: Colors.red)

// Size-based usage
"Large Text".lg()
"Small Text".sm()

// Custom styles
Text(
  'Custom Style',
  style: AppTextStyles.custom(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Colors.purple,
  ),
)
