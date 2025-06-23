import 'package:flutter/material.dart';
import 'package:flutx_core/core/routes/services/go_next_navigation.dart';

import '../routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Packages Showcase'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue.shade600, Colors.blue.shade400],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '🚀 Complete Flutter Package Suite',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Production-ready packages for modern Flutter development',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white.withAlpha((0.9 * 255).toInt()),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // Packages Grid
            const Text(
              'Available Packages',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 1.1,
              children: [
                _buildPackageCard(
                  context,
                  title: 'Validators',
                  description:
                      'Comprehensive validation rules for forms and data',
                  icon: Icons.check_circle_outline,
                  color: Colors.green,
                  route: AppRoutes.validator,
                  features: [
                    'Email validation',
                    'Password strength',
                    'Phone numbers',
                    'Credit cards',
                  ],
                ),
                _buildPackageCard(
                  context,
                  title: 'Text Styles',
                  description:
                      'Semantic typography system with responsive design',
                  icon: Icons.text_fields,
                  color: Colors.purple,
                  route: AppRoutes.textStyleDeom,
                  features: [
                    'Semantic styles',
                    'Responsive text',
                    'Theme integration',
                    'Accessibility',
                  ],
                ),
                // _buildPackageCard(
                //   context,
                //   title: 'Secure Storage',
                //   description: 'Encrypted storage with multiple strategies',
                //   icon: Icons.security,
                //   color: Colors.orange,
                //   route:  '/storage',
                //   features: ['Encryption', 'Multiple backends', 'Caching', 'Auth helpers'],
                // ),
                _buildPackageCard(
                  context,
                  title: 'String Extensions',
                  description: 'Powerful string manipulation and utilities',
                  icon: Icons.text_snippet,
                  color: Colors.teal,
                  route: AppRoutes.stringExtensionDemo,
                  features: [
                    'Validation',
                    'Formatting',
                    'Parsing',
                    'Utilities',
                  ],
                ),
                _buildPackageCard(
                  context,
                  title: 'App Sizes',
                  description:
                      'Consistent spacing and responsive design system',
                  icon: Icons.straighten,
                  color: Colors.indigo,
                  route: AppRoutes.appSizeDemo,
                  features: [
                    'Consistent spacing',
                    'Responsive design',
                    'Easy syntax',
                    'Accessibility',
                  ],
                ),
                _buildPackageCard(
                  context,
                  title: 'Coming Soon',
                  description: 'More packages in development',
                  icon: Icons.more_horiz,
                  color: Colors.grey,
                  route: null,
                  features: [
                    'Animations',
                    'Networking',
                    'State management',
                    'UI components',
                  ],
                ),
              ],
            ),

            const SizedBox(height: 32),

            // Installation Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.download, color: Colors.blue.shade600),
                      const SizedBox(width: 8),
                      Text(
                        'Quick Installation',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'flutter pub add flutx_core',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'monospace',
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPackageCard(
    BuildContext context, {
    required String title,
    required String description,
    required IconData icon,
    required Color color,
    required List<String> features,
    String? route,
  }) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: route != null ? () => Navigator.pushNamed(context, route) : null,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: color.withAlpha((0.1 * 255).toInt()),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(icon, color: color, size: 20),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: features
                      .take(3)
                      .map(
                        (feature) => Padding(
                          padding: const EdgeInsets.only(bottom: 2),
                          child: Row(
                            children: [
                              Icon(Icons.check, size: 12, color: color),
                              const SizedBox(width: 4),
                              Expanded(
                                child: Text(
                                  feature,
                                  style: const TextStyle(fontSize: 10),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              if (route != null)
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  decoration: BoxDecoration(
                    color: color.withAlpha((0.1 * 255).toInt()),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    'View Demo',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: color,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
