import 'package:flutter/material.dart';
import 'package:gradution_project/component/my_button.dart';

class AnotherBusinessNumber extends StatelessWidget {
  AnotherBusinessNumber({super.key});

  final verificationcodeController = TextEditingController();
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Add another business phone number',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'CarterOne',
                                //fontWeight: FontWeight.bold,
                              )),
                          Text('and enable two-step verification',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'CarterOne',
                                //fontWeight: FontWeight.bold,
                              )),
                          SizedBox(height: 15),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text('Another business phone number:',
                          style: TextStyle(
                            color: Color.fromARGB(255, 28, 196, 151),
                            fontSize: 18,
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
                        hintText: 'another business phone number',
                        hintStyle: TextStyle(color: Colors.white38),
                      )),
                ),
                const SizedBox(height: 40),
                MyButton(
                  text: 'Reset the number',
                  onTap: signUserUp,
                ),
                const SizedBox(height: 15),
              ]),
            ),
          );
        },
      ),
    );
  }
}
