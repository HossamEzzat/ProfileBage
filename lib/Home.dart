import 'package:flutter/material.dart';

import 'info_card.dart';


// our data
const url = "HossamEzzat.me";
const email = "hossamezzat199@gmail.com";
const phone = "0106422482";
const location = "Sharqiya_Zagaig";

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan,

        body: SafeArea(
          minimum: const EdgeInsets.only(top: 100),
          child: Column(
            children: <Widget>[
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/hh.jpg'),
              ),
              const Text(
                "Hossam Ezzat",
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Pacifico",
                ),
              ),
              const Text(
                "Flutter Developer",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Source Sans Pro"),
              ),
              const SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.white,
                ),
              ),

              // we will be creating a new widget name info carrd

              InfoCard(text: phone, icon: Icons.phone, onPressed: () {}),
              InfoCard(text: url, icon: Icons.web, onPressed: ()  {}),
              InfoCard(
                  text: location,
                  icon: Icons.location_city,
                  onPressed: ()  {}),
              InfoCard(text: email, icon: Icons.email, onPressed: (){}),
            ],
          ),
        ));
  }
}
