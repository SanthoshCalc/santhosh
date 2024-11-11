import 'package:flutter/material.dart';

class van extends StatefulWidget {
  const van({super.key});

  @override
  State<van> createState() => _vanState();
}

TextEditingController a = TextEditingController();


bool isvisible = false;


class _vanState extends State<van> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: TextFormField(
                controller: a,
                onChanged: (i){
                 setState(() {

                   a.text.isNotEmpty ? isvisible = true : isvisible = false;
                 });

                },
                decoration: InputDecoration(
              icon: Icon(Icons.drive_file_rename_outline),
              hintText: ("Enter name"),
              border: OutlineInputBorder(),
            ),

          ),
          ),
          Visibility(
            visible: isvisible,
            child: ElevatedButton(onPressed: (){
            }, child: Text("click")),
          ),
        ],
      )

    );
  }
}
