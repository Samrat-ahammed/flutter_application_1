import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String name = '';
  bool changebutton = false;
  final formkey = GlobalKey<FormState>();

  movetohome(BuildContext context) async {
    if (formkey.currentState!.validate())
      setState(() {
        changebutton = true;
      });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, Myroutes.homeroute);
    setState(() {
      changebutton = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/login.png',
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                  child: Column(
                    children: [
                      Text('Welcome $name',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Enter User Name',
                            labelText: 'User Name'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'User account errow';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Enter Password', labelText: 'Password'),
                        validator: (value) {
                          if (value == null || value.length < 6) {
                            return 'password account errow';
                          } else if (value != null || value.isEmpty) {
                            return 'password is empty';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Material(
                        color: Colors.purple,
                        borderRadius:
                            BorderRadius.circular(changebutton ? 20 : 10),
                        child: InkWell(
                          onTap: () => movetohome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            child: changebutton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    'Login',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                            height: 40,
                            alignment: Alignment.center,
                            width: changebutton ? 50 : 140,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
