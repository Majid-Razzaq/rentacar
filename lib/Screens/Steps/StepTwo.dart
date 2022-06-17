import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Step StepTwo(context)
{
  TextTheme textTheme=Theme.of(context).textTheme;

  return  Step(
    title:  Text('Drop-Off',style:GoogleFonts.roboto(
        textStyle: textTheme.headline4,
        fontWeight: FontWeight.w500
    ) ,),
    content: Container(
        alignment: Alignment.centerLeft,
        child: const Text('Content for Step 1')),
  );
}