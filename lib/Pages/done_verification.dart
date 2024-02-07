import 'package:flutter/material.dart';

class DoneVerification extends StatelessWidget {
  const DoneVerification({super.key});

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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Text('Account successfully created',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontFamily: 'CarterOne',
                                //fontWeight: FontWeight.bold,
                              )),
                          SizedBox(height: 15),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Image.asset("assets/images/check.png", width: 120),
                  ),
                ),
                const SizedBox(height: 50),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Center(
                        child: Text(
                            'Now you have an account on dot job application, you can now browse freely to apply for a job.',
                            style: TextStyle(
                              color: Color.fromARGB(255, 28, 196, 151),
                              fontSize: 20,
                              fontFamily: 'CarterOne',
                              //fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    Text('Let\'s go',
                        style: TextStyle(
                          color: Color.fromARGB(255, 28, 196, 151),
                          fontSize: 20,
                          fontFamily: 'CarterOne',
                          //fontWeight: FontWeight.bold,
                        )),
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
