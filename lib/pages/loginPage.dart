import 'package:flutter/material.dart';
import 'package:my_login_page/utiliti.dart';
// import 'package:my_login_page/pages/home.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final _formKey=GlobalKey<FormState>();
  moveTohome(BuildContext context){
    if (_formKey.currentState!.validate()) {
      
    
    Navigator.pushNamed(context, myRoutes.homePage);
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 40.0),
        child: Form(
          key:_formKey ,
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset(
                  "assets/images/lgggg.png",
                  height: 150.0,
                  width: 250.0,
                )
              ]),
              SizedBox(
                height: 20.0,
              ),
              Column(
                children: [
                  Text(
                    "Login",
                    style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50.0, vertical: 5.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "UserName",
                        hintText: "Enter UserName",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                      ),
                       validator: (value) {
                         if (value!.isEmpty) {
                           return "Enter UserName";
                         }
                        
                         return null;
                       },
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50.0, vertical: 5.0),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Enter Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                      ),
                      validator: (value) {
                         if (value!.isEmpty) {
                           return "Enter UserName";
                         }
                         else if(value.length<8){
                          return "Password must be 8 charactor";
                         }
                    
                       },
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  MaterialButton(
                    height: 40.0,
                    minWidth: 100.0,
                    color: Color.fromARGB(255, 9, 89, 154),
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () =>moveTohome(context),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
