import 'package:flutter/material.dart';
import 'package:untitled/bottom.dart';
import 'package:untitled/settings.dart';

class kia extends StatefulWidget {
  const kia({super.key});

  @override
  State<kia> createState() => _kiaState();
}
class _kiaState extends State<kia> {
  TextEditingController a = TextEditingController();
  TextEditingController b = TextEditingController();
  TextEditingController c = TextEditingController();
  TextEditingController d = TextEditingController();

  final wwf = GlobalKey<FormState>();
  bool _obscureText = true;
  bool isvisible = false;
  sandy(){
  setState(() {
    d.text.isNotEmpty && a.text.isNotEmpty && b.text.isNotEmpty&&
        c.text.isNotEmpty ? isvisible = true:isvisible=false;
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text("facebook",style: TextStyle(color: Colors.blueAccent,
              fontSize:25,fontWeight: FontWeight.bold),),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Icon(Icons.menu),
          ),
        ],
      ),
      body: Form(
        key: wwf,
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  height: 70,
                  width: 350,
                  child: TextFormField(
                    controller: a,
                    onChanged: (i)
                    {
                     sandy();
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.drive_file_rename_outline),
                      hintText: ("Enter name"),
                      border: OutlineInputBorder(),
                    ),
                    validator: (input){
                      if(input!.isEmpty||!RegExp(r"^[a-z0-9_-]{3,15}$").hasMatch(input))
                      {
                        return"enter valid name";
                      }
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 70,
                width: 350,
                child: TextFormField(
                  controller: b,
                  onChanged: (i)
                  {
                  sandy();
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    hintText: ("Enter number"),
                    border: OutlineInputBorder(),
                  ),
                  validator: (input){
                    if(input!.isEmpty || !RegExp(r"^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$")
                        .hasMatch(input))
                    {
                      return"enter valid number";
                    }
                  },
                ),
              ),
              SizedBox(
                height: 70,
                width: 350,
                child: TextFormField(
                  controller: c,
                  onChanged: (i)
                  {
                    sandy();
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    hintText: ("Enter email"),
                    border: OutlineInputBorder()
                  ),
                  validator: (input){
                    if(input!.isEmpty||!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(input))
                    {
                      return"enter valid email";
                    }
                  },
                ),
              ),
              SizedBox(
                height: 70,
                width: 350,
                child: TextFormField(
                  controller: d,
                  onChanged: (i)
                  {
                    sandy();
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.key),
                    suffixIcon: GestureDetector(
                      onTap: (){
                        setState(() {
                          _obscureText=!_obscureText;
                        });
                      },
                      child: Icon(_obscureText? Icons.visibility:Icons.visibility_off),
                    ),
                    hintText: ("Enter password"),
                    border: OutlineInputBorder(),
                  ),
                  validator: (input){
                    if(input!.isEmpty || !RegExp(r'[!@#%^&*(),.?":{}|<>]')
                        .hasMatch(input))
                    {
                      return"enter valid password";
                    }
                  },
                  obscureText:_obscureText ,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Visibility(
                  visible: isvisible,
                  child: ElevatedButton(
                    onPressed: () {
                      if(wwf.currentState!.validate()){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=> bar()), );
                      }
                      if (wwf.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Login successfully")));
                      }
                    },
                    child: Text(" Login"),

                  ),

                ),

              ),


            ],

          ),
        )
      ),
    );
  }
}
