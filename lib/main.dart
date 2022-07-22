import 'package:flutter/material.dart';

import 'package:advanced_flutter_tricks/glass_morphism.dart';

void main() {
  runApp(const AdvancedFlutter());
}

class AdvancedFlutter extends StatefulWidget {
  const AdvancedFlutter({Key? key}) : super(key: key);

  @override
  State<AdvancedFlutter> createState() => _AdvancedFlutterState();
}

class _AdvancedFlutterState extends State<AdvancedFlutter> {
  bool _x = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: AnimatedCrossFade(
            firstChild: const Text("Hello There"),
            secondChild: const Text("General Kenobi"),
            crossFadeState:
                _x ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(milliseconds: 300),
          ),
        ),
        body: Column(
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _x = !_x;
                });
              },
              child: const Text('test'),
            ),
            const GlassMorphism(),
          ],
        ),
        backgroundColor: Colors.purple,
      ),
    );
  }
}
