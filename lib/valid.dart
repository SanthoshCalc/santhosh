import 'package:flutter/material.dart';

class val extends StatefulWidget {
  const val({super.key});

  @override
  State<val> createState() => _valState();
}

class _valState extends State<val> {

  final keyabc = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: keyabc ,
        child: Column(
          children: [
            TextFormField(
              validator: (input)
              {
                if(input == null || input.isEmpty)
                  {
                    return "pls enter valid name";
                  }
              },
            ),
            ElevatedButton(onPressed: (){
              if(keyabc.currentState!.validate())
                {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ok success")));
                }
            }, child: Text("ok")),
          ],
        ),
      ),
    );
  }
}


/// reg exp