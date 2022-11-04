import 'package:atmo_comet_ad/Widget/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Logo
              Container(
                margin: const EdgeInsets.only(left: 17, bottom: 80, top: 50),
                height: 40,
                child: Image.asset("assets/logo/LOGOICON.png"),
              ),

              //Enter verification text
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Enter verification code',
                          style: Theme.of(context)
                              .textTheme
                              .headline1
                              ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text:
                                      'Please enter the 4 digit code sent to ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5
                                      ?.copyWith(color: Colors.grey)),
                              TextSpan(
                                  text: '+971 50 123 4567',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5
                                      ?.copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //pinput field
              Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 20, top: 50),
                  child: Column(
                    children: [
                      Pinput(
                        onCompleted: (v) {
                          // Navigator.pushNamed(context, RoutHelper().pagesRoute);
                        },
                        preFilledWidget: const Text(
                          "-",
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        defaultPinTheme: defaultPinTheme,
                        focusedPinTheme: focusedPinTheme,
                        submittedPinTheme: submittedPinTheme,
                        showCursor: false,
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      //Resend Code text
                      Padding(
                        padding: const EdgeInsets.only(right: 10, left: 19,top: 15),
                        child: Column(
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                      text: 'Didn’t recieve a code? ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          ?.copyWith(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w400)),
                                  TextSpan(
                                      text: 'Resend SMS',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          ?.copyWith(
                                              color: Theme.of(context)
                                                  .primaryColor)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),

              const SizedBox(
                height: 290,
              ),
              //Verify button
              Container(
                margin: const EdgeInsets.all(20),
                child: CustomeButton(
                  text: "Verify",
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //Bottom Image
            ],
          ),
        ],
      ),
    );
  }
}



final defaultPinTheme = PinTheme(
  width: 56,
  height: 56,
  textStyle: const TextStyle(
      fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
  decoration: BoxDecoration(
    color: Colors.white,
    border: Border.all(color: Colors.grey),
    borderRadius: BorderRadius.circular(2),
  ),
);

//select feature
final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  border: Border.all(color: Colors.black, width: 2),
  borderRadius: BorderRadius.circular(2),
  color: Colors.white30, //select inside color
);

final submittedPinTheme = defaultPinTheme.copyWith(
  decoration: defaultPinTheme.decoration!.copyWith(
    color: Colors.blue,
  ),
);
