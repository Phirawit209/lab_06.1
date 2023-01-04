import 'package:flutter/material.dart';
import 'package:lab_06/home.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String groupSimple = '';
  bool isCheked = false;
 final _formkey = GlobalKey<FormState>();
    TextEditingController _controller1 = TextEditingController(); 


 @override
  Widget build(BuildContext context) {
   return Scaffold(
  
   appBar: AppBar( 
   title: const Text("Lab06"),
   ),
     
   body: Form(
     key: _formkey,
     child: Column(children: [
      Text("TextFlod #1"),
      TextFormField(
        controller: _controller1,
        validator: (value) {
          if (value!.isEmpty){
return 'Enter some text';
}
return null;
        },
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          labelText: "username",
          hintText: "please enter username",
          hintStyle: TextStyle(color: Colors.amber),
        ),
      )
     ]),
   )
  );
  }
}