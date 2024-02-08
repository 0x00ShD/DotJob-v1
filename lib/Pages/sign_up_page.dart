import 'package:flutter/material.dart';
import 'package:gradution_project/Pages/login_page.dart';
import 'package:gradution_project/Pages/verification.dart';
import 'package:gradution_project/component/check_list.dart';
import 'package:gradution_project/component/drag.dart';
import 'package:gradution_project/component/image_picker.dart';
import 'package:gradution_project/component/my_button.dart';
import 'package:gradution_project/component/my_textfield.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final passwordController = TextEditingController();
  final companyemailController = TextEditingController();
  final companynameController = TextEditingController();
  final businessaddressController = TextEditingController();
  final confirmpasswordController = TextEditingController();
  final yearofestablishmentController = TextEditingController();
  final businessphonenumberController = TextEditingController();
  final websiteController = TextEditingController();
  final companysizeController = TextEditingController();
  final briefdescripitionofthecompanyController = TextEditingController();

  void signUserUp() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      Text('Sign Up as a company:',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'CarterOne',
                            //fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                const ImagePickerWidget(),
                const SizedBox(height: 25),
                MyTextField(
                  controller: companynameController,
                  hintText: 'Company Name',
                  obscureText: false,
                ),
                const SizedBox(height: 15),
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
                MyTextField(
                  controller: confirmpasswordController,
                  hintText: 'Confirm Password',
                  obscureText: true,
                ),
                const SizedBox(height: 15),
                MyTextField(
                  controller: businessphonenumberController,
                  hintText: 'Business Phone Number',
                  obscureText: false,
                ),
                const SizedBox(height: 15),
                MyTextField(
                  controller: businessaddressController,
                  hintText: 'Business Address',
                  obscureText: false,
                ),
                const SizedBox(height: 15),
                MyTextField(
                  controller: confirmpasswordController,
                  hintText: 'Tax Identification Number (TIN)',
                  obscureText: false,
                ),
                const SizedBox(height: 15),
                MyTextField(
                  controller: yearofestablishmentController,
                  hintText: 'Year of Establishment',
                  obscureText: false,
                ),
                const SizedBox(height: 15),
                MyTextField(
                  controller: websiteController,
                  hintText: 'Website (if applicable)',
                  obscureText: false,
                ),
                const SizedBox(height: 15),
                MyTextField(
                  controller: companysizeController,
                  hintText: 'Company Size (number of employees)',
                  obscureText: false,
                ),
                const SizedBox(height: 15),
                MyTextField(
                  controller: briefdescripitionofthecompanyController,
                  hintText: 'Brief Description of the Company',
                  obscureText: false,
                ),
                const SizedBox(height: 25),
                const DropdownMenuExample(),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomCheckboxWidget(
                      value: false,
                      onChanged: (bool? newValue) {},
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    const Column(
                      children: [
                        Text('Accept the Terms & ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'CarterOne',
                              //fontWeight: FontWeight.bold,
                            )),
                        Text('Condition of the company ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'CarterOne',
                              //fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                MyButton(
                  text: 'Sign Up',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Verification();
                    }));
                  },
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'You\'ve already registered?',
                      style: TextStyle(
                          color: Colors.grey, fontFamily: 'CarterOne'),
                    ),
                    const SizedBox(width: 4),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return LoginPage();
                          }),
                        );
                      },
                      child: const Text(
                        'Login now',
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
