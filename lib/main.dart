import 'package:flutter/material.dart';
import 'package:widget/home_screen.dart';

class Player {
  String? name;

  Player();
}

void main() {
  var nico = Player();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFE7626C),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(color: Color(0xFF232B55)),
        ),
        cardColor: const Color(0xFFF4EDDB),
      ),
      home: const HomeScreen(),
    );
  }
}

// class App extends StatefulWidget {
//   const App({super.key});

//   @override
//   State<App> createState() => _AppState();
// }

// class _AppState extends State<App> {
//   bool showTitle = true;

//   void toggleTitle() {
//     setState(() {
//       showTitle = !showTitle;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         textTheme: TextTheme(titleLarge: TextStyle(color: Colors.red)),
//       ),
//       home: Scaffold(
//         backgroundColor: Color(0xFFF4EDDB),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               showTitle ? MyLargeTitle() : Text('nothing'),
//               IconButton(
//                 onPressed: toggleTitle,
//                 icon: Icon(Icons.remove_red_eye),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({super.key});

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  int count = 0;

  @override
  void initState() {
    super.initState();
    print('initState');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
