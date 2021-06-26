import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';

import '../coolors.dart';

class OnboardingPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            color: Coolors.purplish,
          ),
          Container(
            height: context.percentHeight * 80,
            width: context.screenWidth,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
            ),
            child: VStack(
              [
                SvgPicture.asset(
                  'assets/cleaning.svg',
                  fit: BoxFit.cover,
                ).pOnly(top: 100, bottom: 32),
                'Cleaning on Demand'.text.center.extraBlack.xl3.makeCentered(),
                16.heightBox,
                'Book an appointment in less than 60 seconds and get on the schedule as early as tomorrow.'
                    .text
                    .gray500
                    .medium
                    .center
                    .textStyle(context.captionStyle!)
                    .makeCentered()
                    .p16()
              ],
            ),
          ),
          Positioned(
            child: Container(
              height: context.percentHeight * 15,
              child: VStack(
                [
                  HStack(
                    [
                      VxBox().square(5).gray500.roundedFull.make(),
                      10.widthBox,
                      VxBox().square(8).white.roundedFull.make(),
                      10.widthBox,
                      VxBox().square(5).gray500.roundedFull.make(),
                    ],
                    alignment: MainAxisAlignment.center,
                  ).wFull(context),
                  16.heightBox,
                  Spacer(),
                  ButtonBar(
                    mainAxisSize: MainAxisSize.max,
                    alignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: 'Skip'.text.white.make(),
                      ),
                      [
                        TextButton(
                          onPressed: () {},
                          child: 'Next'.text.white.make(),
                        ).px2(),
                        SvgPicture.asset(
                          'assets/next.svg',
                        ),
                      ].hStack()
                    ],
                  ),
                ],
                alignment: MainAxisAlignment.start,
              ).wFull(context),
            ),
            bottom: 24,
          ),
        ],
      ),
    );
  }
}
