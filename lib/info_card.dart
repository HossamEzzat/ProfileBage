import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  // the values we need
  final String text;
  final IconData icon;
  Function onPressed;

  InfoCard(
      {Key? key, required this.text, required this.icon, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed(),
      child: Card(
        color: Colors.white,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: ListTile(

          leading: Icon(
            icon,
            color: Colors.cyanAccent,
          ),
          title: Text(
            text,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: "Source Sans Pro"),
          ),

        ),
      ),
    );
  }
}
