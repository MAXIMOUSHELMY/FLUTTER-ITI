import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLUTTER DAY 2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      home: const MyHomePage(title: 'profile page'),
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(height: 200, color: const Color(0xff607d8b)),
                  Positioned(
                    left: 0,
                    right: 250,
                    bottom: 5,
                    child: const CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(
                        'https://i.pravatar.cc/150?img=3',
                      ),
                    ),
                  ),
                  const Positioned(
                    right: 20,
                    bottom: 20,
                    child: Icon(Icons.edit, color: Colors.white, size: 33),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // تبدأ من الشمال
                children: [
                  SizedBox(height: 40),
                  Text(
                    "maximus helmy ",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.email, size: 25),
                      SizedBox(width: 8),
                      Text("maximushelmy@gmail.com"),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.phone, size: 25),
                      SizedBox(width: 10),
                      Text("01272615513"),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              child: const ListTile(
                leading: Icon(Icons.description),
                title: Text(
                  "Task 1",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Complete your profile"),
                trailing:
                    Icon(Icons.check_circle, size: 35, color: Colors.green),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              child: const ListTile(
                leading: Icon(Icons.description),
                title: Text(
                  "Task 2",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Verify your email"),
                trailing: Icon(Icons.hourglass_bottom, color: Colors.orange),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              child: const ListTile(
                leading: Icon(Icons.description),
                title: Text(
                  "Task 3",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Add a phone number"),
                trailing: Icon(Icons.close, color: Colors.red),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              child: const ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  "settings",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Premium Member",
                      style: TextStyle(fontSize: 16, color: Color.fromARGB(137, 255, 255, 255)),
                    ),
                    Icon(Icons.star, color: Colors.yellow),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
