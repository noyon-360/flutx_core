# Changelog - Flutter Validators

All notable changes to the Flutter Validators package will be documented in this file.

## [Unreleased]

### Added
- Planning async validator support
- Considering custom error message templates
- Exploring localization for error messages

## [1.0.0] - 2024-01-15

### Added
- 🎉 **Initial release of Flutter Validators**
- Email validation with RFC 5322 compliance
- Strong password validation with customizable rules:
  - Minimum length requirement
  - Uppercase letter requirement
  - Lowercase letter requirement
  - Number requirement
  - Special character requirement
- International phone number validation
- Credit card validation using Luhn algorithm
- URL validation with protocol checking
- Custom validator builder pattern
- Comprehensive error messages
- Support for nullable and non-nullable strings
- Form validation middleware utilities
- Validation result objects with detailed feedback

### Features
\`\`\`dart
// Email validation
TextFormField(
  validator: Validators.email(),
)

// Password validation
TextFormField(
  validator: Validators.password(
    minLength: 8,
    requireUppercase: true,
    requireLowercase: true,
    requireNumbers: true,
    requireSpecialChars: true,
  ),
)

// Phone validation
TextFormField(
  validator: Validators.phone(),
)

// Credit card validation
TextFormField(
  validator: Validators.creditCard(),
)

// URL validation
TextFormField(
  validator: Validators.url(),
)

// Custom validation
TextFormField(
  validator: Validators.custom(
    (value) => value?.contains('@') == true 
      ? null 
      : 'Must contain @',
  ),
)

// Combine multiple validators
TextFormField(
  validator: Validators.combine([
    Validators.required(),
    Validators.email(),
    Validators.custom((value) => /* custom logic */),
  ]),
)
\`\`\`

### Technical Details
- **Bundle size**: ~15KB
- **Dependencies**: None (pure Dart implementation)
- **Platform support**: All Flutter platforms
- **Dart version**: >=3.0.0
- **Flutter version**: >=3.10.0

### Performance
- Optimized regular expressions for fast validation
- Lazy compilation of regex patterns
- Minimal memory footprint
- No blocking operations

## [0.1.0-dev] - 2024-01-01

### Added
- Initial development version
- Basic email and password validation
- Proof of concept implementation

---

## Migration Guide

### From 0.x to 1.0.0
Since this is the first stable release, no migration is needed for new users.

For early adopters of development versions:
- Update import statements to use the stable package
- Review validator method signatures (may have changed)
- Update any custom validators to use the new builder pattern

## Roadmap

### Version 1.1.0 (Next Minor Release)
- [ ] Async validator support
- [ ] Custom error message templates
- [ ] Localization support (i18n)
- [ ] Additional validation rules:
  - [ ] IBAN validation
  - [ ] Social security number validation
  - [ ] Postal code validation by country
- [ ] Performance improvements

### Version 1.2.0
- [ ] Form validation middleware
- [ ] Validation result caching
- [ ] Batch validation utilities
- [ ] Integration with popular form libraries

### Version 2.0.0 (Major Release)
- [ ] Complete API redesign based on community feedback
- [ ] Advanced validation rules
- [ ] Plugin architecture for custom validators
- [ ] Visual validation feedback widgets
