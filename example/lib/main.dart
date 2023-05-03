import 'package:flutter/material.dart';
import 'package:shine_flutter/shine_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card-widget Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        cardTheme: CardTheme(
          color: Colors.white,
          elevation: 4,
          shadowColor: const Color(0xffBDC8DF).withOpacity(0.7),
        ),
        shadowColor: const Color(0xffBDC8DF).withOpacity(0.7),
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xff9900F0),
          onPrimary: Colors.white,
          secondary: Color.fromARGB(255, 209, 140, 252),
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.white,
          onBackground: Colors.black,
          surface: Color(0xffF3DDFF),
          onSurface: Colors.black,
          surfaceVariant: Color(0xffFF8F00),
        ).copyWith(
            background: const Color(
          0xff9900F0,
        )),
      ),
      home: const MyHomePage(title: 'Card-Widget Example Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
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
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: GradientText(
                  "Radial Gradients",
                  style: const TextStyle(
                    fontSize: 22,
                  ),
                  gradient: RadialGradient(
                    colors: [
                      Theme.of(context).colorScheme.primary,
                      Theme.of(context).colorScheme.secondary
                    ],
                  ),
                ),
              ),
              const Divider(
                thickness: 2,
              ),
              GradientText(
                "Swami Vivekananda was an Indian philosopher and spiritual leader who played an important role in the revival of Hinduism in India and the spread of Indian spirituality to the West. While he is primarily known for his spiritual teachings, he also had a keen interest in education and believed that education was the key to the social and economic progress of India.",
                gradient: RadialGradient(
                  colors: [Colors.blue[900]!, Colors.blueAccent],
                ),
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: GradientText(
                  "Sweep Gradient",
                  style: const TextStyle(
                    fontSize: 22,
                  ),
                  gradient: SweepGradient(
                    colors: [
                      Theme.of(context).colorScheme.primary,
                      Theme.of(context).colorScheme.secondary
                    ],
                  ),
                ),
              ),
              const Divider(
                thickness: 2,
              ),
              GradientText(
                "Swami Vivekananda was an Indian philosopher and spiritual leader who played an important role in the revival of Hinduism in India and the spread of Indian spirituality to the West. While he is primarily known for his spiritual teachings, he also had a keen interest in education and believed that education was the key to the social and economic progress of India.",
                gradient: SweepGradient(
                  colors: [Colors.blue[900]!, Colors.blueAccent],
                ),
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: GradientText(
                  "Linear Gradient",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
              const Divider(
                thickness: 2,
              ),
              GradientText(
                "Swami Vivekananda was an Indian philosopher and spiritual leader who played an important role in the revival of Hinduism in India and the spread of Indian spirituality to the West. While he is primarily known for his spiritual teachings, he also had a keen interest in education and believed that education was the key to the social and economic progress of India.",
                gradient: LinearGradient(
                  colors: [Colors.blue[900]!, Colors.blueAccent],
                ),
                style: const TextStyle(fontSize: 22),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
