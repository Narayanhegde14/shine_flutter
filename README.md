##

```dart
import 'package:shine_flutter/shine_flutter.dart';
import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100,
              width: 100,
              child: CardWidget(
                backgroundColor: Colors.white,
                shape: BoxShape.circle,
                gradient: RadialGradient(colors: [
                  Colors.pink[700]!,
                  Colors.pink[600]!,
                  Colors.pink[500]!,
                  Colors.pink[400]!,
                ]),
                children: const [],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 100,
              width: 100,
              child: CardWidget(
                backgroundColor: Colors.white,
                children: [],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: CardWidget(
                backgroundColor: Colors.blueAccent,
                border: Border.all(color: Colors.blue[900]!),
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).cardTheme.shadowColor ??
                        Theme.of(context).shadowColor,
                    offset: const Offset(1.0, 3.1),
                    blurRadius: 5,
                    blurStyle: BlurStyle.normal,
                  ),
                  BoxShadow(
                    color: Theme.of(context).cardTheme.shadowColor ??
                        Theme.of(context).shadowColor,
                    offset: const Offset(1.0, -3.1),
                    blurRadius: 5,
                    blurStyle: BlurStyle.normal,
                  ),
                ],
                children: const [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

## Additional information

This package can be used to show card as you want,
Using this package you can customize card as you want
