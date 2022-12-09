import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      home:MyApp()
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title:  const Text('Counter',
          style:  TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
           Text("$currentValue",
          style: const TextStyle(
            fontSize: 64,
            fontWeight: FontWeight.bold,

          ),),
          //const SizedBox(height:50),
          Row(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed:  (){
                  setState(() {
                    currentValue +=1;
                  });
                },
                child: const Icon(Icons.add)
              ),
              FloatingActionButton(
                  onPressed:  (){
                    setState(() {
                      currentValue -=1;
                    });
                  },
                  child: const Icon(Icons.minimize)
              ),
            ],
          ),
        ],
      ),


    );
  }
}
