import 'package:flutter/material.dart';
import '/components/text_field.dart';

import 'constants.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  var formKey = GlobalKey<FormState>();
  var userNameControlller = TextEditingController();
  var passwordControlller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        backgroundColor: mainColor,
      ),
      body: SingleChildScrollView(
        child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    'images/login.png',
                    width: MediaQuery.of(context).size.width / 1.5,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'This section is for Doctors',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      MyTextField().build(context,
                          lable: const Text("Username"), validator: (value) {
                        if (value!.isEmpty) {
                          return "username is required";
                        }
                      }, controller: userNameControlller),
                      const SizedBox(
                        height: 10,
                      ),
                      MyTextField().build(context,
                          lable: const Text("Password"), validator: (value) {
                        if (value!.isEmpty) {
                          return "password is required";
                        }
                      }, controller: passwordControlller),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    clipBehavior: Clip.hardEdge,
                    width: MediaQuery.of(context).size.width / 1.5,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(25)),
                    child: ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {}
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text('Login'),
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
