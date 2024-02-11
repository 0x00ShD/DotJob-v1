import 'package:flutter/material.dart';

class ShowAllCompany extends StatelessWidget {
  ShowAllCompany({super.key});

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
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Show all companies',
                              style: TextStyle(
                                color: Colors.white,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 64,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          'https://www.pngarts.com/files/5/Cartoon-Avatar-PNG-Image-Transparent.png'),
                    ),
                    SizedBox(width: 50),
                    CircleAvatar(
                      radius: 64,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          'https://www.pngarts.com/files/5/Cartoon-Avatar-PNG-Image-Transparent.png'),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 64,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          'https://www.pngarts.com/files/5/Cartoon-Avatar-PNG-Image-Transparent.png'),
                    ),
                    SizedBox(width: 50),
                    CircleAvatar(
                      radius: 64,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          'https://www.pngarts.com/files/5/Cartoon-Avatar-PNG-Image-Transparent.png'),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 64,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          'https://www.pngarts.com/files/5/Cartoon-Avatar-PNG-Image-Transparent.png'),
                    ),
                    SizedBox(width: 50),
                    CircleAvatar(
                      radius: 64,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          'https://www.pngarts.com/files/5/Cartoon-Avatar-PNG-Image-Transparent.png'),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 64,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          'https://www.pngarts.com/files/5/Cartoon-Avatar-PNG-Image-Transparent.png'),
                    ),
                    SizedBox(width: 50),
                    CircleAvatar(
                      radius: 64,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          'https://www.pngarts.com/files/5/Cartoon-Avatar-PNG-Image-Transparent.png'),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 64,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          'https://www.pngarts.com/files/5/Cartoon-Avatar-PNG-Image-Transparent.png'),
                    ),
                    SizedBox(width: 50),
                    CircleAvatar(
                      radius: 64,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          'https://www.pngarts.com/files/5/Cartoon-Avatar-PNG-Image-Transparent.png'),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 64,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          'https://www.pngarts.com/files/5/Cartoon-Avatar-PNG-Image-Transparent.png'),
                    ),
                    SizedBox(width: 50),
                    CircleAvatar(
                      radius: 64,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          'https://www.pngarts.com/files/5/Cartoon-Avatar-PNG-Image-Transparent.png'),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 64,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          'https://www.pngarts.com/files/5/Cartoon-Avatar-PNG-Image-Transparent.png'),
                    ),
                    SizedBox(width: 50),
                    CircleAvatar(
                      radius: 64,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          'https://www.pngarts.com/files/5/Cartoon-Avatar-PNG-Image-Transparent.png'),
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
