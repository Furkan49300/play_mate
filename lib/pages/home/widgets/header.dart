import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(
        top:MediaQuery.of(context).padding.top,
        left:25,
        right:25
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text(
                "Bienvenue",
                style: GoogleFonts.manrope(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                )),
            SizedBox(height:5),
            Text(
                "On fait quoi ce week-end ?",
                style:
                GoogleFonts.manrope(
                    fontSize: 19,
                    color: Colors.white,
                ))

          ],
        ),
        CircleAvatar(
          child: Image.asset('assets/images/avatar.png',
          fit: BoxFit.cover)
        )
        ]),
    );
  }
}
