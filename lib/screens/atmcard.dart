import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AtmCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [

            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage("https://tse1.mm.bing.net/th?id=OIP.xTn5yMHcEnt3mv9zUlKbXQHaEK&pid=Api&P=0&h=180"))
              ),

            ),
            Positioned(child: Icon(Icons.sim_card_outlined),
            left: 100,
            top: 430),
            Positioned(
              left: 100,
              top: 400,
              child: Text(
                  "Debit Card ",
                  style: GoogleFonts.abel(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
              ),
            ),
            Positioned(
              left: 260,
              top: 400,
              child: Text("Bank Name",
                style: GoogleFonts.abel(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),

              ),

            ),
            Positioned(
              top: 470,
              left: 100,
              child: Text("1234 5678 9023 4567",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),
              ),
            ),
            Positioned(
              top: 500,
              left: 250,
              child: Text("VALID THRU 01/06",
                style: GoogleFonts.abel(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),),
            ),
            Positioned(
              top: 520,
              left: 100,
              child: Text("Card Holder Name",
                  style: GoogleFonts.abel(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ),
            Positioned(
              top: 520,
              left: 300,
              child: Text("VISA",
                  style: GoogleFonts.sahitya(
                  fontSize: 20,
                  fontStyle:FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
