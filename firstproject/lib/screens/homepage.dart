import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // variable declaration
  String title = "";
  TextEditingController number1 = TextEditingController();
  TextEditingController number2 = TextEditingController();
  double total = 0;

  @override
  void initState() {
    title = "Simple Calculator in Flutter";
    number1.text = "0";
    number2.text = "0";
    super.initState();
  }

  void addNumbers(){
    setState(() {
      total = double.parse(number1.text) + double.parse(number2.text);
    });
  }

  void subtractNumbers(){
    setState(() {
      total = double.parse(number1.text) - double.parse(number2.text);
    });
  }

  void multiplyNumbers(){
    setState(() {
      total = double.parse(number1.text) * double.parse(number2.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),)),
            SizedBox(height: 20),
            TextField(controller: number1),
            SizedBox(height: 20),
            TextField(controller: number2),
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              addNumbers();
            }, 
            child: Text('Addition')),
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              subtractNumbers();
            }, 
            child: Text('Subtraction')),
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              multiplyNumbers();
            }, 
            child: Text('Multiplication')),
            SizedBox(height: 20),
            Text('Total = $total', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
          ],
        ),
      ),
    );
  }
}