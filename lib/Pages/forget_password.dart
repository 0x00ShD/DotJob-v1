import 'package:flutter/material.dart';
import 'package:gradution_project/Pages/reset_password.dart';
import 'package:gradution_project/Pages/sign_up_page.dart';
import 'package:gradution_project/component/my_button.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});

  final verificationcodeController = TextEditingController();

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
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text('Reset your password',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'CarterOne',
                                //fontWeight: FontWeight.bold,
                              )),
                          const SizedBox(height: 15),
                          Text('Enter your email, phone, or username',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontSize: 18,
                                fontFamily: 'CarterOne',
                                //fontWeight: FontWeight.bold,
                              )),
                          Text('and we\'ll send you a link',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontSize: 18,
                                fontFamily: 'CarterOne',
                                //fontWeight: FontWeight.bold,
                              )),
                          Text('to get back into your account.',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontSize: 20,
                                fontFamily: 'CarterOne',
                                //fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text('Company E-mail:',
                          style: TextStyle(
                            color: Color.fromARGB(255, 28, 196, 151),
                            fontSize: 30,
                            fontFamily: 'CarterOne',
                            //fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                      controller: verificationcodeController,
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
                        hintText: 'E-mail',
                        hintStyle: TextStyle(color: Colors.white38),
                      )),
                ),
                const SizedBox(height: 40),
                MyButton(
                  text: 'Send reset link',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return ResetPassword();
                      }),
                    );
                  },
                ),
                const SizedBox(height: 15),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don’t have an account?',
                          style: TextStyle(
                              color: Colors.grey, fontFamily: 'CarterOne'),
                        ),
                        const SizedBox(width: 2),
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
                            'Register',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15,
                              fontFamily: 'CarterOne',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ]),
            ),
          );
        },
      ),
    );
  }
}
