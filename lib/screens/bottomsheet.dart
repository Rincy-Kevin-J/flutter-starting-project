import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomSheett extends StatelessWidget {
  const BottomSheett({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onLongPress: () => showSheet(context),
          child: Image.asset(
            "assets/icons/cherry.png",
            height: 100,
            width: 100,
          ),
        ),
      ),
    );
  }

  showSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.whatsapp,
                  color: Colors.teal,
                ),
                title: Text("Whatsapp"),
              ),
              ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.facebook,
                  color: Colors.teal,
                ),
                title: Text("Facebook"),
              ),
              ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.twitter,
                  color: Colors.teal,
                ),
                title: Text("Twitter"),
              ),
            ],
          );
        });
  }
}
