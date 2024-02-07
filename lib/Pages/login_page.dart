import 'package:flutter/material.dart';
import 'package:gradution_project/Pages/forget_password.dart';
import 'package:gradution_project/Pages/sign_up_page.dart';
import 'package:gradution_project/component/my_button.dart';
import 'package:gradution_project/component/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final passwordController = TextEditingController();
  final companyemailController = TextEditingController();

  void signUserUp() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.of(context).pop(),
          color: Colors.white,
        ),
        backgroundColor: const Color(0xff181A2F),
      ),
      backgroundColor: const Color(0xff181A2F),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return SafeArea(
            child: Center(
              child: Column(children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Image.asset("assets/images/Logo.png", width: 200),
                  ),
                ),
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Text('Login as a company:',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'CarterOne',
                            //fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                      controller: companyemailController,
                      cursorWidth: 1,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        fillColor: Colors.grey,
                        filled: true,
                        hintText: 'Company Email',
                        hintStyle: TextStyle(color: Colors.white38),
                      )),
                ),
                const SizedBox(height: 15),
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return ForgetPassword();
                            }),
                          );
                        },
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'CarterOne',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                MyButton(
                  text: 'Login',
                  onTap: signUserUp,
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Not a member?',
                      style: TextStyle(
                          color: Colors.grey, fontFamily: 'CarterOne'),
                    ),
                    const SizedBox(width: 4),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return SignUpPage();
                          }),
                        );
                      },
                      child: const Text(
                        'Register now',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontFamily: 'CarterOne',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
              ]),
            ),
          );
        },
      ),
    );
  }
}
