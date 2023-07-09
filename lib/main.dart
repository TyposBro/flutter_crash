import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int count = 0;

  void _incrementCount() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar Text $count'),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        // items: const <BottomNavigationBarItem>[
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.home),
        //     label: 'Home',
        //     backgroundColor: Colors.blue,
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.person),
        //     label: 'Profile',
        //     backgroundColor: Colors.green,
        //   ),
        // ],
        // selectedItemColor: Colors.amber[800],
        onDestinationSelected: (int index) {
          debugPrint("Tapped on item $index");
          setState(() {
            count = index;
          });
        },
        selectedIndex: count,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // _incrementCount();
          debugPrint("pressed");
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
