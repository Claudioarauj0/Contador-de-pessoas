import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  void decrement() {
    setState(() {
      count--;
    });
    print(count);
  }

  void increment() {
    setState(() {
      count++;
    });
    print(count);

  }

  bool get isEmpty => count == 0;
  bool get isfull => count == 500;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/contei.png'), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isfull ? 'LOTADO' : 'QUANTIDADE',
              style:  TextStyle(
                  fontSize: 35,
                  color: isfull ? Colors.green : Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 20),
            Text(
              '$count',
              style: TextStyle(
                fontSize: 100,
                color: isfull ? Colors.red : Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: isEmpty ? null : decrement,
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor:
                        isEmpty ? Colors.white.withOpacity(0.3) : Colors.white,
                    fixedSize: const Size(100, 100),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  child: const Text(
                    'SAIU',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                TextButton(
                  onPressed: isfull ? null : increment,
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor:
                        isfull ? Colors.white.withOpacity(0.3) : Colors.white,
                    fixedSize: const Size(100, 100),  
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  child: const Text(
                    'ENTROU',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
