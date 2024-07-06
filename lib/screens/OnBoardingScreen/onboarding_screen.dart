import 'package:assignment_four/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _sliderNumber = 0;
  List todoHeadings = [
    'Without much worry just manage \n things as easy as piece of cake',
    'Get Things Done, Seamlessly',
    'Manage Your Day, Effortlessly'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0XFF8A9DFF),
      body: Column(children: [
        const Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: Text(
            'Manage Your \n Daily TO DO',
            style: TextStyle(
                fontSize: 30.0, fontWeight: FontWeight.w500, height: 1.5),
          ),
        ),
        SizedBox(
          height: 500.0,
          width: double.infinity,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: Image.asset(
                      './assets/images/OnBoardingImage.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Container(
                          height: 18.0,
                          width: 56.0,
                          decoration: BoxDecoration(
                              color: _sliderNumber == 0
                                  ? const Color(0XFFFFC727)
                                  : const Color(0XFFFCD873),
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(15.0))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Container(
                          height: 18.0,
                          width: 56.0,
                          decoration: BoxDecoration(
                              color: _sliderNumber == 1
                                  ? const Color(0XFFFFC727)
                                  : const Color(0XFFFCD873),
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(15.0))),
                        ),
                      ),
                      Container(
                        height: 18.0,
                        width: 56.0,
                        decoration: BoxDecoration(
                            color: _sliderNumber == 2
                                ? const Color(0XFFFFC727)
                                : const Color(0XFFFCD873),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15.0))),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    todoHeadings[_sliderNumber].toString(),
                    style: const TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w300,
                        height: 1.2),
                  ),
                ],
              );
            },
            itemCount: 3,
            onPageChanged: (index) {
              setState(() {
                _sliderNumber = index;
              });
            },
          ),
        ),
        const SizedBox(
          height: 40.0,
        ),
        RoundedButton(
            padding: 8.0,
            height: 38.0,
            width: 232.0,
            buttonColor: const Color(0XFFFFC00E),
            buttonText: _sliderNumber == 2 ? 'Create Note' : 'Next',
            onPressed: () {
              _sliderNumber == 2
                  ? print('hiiii Kamran')
                  : setState(() {
                      _sliderNumber < 2 ? _sliderNumber++ : '';
                    });
            },
            buttonTextColor: Colors.black)
      ]),
    ));
  }
}
