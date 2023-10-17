import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'قیمت آنلاین ارز و طلا',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: 'قیمت آنلاین ارز و طلا',
      ),
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
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color.fromARGB(232, 232, 232, 232),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Row(
              children: [
                TextButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 202, 193, 255),
                    ),
                    // shape: MaterialStateProperty.all(
                    //   RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(1000),
                    //   ),
                    // ),
                  ),
                  onPressed: () =>
                      _showSnakBar(context, 'Updated succesfully.'),
                  icon: const Icon(
                    CupertinoIcons.refresh_thick,
                    color: Colors.black,
                  ),
                  label: Text(
                    'Update',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Text('Last Updates ${_getTime()}')
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  String _getTime() {
    return '12:00';
  }
}

void _showSnakBar(BuildContext context, String msg) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        msg,
        style: const TextStyle(
          fontSize: 23,
        ),
      ),
      backgroundColor: Colors.green,
    ),
  );
}
