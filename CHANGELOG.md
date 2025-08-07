# Changelog

All notable changes to the flutx_core package will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- Planning additional validation rules for validators
- Considering animation extensions for text styles
- Exploring responsive breakpoint customization

### Changed

- Nothing yet

### Deprecated

- Nothing yet

### Removed

- Nothing yet

### Fixed

- Nothing yet

### Security

- Nothing yet

---

## [1.1.0+1] - 2025-08-08

### Added
- 🎉 **Enhanced Navigation System** - Complete overhaul of navigation with dual support
- **Widget Navigation** - Direct widget navigation: `Go.sailTo(HomeScreen(data: data))`
- **Named Route Navigation** - Enhanced named routes: `Go.sailToName("/home-screen", arguments: {...})`
- **Advanced Transitions** - 7 new transition types: `fade`, `slideLeft`, `slideRight`, `slideUp`, `slideDown`, `scale`, `rotation`
- **Default Configuration** - Global transition and duration settings
- **Convenience Methods** - Quick access methods like `Go.fade()`, `Go.modal()`, `Go.slideLeft()`
- **Dual Method Support** - Both widget and named route versions for all methods
- **Custom Duration Support** - Per-navigation custom transition durations
- **Enhanced Route Management** - Improved stack management with `freshStartTo()`, `swapTo()`

### Changed
- **NavigationService** - Complete rewrite with singleton pattern and enhanced features
- **Go class** - Expanded with dual navigation support and convenience methods
- **TransitionType enum** - Extended with new transition options
- **FlutxNavigation** - Added configuration support for default settings

### Features
- ✅ **Dual Navigation**: Support both `Go.sailTo(Widget)` and `Go.sailToName(String)`
- ✅ **7 Transition Types**: fade, slideLeft, slideRight, slideUp, slideDown, scale, rotation
- ✅ **Custom Durations**: `Go.fade(screen, duration: Duration(milliseconds: 500))`
- ✅ **Default Settings**: `NavigationService.setDefaultTransition(TransitionType.fade)`
- ✅ **Convenience Methods**: `Go.modal()`, `Go.fade()`, `Go.slideLeft()` etc.
- ✅ **Enhanced Stack Management**: `freshStartTo()`, `swapTo()`, `backtrack()`
- ✅ **Route Observers**: Built-in route observation for analytics
- ✅ **Type Safety**: Full type safety with generic result handling

### Navigation Methods
#### Widget Navigation
- `Go.sailTo(Widget)` - Navigate to widget with transition
- `Go.swapTo(Widget)` - Replace current route with widget
- `Go.freshStartTo(Widget)` - Clear stack and navigate to widget
- `Go.fade(Widget)` - Navigate with fade transition
- `Go.slideLeft(Widget)` - Navigate with slide left transition
- `Go.slideRight(Widget)` - Navigate with slide right transition
- `Go.slideUp(Widget)` - Navigate with slide up transition
- `Go.slideDown(Widget)` - Navigate with slide down transition
- `Go.scale(Widget)` - Navigate with scale transition
- `Go.rotation(Widget)` - Navigate with rotation transition
- `Go.modal(Widget)` - Show as modal with slide up

#### Named Route Navigation
- `Go.sailToName(String)` - Navigate to named route
- `Go.swapToName(String)` - Replace with named route
- `Go.freshStartToName(String)` - Clear stack and navigate to named route
- `Go.fadeToName(String)` - Navigate to named route with fade
- `Go.slideLeftToName(String)` - Navigate to named route with slide left
- `Go.slideRightToName(String)` - Navigate to named route with slide right
- `Go.slideUpToName(String)` - Navigate to named route with slide up
- `Go.slideDownToName(String)` - Navigate to named route with slide down
- `Go.scaleToName(String)` - Navigate to named route with scale
- `Go.rotationToName(String)` - Navigate to named route with rotation
- `Go.modalToName(String)` - Show named route as modal

### Performance
- **Zero overhead** - Compile-time optimizations for navigation methods
- **Memory efficient** - Singleton pattern with proper resource management
- **Smooth animations** - Hardware-accelerated transitions with proper curves
- **Fast navigation** - Optimized route building and stack management

### Breaking Changes
- **NavigationService API** - Some internal methods renamed (public API unchanged)
- **TransitionType enum** - New values added (backward compatible)

### Migration Guide
#### From 1.0.3+1 to 1.1.0
- **No breaking changes** for existing navigation code
- **New methods available** - Enhanced navigation options
- **Optional adoption** - Use new features where needed

#### Before (still works):
```dart
Go.sailTo('/home-screen', arguments: data);
Go.fade('/profile-screen');

## [1.0.3+1] - 2025-07-06

### Added

- 🎉 **Shorthand Text Styling System** - Revolutionary new syntax for quick text styling
- **textXXwXXX methods** - Direct string extensions like `"hello".text12w400()`, `"title".text16w600()`
- **Complete font size coverage** - 8px to 32px with all font weights (w100-w900)
- **Alternative style syntax** - `"hello".style(font: AppTextStyles.text12w400())`
- **Enhanced text extensions** - Over 180 new shorthand text styling methods
- **Improved developer experience** - Faster prototyping with intuitive syntax

### Changed

- **AppTextStyles class** - Extended with comprehensive shorthand methods
- **Text extensions** - Enhanced with new shorthand styling capabilities
- **Documentation** - Updated with new shorthand syntax examples

### Features

- ✅ **Quick styling**: `"Hello".text16w600()` - 16px, FontWeight.w600
- ✅ **All font sizes**: text8w100 through text32w900
- ✅ **Color support**: `"Error".text14w500(color: Colors.red)`
- ✅ **Custom fonts**: `"Title".text20w700(fontFamily: 'Roboto')`
- ✅ **Alternative syntax**: `"Text".style(font: AppTextStyles.text12w400())`

### Performance

- **Zero overhead** - Compile-time optimizations for all shorthand methods
- **Memory efficient** - Reuses existing TextStyle instances
- **Fast rendering** - No additional widget wrapping

---

## [1.0.2+1] - 2025-07-05

### Fixed

- Minor bug fixes in text styling system
- Improved package documentation

---

## [1.0.2] - 2025-07-04

### Added

- 🎉 **Initial release of flutx_core package**
- **Comprehensive text styling system** based on Material Design 3
- **Semantic typography** with responsive design capabilities
- **String extensions** for validation and formatting
- **Spacing utilities** with consistent sizing system
- **Responsive helpers** for adaptive layouts
- **Debug utilities** for enhanced development experience
- **Theme integration** with dark/light mode support

### Features

#### 🎨 Text Styling System

- ✅ **Semantic styles**: `AppTextStyles.headlineLarge`, `bodyMedium`, `labelSmall`
- ✅ **String extensions**: `'Hello'.headlineLarge()`, `'World'.bodyMedium()`
- ✅ **Theme integration**: Automatic dark/light theme adaptation
- ✅ **Custom fonts**: Support for Google Fonts and custom typefaces
- ✅ **Accessibility**: WCAG 2.1 compliant with proper contrast ratios

#### 📝 String Extensions

- ✅ **Validation**: `'email@test.com'.isValidEmail`, `'123-456-7890'.isValidPhone`
- ✅ **Formatting**: `'hello world'.capitalizeFirstOfEach`, `'text'.toSnakeCase()`
- ✅ **Utilities**: `'long text here'.truncate(10)`, `'hello'.reverse()`
- ✅ **Case conversion**: `toCamelCase()`, `toPascalCase()`, `toKebabCase()`

#### 📏 Spacing & Sizing

- ✅ **Consistent spacing**: `AppSizes.paddingMd.all`, `AppSizes.marginLg.horizontal`
- ✅ **Gap utilities**: `Gap.h16`, `Gap.w24` for standardized spacing
- ✅ **Number extensions**: `16.all` → `EdgeInsets.all(16)`, `8.radius` → `BorderRadius.circular(8)`
- ✅ **Widget extensions**: `Text('Hello').paddingAll(16).center()`

#### 📱 Responsive Design

- ✅ **Device detection**: `ResponsiveHelper.isMobile(context)`, `isTablet()`, `isDesktop()`
- ✅ **Responsive values**: `AppSizes.responsive(context, mobile: 8, tablet: 16, desktop: 24)`
- ✅ **Adaptive widgets**: `ResponsiveContainer`, `ResponsiveGrid`, `ResponsiveRow`
- ✅ **Breakpoint system**: Customizable mobile (600px), tablet (1024px) breakpoints

#### 🛠 Development Utilities

- ✅ **Debug printing**: `DPrint.log()`, `DPrint.info()`, `DPrint.warn()`, `DPrint.error()`
- ✅ **Debug-only output**: Automatically disabled in release builds
- ✅ **Enhanced logging**: Colored console output with emojis for better visibility

### Typography Scale

- **Display Large**: 57px, Light (400) - For hero text and major headlines
- **Display Medium**: 45px, Light (400) - For large promotional text
- **Display Small**: 36px, Light (400) - For section headers
- **Headline Large**: 32px, Semi-bold (600) - For page titles
- **Headline Medium**: 28px, Semi-bold (600) - For section titles
- **Headline Small**: 24px, Semi-bold (600) - For subsection titles
- **Title Large**: 22px, Medium (500) - For card titles
- **Title Medium**: 16px, Medium (500) - For dialog titles
- **Title Small**: 14px, Medium (500) - For list item titles
- **Body Large**: 16px, Regular (400) - For main content
- **Body Medium**: 14px, Regular (400) - For secondary content
- **Body Small**: 12px, Regular (400) - For captions
- **Label Large**: 14px, Medium (500) - For button text
- **Label Medium**: 12px, Medium (500) - For form labels
- **Label Small**: 11px, Medium (500) - For helper text

### Technical Details

- **Bundle size**: ~40KB total package size
- **Dependencies**: Minimal external dependencies
- **Platform support**: iOS, Android, Web, Desktop
- **Dart version**: >=3.8.1
- **Flutter version**: >=3.10.0

---

## Migration Guides

### From 1.0.2+1 to 1.0.2+2

- **New shorthand syntax available** - No breaking changes
- **All existing methods still work** - Backward compatible
- **Optional adoption** - Use new syntax where preferred

### Usage Examples

#### Before (still works):

\`\`\`dart
Text('Hello', style: AppTextStyles.bodyLarge())
'World'.bodyMedium()
\`\`\`

#### After (new shorthand):

\`\`\`dart
'Hello'.text16w400() // 16px, FontWeight.w400
'World'.text14w500() // 14px, FontWeight.w500
'Title'.text24w700(color: Colors.blue)
\`\`\`

---

## Breaking Changes

### Version 1.0.2+2

- **No breaking changes** - Fully backward compatible

### Version 1.0.2

- **Initial release** - No previous versions to break

---

## Dependencies

### Current Dependencies

- **Flutter SDK**: `>=3.10.0`
- **Dart SDK**: `>=3.8.1`
- **cupertino_icons**: `^1.0.8`

### Development Dependencies

- **flutter_test**: SDK version
- **flutter_lints**: `^5.0.0`

---

## Performance Metrics

### Bundle Size Impact

- **Total package**: ~40KB compressed
- **Core text styles**: ~15KB
- **String extensions**: ~8KB
- **Spacing utilities**: ~7KB
- **Responsive helpers**: ~5KB
- **Debug utilities**: ~3KB
- **Theme integration**: ~2KB

### Runtime Performance

- **Zero overhead** for shorthand methods (compile-time optimization)
- **Lazy loading** for text style instances
- **Efficient memory usage** with style caching
- **No blocking operations** on main thread
- **Optimized for 60fps** rendering

---

## Development Milestones

### 🎯 Version 1.0.2+2 Goals ✅

- [x] Shorthand text styling system (`textXXwXXX` syntax)
- [x] Complete font size and weight coverage
- [x] Alternative style syntax support
- [x] Enhanced developer experience
- [x] Backward compatibility maintained
- [x] Comprehensive documentation

### 🚀 Version 1.0.3 Goals (Planned)

- [ ] Animation extensions for text transitions
- [ ] Enhanced responsive breakpoint system
- [ ] Custom theme builder utilities
- [ ] Performance monitoring tools
- [ ] Advanced debugging features

### 🌟 Version 1.1.0 Goals (Future)

- [ ] Complete UI component library
- [ ] State management integration
- [ ] Advanced animation system
- [ ] Networking utilities
- [ ] Form validation middleware

---

## Community

### Contributors

- **flutx_core** - Package creator and maintainer
- Community contributors welcome!

### Acknowledgments

- Flutter team for the amazing framework
- Material Design team for design guidelines
- Open source community for inspiration and feedback

---

## Support

### Getting Help

- 📖 **Homepage**: [https://github.com/noyon-360/flutx_core.git](https://github.com/noyon-360/flutx_core.git)
- 🐛 **Issue Tracker**: [GitHub Issues](https://github.com/noyon-360/flutx_core/issues)
- 💬 **Discussions**: [GitHub Discussions](https://github.com/noyon-360/flutx_core/discussions)
- 📧 **Email**: Contact via GitHub

### Reporting Issues

Please use the issue templates for:

- 🐛 Bug reports
- 💡 Feature requests
- 📚 Documentation improvements
- ❓ Questions and support

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

**Note**: This changelog follows the [Keep a Changelog](https://keepachangelog.com/) format. Each version includes:

- **Added** for new features
- **Changed** for changes in existing functionality
- **Deprecated** for soon-to-be removed features
- **Removed** for now removed features
- **Fixed** for any bug fixes
- **Security** for vulnerability fixes

---

**Built with ❤️ for the Flutter community by flutx_core**
