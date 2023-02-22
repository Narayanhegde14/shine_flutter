
## Usage
import 'package:Hospinity/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return CardWidget(
      boxShadow: const BoxShadow(color: Colors.white),
      backgroundColor: const Color(0xFFF5E6FE),
      padding: const EdgeInsets.all(4),
      borderRadius: BorderRadius.circular(5),
      children: [
        Icon(
          Icons.calendar_today_outlined,
          color: Theme.of(context).primaryColor,
          size: 20,
        )
      ],
    );
  }
}

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
