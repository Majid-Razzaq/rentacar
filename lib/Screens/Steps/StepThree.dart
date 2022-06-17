import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Step StepThree(context)
{
  TextTheme textTheme=Theme.of(context).textTheme;

  return  Step(
    title:  Text('Base Rental',style:GoogleFonts.roboto(
        textStyle: textTheme.headline4,
        fontWeight: FontWeight.w500
    ) ,),
    content: Container(
        alignment: Alignment.centerLeft,
        child: const Text('Content for Step 1')),
  );
}