import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static String id = '/login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("เข้าสู่ระบบ"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (value) {
                  if(value == ""){
                    return "Field is required";
                  }
                  return null;
                },
                onSaved: (value){
                  print("Name field is Saved");
                },
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: "Name",
                  // border: OutlineInputBorder(),
                  hintText: "Write your full name",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.text,
                maxLength: 15,
              ),
              const SizedBox(height: 20),
              TextFormField(
                validator: (value) {
                  if(value!.length<3 ){
                    return "Passworf should be more than 3 characters";
                  }
                  return null;
                },
                 onSaved: (value){
                  print("Password field is Saved");
                },
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password),
                  helperText: "Password > 3 characters",
                ),
                obscureText: true,
              ),
              ElevatedButton(
                  onPressed: () {
                   if(_formkey.currentState!.validate()==true){
                     _formkey.currentState!.save();
                     showDialog(context: context, builder: (context)=>AlertDialog(
                       title: Text("Thank you"),
                       content: Text("Form Submitted Successfully"),
                      actions: [
                        ElevatedButton(onPressed: () {
                          Navigator.pop(context);
                        }, child: Text("Okay"))
                      ],
                      backgroundColor: Colors.indigo,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                     ));
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Form Submitted Successfully")));
                     print("Form Submitted Successfully");
                   }
                    
                  },
                  child: const Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}