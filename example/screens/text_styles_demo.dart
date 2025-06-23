import 'package:flutter/material.dart';

class TextStylesDemoScreen extends StatefulWidget {
  const TextStylesDemoScreen({super.key});

  @override
  State<TextStylesDemoScreen> createState() => _TextStylesDemoScreenState();
}

class _TextStylesDemoScreenState extends State<TextStylesDemoScreen> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Text Styles Demo'),
          backgroundColor: Colors.purple.shade600,
          foregroundColor: Colors.white,
          actions: [
            IconButton(
              icon: Icon(_isDarkMode ? Icons.light_mode : Icons.dark_mode),
              onPressed: () => setState(() => _isDarkMode = !_isDarkMode),
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.purple.shade50,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.purple.shade200),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.text_fields, color: Colors.purple.shade600),
                        const SizedBox(width: 8),
                        Text(
                          'Flutter Text Styles',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple.shade600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Semantic typography system with responsive design, theme integration, and accessibility support.',
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 24),
              
              // Typography Scale
              const Text(
                'Typography Scale',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              
              _buildTypographyExample('Display Large', 32, FontWeight.w400),
              _buildTypographyExample('Display Medium', 28, FontWeight.w400),
              _buildTypographyExample('Display Small', 24, FontWeight.w400),
              _buildTypographyExample('Headline Large', 22, FontWeight.w600),
              _buildTypographyExample('Headline Medium', 20, FontWeight.w600),
              _buildTypographyExample('Headline Small', 18, FontWeight.w600),
              _buildTypographyExample('Title Large', 16, FontWeight.w700),
              _buildTypographyExample('Title Medium', 14, FontWeight.w700),
              _buildTypographyExample('Title Small', 12, FontWeight.w700),
              _buildTypographyExample('Body Large', 16, FontWeight.w400),
              _buildTypographyExample('Body Medium', 14, FontWeight.w400),
              _buildTypographyExample('Body Small', 12, FontWeight.w400),
              _buildTypographyExample('Label Large', 14, FontWeight.w500),
              _buildTypographyExample('Label Medium', 12, FontWeight.w500),
              _buildTypographyExample('Label Small', 10, FontWeight.w500),
              
              const SizedBox(height: 32),
              
              // Responsive Text Demo
              const Text(
                'Responsive Text',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.blue.shade200),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'This text adapts to screen size',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Mobile: 14px • Tablet: 16px • Desktop: 18px',
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'The responsive text system automatically adjusts font sizes based on screen breakpoints, ensuring optimal readability across all devices.',
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 24),
              
              // Theme Integration
              const Text(
                'Theme Integration',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: _isDarkMode ? Colors.grey.shade800 : Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: _isDarkMode ? Colors.grey.shade600 : Colors.grey.shade300,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Primary Text',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: _isDarkMode ? Colors.white : Colors.black,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Secondary text adapts to theme',
                            style: TextStyle(
                              color: _isDarkMode ? Colors.grey.shade300 : Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 24),
              
              // Code Example
              _buildCodeExample(),
              
              const SizedBox(height: 24),
              
              // Features
              _buildFeaturesList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTypographyExample(String name, double size, FontWeight weight) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              name,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade600,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'The quick brown fox',
              style: TextStyle(
                fontSize: size,
                fontWeight: weight,
              ),
            ),
          ),
          Text(
            '${size.toInt()}px',
            style: TextStyle(
              fontSize: 10,
              color: Colors.grey.shade500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCodeExample() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Code Example',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(6),
            ),
            child: const Text(
              '''// Using semantic styles
Text('Headline', style: AppTextStyles.headlineLarge)
Text('Body text', style: AppTextStyles.bodyMedium)
Text('Caption', style: AppTextStyles.labelSmall)

// Responsive text
ResponsiveText(
  'Adaptive text',
  mobileStyle: AppTextStyles.bodyMedium,
  tabletStyle: AppTextStyles.bodyLarge,
  desktopStyle: AppTextStyles.headlineSmall,
)

// Theme integration
Text(
  'Themed text',
  style: Theme.of(context).textTheme.headlineMedium,
)

// Extensions
'Hello World'.headlineLarge(context)
'Subtitle'.bodyMedium(context)''',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'monospace',
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturesList() {
    final features = [
      'Semantic typography system',
      'Responsive text scaling',
      'Dark/light theme support',
      'Accessibility compliance',
      'Material Design 3 integration',
      'Custom font support',
      'Text extension methods',
      'Performance optimized',
      'Easy theme customization',
      'Comprehensive documentation',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Features',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        ...features.map((feature) => Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            children: [
              Icon(Icons.check_circle, color: Colors.purple.shade600, size: 16),
              const SizedBox(width: 8),
              Expanded(child: Text(feature)),
            ],
          ),
        )),
      ],
    );
  }
}
