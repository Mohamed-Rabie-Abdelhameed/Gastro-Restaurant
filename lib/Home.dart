import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg.jpg"),
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/icon.png"),
              radius: 70,
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Text(
          //     "Welcome to \nGastro Restaurant",
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       fontSize: 28,
          //       fontWeight: FontWeight.bold,
          //       color: Colors.white,
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color.fromARGB(255, 249, 142, 84),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed("category");
              },
              child: Text("Get Started", style: TextStyle(fontSize: 18)),
            ),
          )
        ],
      ),
    );
    // return Container(
    //   decoration: BoxDecoration(
    //     image: DecorationImage(
    //       image: AssetImage("assets/images/bg.jpg"),
    //       fit: BoxFit.fill,
    //     ),
    //   ),
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Text(
    //         "Welcome to Gastro",
    //         style: TextStyle(
    //           fontSize: 28,
    //           fontWeight: FontWeight.bold,
    //           color: Color.fromARGB(255, 9, 61, 101),
    //         ),
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.only(top: 20),
    //         child: OutlinedButton(
    //           style: OutlinedButton.styleFrom(
    //             foregroundColor: Colors.white,
    //             backgroundColor: Color.fromARGB(255, 249, 142, 84),
    //             shape: RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(20),
    //             ),
    //           ),
    //           onPressed: () {
    //             Navigator.of(context).pushNamed("category");
    //           },
    //           child: Text("Get Started"),
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }
}
