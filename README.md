# Flutter Packages Guide Website

A comprehensive guide and documentation website for the Flutter Packages Suite - a collection of production-ready Flutter packages for modern app development.

## 🌐 Live Demo

<!-- Visit the live documentation website: [Flutter Packages Guide](https://your-domain.com) -->

## 📦 Packages Included

### 🧭 Navigation System
- **NavigationService**: Singleton service for app-wide navigation
- **Custom Transitions**: Fade, slide, and custom page transitions
- **Route Management**: Elegant navigation with `sailTo`, `swapTo`, `freshStartTo`

### ✅ Validators
- **Form Validation**: Email, password, phone, credit card validation
- **Custom Rules**: Extensible validation system
- **International Support**: Multi-country phone and postal code validation

### 🎨 Text Styles
- **Semantic Typography**: Material Design 3 compliant text styles
- **Responsive Text**: Adaptive text sizing for different screen sizes
- **Theme Integration**: Dark/light theme support

### 📱 Responsive Design
- **Breakpoint System**: Mobile, tablet, desktop breakpoints
- **Responsive Widgets**: Adaptive containers, grids, and layouts
- **Device Detection**: Utilities for device type and orientation

### 🔧 Extensions
- **String Extensions**: Validation, formatting, transformation utilities
- **Widget Extensions**: Padding, margin, decoration helpers
- **Number Extensions**: Spacing and sizing extensions

### 🛠 Utilities
- **App Sizes**: Consistent spacing and sizing system
- **Gap Widgets**: Standardized spacing components
- **Debug Tools**: Enhanced debugging utilities

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (>=3.10.0)
- Dart SDK (>=3.0.0)
- Web browser (for running the guide website)

### Installation

1. **Clone the repository:**
   \`\`\`bash
   git clone https://github.com/noyon-360/flutx_core.git
   \`\`\`

2. **Install dependencies:**
   \`\`\`bash
   flutter pub get
   \`\`\`

3. **Run the guide website:**
   \`\`\`bash
   # For web (recommended for documentation)
   flutter run -d chrome
   
   # For mobile/desktop
   flutter run
   \`\`\`

### Using the Packages in Your Project

Add the packages to your \`pubspec.yaml\`:

\`\`\`yaml
dependencies:
  flutter:
    sdk: flutter
  
  # Add individual packages as needed
  flutx_core: ^1.0.2
\`\`\`

## 📖 Documentation Structure

The guide website includes:

### 🏠 Home Page
- Overview of all packages
- Quick start guide
- Installation instructions

### 🧭 Navigation Guide
- NavigationService usage
- Custom transitions
- Route management examples

### ✅ Validators Guide
- Form validation examples
- Custom validator creation
- International validation

### 🎨 Text Styles Guide
- Typography system overview
- Responsive text examples
- Theme integration

### 📱 Responsive Guide
- Breakpoint system
- Responsive widgets
- Device detection utilities

### 🔧 Extensions Guide
- String manipulation
- Widget extensions
- Number utilities

### 🛠 Utilities Guide
- Spacing system
- Debug tools
- Helper utilities

## 🎯 Key Features

### ✨ Interactive Examples
- Live code demonstrations
- Copy-paste ready snippets
- Real-time preview

### 📱 Responsive Design
- Mobile-first approach
- Tablet and desktop optimized
- Adaptive navigation

### 🎨 Modern UI
- Material Design 3
- Dark/light theme support
- Smooth animations

### 🔍 Easy Navigation
- Sidebar navigation
- Search functionality
- Quick links

## 🏗 Project Structure

\`\`\`
lib/
├── core/                   # Core packages
│   ├── navigation/         # Navigation system
│   ├── validators/         # Validation rules
│   ├── text/              # Text styles
│   ├── responsive/        # Responsive utilities
│   ├── extensions/        # Extension methods
│   ├── spacing/           # Spacing system
│   ├── theme/             # App theming
│   └── utils/             # Utility functions
├── pages/                 # Guide pages
│   ├── home_page.dart
│   ├── navigation_guide_page.dart
│   ├── validators_guide_page.dart
│   ├── text_styles_guide_page.dart
│   ├── responsive_guide_page.dart
│   ├── extensions_guide_page.dart
│   └── utilities_guide_page.dart
├── widgets/               # Reusable widgets
│   ├── common/            # Common widgets
│   └── layout/            # Layout widgets
└── main.dart              # App entry point
\`\`\`

## 🔧 Development

### Running in Development Mode

\`\`\`bash
# Run with hot reload
flutter run -d chrome --web-port 8080

# Run with debugging
flutter run --debug
\`\`\`

### Building for Production

\`\`\`bash
# Build web version
flutter build web --release

# Build mobile apps
flutter build apk --release
flutter build ios --release
\`\`\`

### Adding New Documentation

1. Create a new page in \`lib/pages/\`
2. Add route in \`main.dart\`
3. Update sidebar navigation in \`lib/widgets/common/sidebar.dart\`
4. Add feature card in home page

## 🎨 Customization

### Theming

Customize the app theme in \`lib/core/theme/app_theme.dart\`:

\`\`\`dart
static ThemeData get lightTheme {
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF2563EB), // Change primary color
      brightness: Brightness.light,
    ),
    // ... other theme properties
  );
}
\`\`\`

### Adding Custom Packages

1. Create package folder in \`lib/core/\`
2. Add documentation page
3. Update navigation
4. Add examples and code snippets

## 📱 Responsive Breakpoints

The guide uses these breakpoints:

- **Mobile**: < 600px
- **Tablet**: 600px - 1024px
- **Desktop**: > 1024px

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch: \`git checkout -b feature/new-package\`
3. Commit changes: \`git commit -am 'Add new package'\`
4. Push to branch: \`git push origin feature/new-package\`
5. Submit a Pull Request

### Contribution Guidelines

- Follow Flutter/Dart style guidelines
- Add comprehensive documentation
- Include interactive examples
- Test on multiple screen sizes
- Update README if needed

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
<!-- 
## 🔗 Links

- **Documentation**: [Flutter Packages Guide](https://your-domain.com)
- **GitHub**: [Repository](https://github.com/your-username/flutter-packages-guide)
- **pub.dev**: [Package](https://pub.dev/packages/flutter-packages-suite)
- **Issues**: [Bug Reports](https://github.com/your-username/flutter-packages-guide/issues) -->

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Material Design team for design guidelines
- Open source community for inspiration

## 📞 Support

<!-- - 📖 [Documentation](https://your-domain.com)
- 🐛 [Issue Tracker](https://github.com/your-username/flutter-packages-guide/issues)
- 💬 [Discussions](https://github.com/your-username/flutter-packages-guide/discussions) -->
- 📧 Email: nazibullahnoyon19.20@gmail.com

---

**Built with ❤️ for the Flutter community**
