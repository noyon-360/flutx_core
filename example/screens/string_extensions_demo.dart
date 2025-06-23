import 'package:flutter/material.dart';

class StringExtensionsDemoScreen extends StatefulWidget {
  const StringExtensionsDemoScreen({super.key});

  @override
  State<StringExtensionsDemoScreen> createState() => _StringExtensionsDemoScreenState();
}

class _StringExtensionsDemoScreenState extends State<StringExtensionsDemoScreen> {
  final _inputController = TextEditingController();
  String _result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('String Extensions Demo'),
        backgroundColor: Colors.teal.shade600,
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
                color: Colors.teal.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.teal.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.text_snippet, color: Colors.teal.shade600),
                      const SizedBox(width: 8),
                      Text(
                        'Flutter String Extensions',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal.shade600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Powerful string manipulation and utilities with validation, formatting, parsing, and more.',
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 24),
            
            // Interactive Demo
            const Text(
              'Interactive Demo',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            
            TextField(
              controller: _inputController,
              decoration: const InputDecoration(
                labelText: 'Enter text to transform',
                hintText: 'hello world example@email.com',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) => setState(() {}),
            ),
            
            const SizedBox(height: 16),
            
            // Transformation Buttons
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                _buildTransformButton('Capitalize', () {
                  setState(() {
                    _result = _inputController.text.isNotEmpty 
                        ? _inputController.text[0].toUpperCase() + _inputController.text.substring(1).toLowerCase()
                        : '';
                  });
                }),
                _buildTransformButton('Title Case', () {
                  setState(() {
                    _result = _inputController.text.split(' ')
                        .map((word) => word.isNotEmpty 
                            ? word[0].toUpperCase() + word.substring(1).toLowerCase()
                            : '')
                        .join(' ');
                  });
                }),
                _buildTransformButton('Reverse', () {
                  setState(() {
                    _result = _inputController.text.split('').reversed.join('');
                  });
                }),
                _buildTransformButton('Remove Spaces', () {
                  setState(() {
                    _result = _inputController.text.replaceAll(' ', '');
                  });
                }),
                _buildTransformButton('Extract Email', () {
                  setState(() {
                    final emailRegex = RegExp(r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b');
                    final match = emailRegex.firstMatch(_inputController.text);
                    _result = match?.group(0) ?? 'No email found';
                  });
                }),
                _buildTransformButton('Word Count', () {
                  setState(() {
                    final words = _inputController.text.trim().split(RegExp(r'\s+'));
                    _result = 'Words: ${words.where((w) => w.isNotEmpty).length}';
                  });
                }),
                _buildTransformButton('Is Email?', () {
                  setState(() {
                    final isEmail = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(_inputController.text);
                    _result = isEmail ? '✅ Valid email' : '❌ Invalid email';
                  });
                }),
                _buildTransformButton('Truncate', () {
                  setState(() {
                    _result = _inputController.text.length > 20 
                        ? '${_inputController.text.substring(0, 20)}...'
                        : _inputController.text;
                  });
                }),
              ],
            ),
            
            const SizedBox(height: 16),
            
            // Result Display
            if (_result.isNotEmpty)
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
                      'Result:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      _result,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            
            const SizedBox(height: 32),
            
            // Extension Categories
            const Text(
              'Extension Categories',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 1.2,
              children: [
                _buildCategoryCard(
                  'Validation',
                  'Email, URL, phone validation',
                  Icons.check_circle,
                  Colors.green,
                ),
                _buildCategoryCard(
                  'Formatting',
                  'Case conversion, truncation',
                  Icons.format_textdirection_l_to_r_sharp,
                  Colors.blue,
                ),
                _buildCategoryCard(
                  'Parsing',
                  'Extract data, split text',
                  Icons.code,
                  Colors.orange,
                ),
                _buildCategoryCard(
                  'Utilities',
                  'Count, reverse, clean',
                  Icons.build,
                  Colors.purple,
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
    );
  }

  Widget _buildTransformButton(String label, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: _inputController.text.isNotEmpty ? onPressed : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.teal.shade600,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
      child: Text(label, style: const TextStyle(fontSize: 12)),
    );
  }

  Widget _buildCategoryCard(String title, String description, IconData icon, Color color) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(icon, color: color, size: 24),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Text(
              description,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade600,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
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
              '''// Validation extensions
'user@example.com'.isEmail; // true
'https://flutter.dev'.isUrl; // true
'+1234567890'.isPhoneNumber; // true

// Formatting extensions
'hello world'.capitalize; // 'Hello world'
'hello world'.titleCase; // 'Hello World'
'Hello World'.camelCase; // 'helloWorld'
'long text here'.truncate(10); // 'long text...'

// Parsing extensions
'Hello World 123'.extractNumbers; // ['123']
'Contact: user@example.com'.extractEmails; // ['user@example.com']
'Visit https://flutter.dev'.extractUrls; // ['https://flutter.dev']

// Utility extensions
'hello world'.wordCount; // 2
'hello'.reverse; // 'olleh'
'  hello  '.clean; // 'hello'
'hello world'.removeSpaces; // 'helloworld'

// Nullable string extensions
String? nullableString = null;
nullableString.isNullOrEmpty; // true
nullableString.orDefault('default'); // 'default'
nullableString.ifNotEmpty((value) => print(value)); // safe operation''',
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
      'Email, URL, phone validation',
      'Case conversion utilities',
      'Text truncation and ellipsis',
      'Data extraction (emails, URLs, numbers)',
      'Word and character counting',
      'String cleaning and formatting',
      'Null-safe string operations',
      'Regular expression helpers',
      'Internationalization support',
      'Performance optimized',
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
              Icon(Icons.check_circle, color: Colors.teal.shade600, size: 16),
              const SizedBox(width: 8),
              Expanded(child: Text(feature)),
            ],
          ),
        )),
      ],
    );
  }
}
