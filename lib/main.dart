import 'package:flutter/material.dart';
import 'package:ses2706/tabbed_page.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.yellow,
        ),
      ),
      home: const Page1(),
    ),
  );
}

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const TabBarDemo(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                // const begin = Offset(1.0, 0.0);
                // const end = Offset(0, 0);
                const curve = Curves.fastLinearToSlowEaseIn;
                final curverdAnima =
                    CurvedAnimation(parent: animation, curve: curve);

                // var tween = Tween(begin: begin, end: end)
                //     .chain(CurveTween(curve: curve));

                // return SlideTransition(
                //   position: animation.drive(tween),
                //   child: child,
                // );

                return ScaleTransition(
                  scale: curverdAnima,
                  child: child,
                );
              },
            ),
          );
        },
        child: Text("Next"),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.pink.shade800,
      body: const Center(
        child: Text('Page 2'),
      ),
    );
  }
}
