import 'package:flutter/material.dart';

class sar extends StatefulWidget {
  const sar({super.key});

  @override
  State<sar> createState() => _sarState();
}

final santa = GlobalKey<FormState>();

class _sarState extends State<sar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: santa,
        child: Column(
          children: [
            TextFormField(
              validator: (input)
              {
                if(input == null || input.isEmpty)
                {
                  return "enter valid number";
                }
              },
            ),
            ElevatedButton(onPressed: (){
              if(santa.currentState!.validate())
              {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("confirm")));
              }
            }, child: Text("sign up")),
          ],
        ),
      ),
    );
  }
}
