import 'package:flutter/material.dart';

import 'learn_flutter.page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const LearnFlutterPage(),
            ),
          ),
          child: const Text('Learn Flutter'),
        ),
      ),
    );
  }
}
