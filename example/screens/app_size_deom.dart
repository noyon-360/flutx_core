import 'package:flutter/material.dart';

class AppSizesDemoScreen extends StatelessWidget {
  const AppSizesDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Sizes Demo'),
        backgroundColor: Colors.indigo.shade600,
        foregroundColor: Colors.white,
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
                color: Colors.indigo.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.indigo.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.straighten, color: Colors.indigo.shade600),
                      const SizedBox(width: 8),
                      Text(
                        'Flutter App Sizes',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo.shade600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Consistent spacing and responsive design system with easy syntax and accessibility support.',
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 24),
            
            // Device Info
            _buildDeviceInfo(context),
            
            const SizedBox(height: 24),
            
            // Spacing Examples
            const Text(
              'Spacing Examples',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            
            _buildSpacingExamples(),
            
            const SizedBox(height: 24),
            
            // Responsive Grid
            const Text(
              'Responsive Grid',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            
            _buildResponsiveGrid(context),
            
            const SizedBox(height: 24),
            
            // Code Example
            _buildCodeExample(),
            
            const SizedBox(height: 24),
            
            // Features
            _buildFeaturesList(),
          ],
        ),
      ),
    );
  }

  Widget _buildDeviceInfo(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    
    String deviceType = 'Mobile';
    if (screenWidth >= 1024) {
      deviceType = 'Desktop';
    } else if (screenWidth >= 600) {
      deviceType = 'Tablet';
    }

    return Container(
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
            'Device Information',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          _buildInfoRow('Device Type', deviceType),
          _buildInfoRow('Screen Width', '${screenWidth.toInt()}px'),
          _buildInfoRow('Screen Height', '${screenHeight.toInt()}px'),
          _buildInfoRow('Orientation', screenWidth > screenHeight ? 'Landscape' : 'Portrait'),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            child: Text(
              '$label:',
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Text(value),
        ],
      ),
    );
  }

  Widget _buildSpacingExamples() {
    return Column(
      children: [
        // Padding examples
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8), // xs padding
                decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text('XS Padding (8px)', textAlign: TextAlign.center),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16), // md padding
                decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('MD Padding (16px)', textAlign: TextAlign.center),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(32), // xl padding
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Text('XL Padding (32px)', textAlign: TextAlign.center),
              ),
            ),
          ],
        ),
        
        const SizedBox(height: 16),
        
        // Border radius examples
        Row(
          children: [
            Expanded(
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.purple.shade100,
                  borderRadius: BorderRadius.circular(4), // sm radius
                ),
                child: const Center(child: Text('SM Radius (4px)')),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.orange.shade100,
                  borderRadius: BorderRadius.circular(12), // lg radius
                ),
                child: const Center(child: Text('LG Radius (12px)')),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.cyan.shade100,
                  borderRadius: BorderRadius.circular(999), // round radius
                ),
                child: const Center(child: Text('Round Radius')),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildResponsiveGrid(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    int columns = 2;
    if (screenWidth >= 1024) {
      columns = 4;
    } else if (screenWidth >= 600) {
      columns = 3;
    }

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: columns,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 1.2,
      ),
      itemCount: 8,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.primaries[index % Colors.primaries.length].shade200,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              'Item ${index + 1}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
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
              '''// Using AppSizes constants
Container(
  padding: EdgeInsets.all(AppSizes.paddingMd), // 16px
  margin: EdgeInsets.symmetric(horizontal: AppSizes.marginLg), // 24px
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(AppSizes.radiusLg), // 12px
  ),
)

// Using number extensions
Container(
  padding: 16.all, // EdgeInsets.all(16)
  margin: 24.horizontal, // EdgeInsets.symmetric(horizontal: 24)
  decoration: BoxDecoration(
    borderRadius: 12.radius, // BorderRadius.circular(12)
  ),
)

// Using widget extensions
Text('Hello')
  .paddingAll(AppSizes.paddingMd)
  .marginSymmetric(horizontal: AppSizes.marginLg)
  .card(elevation: AppSizes.elevationMd)

// Responsive values
Container(
  padding: EdgeInsets.all(
    AppSizes.responsive(context,
      mobile: 8.0,
      tablet: 16.0,
      desktop: 24.0,
    ),
  ),
)

// Spacing widgets
Column(
  children: [
    Text('First item'),
    AppSizes.md.height, // SizedBox(height: 16)
    Text('Second item'),
    AppSizes.lg.height, // SizedBox(height: 24)
    Text('Third item'),
  ],
)''',
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
      'Consistent spacing system',
      'Responsive design utilities',
      'Easy-to-use syntax',
      'Widget extension methods',
      'Number extension methods',
      'Accessibility compliance',
      'Performance optimized',
      'Customizable breakpoints',
      'Theme integration',
      'Cross-platform support',
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
              Icon(Icons.check_circle, color: Colors.indigo.shade600, size: 16),
              const SizedBox(width: 8),
              Expanded(child: Text(feature)),
            ],
          ),
        )),
      ],
    );
  }
}
