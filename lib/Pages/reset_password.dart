import 'package:flutter/material.dart';
import 'package:gradution_project/Pages/done_reset.dart';
import 'package:gradution_project/Pages/sign_up_page.dart';
import 'package:gradution_project/component/my_button.dart';
import 'package:gradution_project/component/my_textfield.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({super.key});

  final confirmpasswordController = TextEditingController();
  final passwordController = TextEditingController();

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
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text('Create A Strong Password',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'CarterOne',
                                //fontWeight: FontWeight.bold,
                              )),
                          const SizedBox(height: 15),
                          Text('Your password must be at least 6 characters ',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontSize: 14,
                                fontFamily: 'CarterOne',
                                //fontWeight: FontWeight.bold,
                              )),
                          Text('and should include a combination of numbers, ',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontSize: 14,
                                fontFamily: 'CarterOne',
                                //fontWeight: FontWeight.bold,
                              )),
                          Text('letters and special characters (!\$@%).',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontSize: 14,
                                fontFamily: 'CarterOne',
                                //fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                const SizedBox(height: 25),
                MyTextField(
                  controller: passwordController,
                  hintText: 'Confirm password',
                  obscureText: true,
                ),
                const SizedBox(height: 50),
                MyButton(
                  text: 'Reset the password',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const DoneReset();
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
