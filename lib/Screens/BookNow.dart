import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentacar/Screens/Steps/StepFour.dart';

import 'package:rentacar/Screens/Steps/StepOne.dart';
import 'package:rentacar/Screens/Steps/StepThree.dart';
import 'package:rentacar/Screens/Steps/StepTwo.dart';

class BookNow extends StatefulWidget {
  const BookNow({Key? key}) : super(key: key);

  @override
  State<BookNow> createState() => _BookNowState();
}

class _BookNowState extends State<BookNow> {
  int _index = 0;
  late TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690),minTextAdapt: true);


    return SafeArea(

      child: Scaffold(

        appBar: AppBar(title: Text("Book Easy Four Steps"),),
        body:  Stepper(
          currentStep: _index,
          elevation: 0,
          controlsBuilder:
              (BuildContext context, ControlsDetails details) {
            return Row(
              children:  [
                // TextButton(
                //   onPressed: details.onStepContinue,
                //   child: Text('Continue to Step ${details.stepIndex + 1}'),
                // ),
                // TextButton(
                //   onPressed: details.onStepCancel,
                //   child: Text('Back to Step ${details.stepIndex - 1}'),
                // ),
              ],
            );
          },

          // onStepCancel: () {
          //   if (_index > 0) {
          //     setState(() {
          //       _index -= 1;
          //     });
          //   }
          // },
          // onStepContinue: () {
          //   if (_index <= 0) {
          //     setState(() {
          //       _index += 1;
          //     });
          //   }
          // },
          onStepTapped: (int index) {
            setState(() {
              _index = index;
            });
          },
          steps: <Step>[
           StepOne(context),
           StepTwo(context),
            StepThree(context),
            StepFour(context)

          ],
        ),
      ),
    );

  }




}
