import 'package:flutter/material.dart';
import 'package:my_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "User";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
          children: [
            Image.asset(
              "assets/images/secure_login.png",
              fit: BoxFit.scaleDown,
              height: 300,
            ),
            Text("Welcome $name", style: const TextStyle(fontSize: 28)),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                      name = value;
                    },
                    decoration: const InputDecoration(
                        hintText: "Enter User Name", label: Text("Username")),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter Password", label: Text("Password")),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () async {
                setState(() {
                  changeButton = true;
                });
                await Future.delayed(const Duration(seconds: 1));
                Navigator.pushNamed(context, ApplicationRoutes.homeRoute);
              },
              child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  width: changeButton ? 50 : 150,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      shape:
                          changeButton ? BoxShape.circle : BoxShape.rectangle),
                  // borderRadius:
                  //     BorderRadius.circular(changeButton ? 20 : 8)),
                  child: changeButton
                      ? const Icon(Icons.done, color: Colors.white)
                      : const Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
            )

            // ElevatedButton(
            //   // ignore: avoid_print
            //   onPressed: () {
            //     print('Navigating to Home Page');
            //     Navigator.pushNamed(context, ApplicationRoutes.homeRoute);
            //   },
            //   style: TextButton.styleFrom(minimumSize: const Size(120, 50)),
            //   child: const Text("Login"),
            // )
          ],
        )));
  }
}
