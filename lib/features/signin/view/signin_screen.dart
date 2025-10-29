import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shopping_app/ui/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../generated/l10n.dart';
import '../../../ui/responsive/responsive.dart';
import '../../../ui/widgets/widgets.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final r = Provider.of<Responsive>(context);
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: r.hp(30)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                children: [
                  SizedBox(
                    width: r.wp(105),
                    height: r.hp(1),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffBDBDBD),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                  Spacer(),
                  SizedBox(width: r.wp(20)),
                  SvgPicture.asset(
                    'images/logo.svg',
                    width: r.wp(64),
                  ),
                  SizedBox(width: r.wp(20)),
                  Spacer(),
                  SizedBox(
                    width: r.wp(105),
                    height: r.hp(1),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffBDBDBD),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: r.hp(30)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: r.wp(30)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).hello,
                    style: GoogleFonts.merriweather(
                      fontSize: 30,
                      color: Color(0xff909090),
                    ),
                  ),
                  Text(
                    S.of(context).welcomeBack,
                    style: GoogleFonts.merriweather(
                      fontSize: 24,
                      color: Color(0xff303030),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: r.hp(22)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: r.wp(15)),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(40, 138, 149, 158),
                      blurRadius: r.wp(30),
                      offset: Offset(0, r.wp(7)),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: r.wp(15.0),
                    vertical: r.hp(38),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.of(context).email,
                        style: GoogleFonts.nunitoSans(
                          color: Color(0xff909090),
                        ),
                      ),
                      SignInTextFormField(),
                      SizedBox(height: r.hp(20)),
                      Text(
                        S.of(context).password,
                        style: GoogleFonts.nunitoSans(
                          color: Color(0xff909090),
                        ),
                      ),
                      SignInTextFormField(),
                      SizedBox(height: r.hp(36)),
                      Center(
                        child: Text(
                          S.of(context).forgotPassword,
                          style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(height: r.hp(36)),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(25, 30, 30, 30),
                                blurRadius: r.wp(30),
                                offset: Offset(0, r.wp(10)),
                              ),
                            ],
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(8),
                          ),

                          padding: EdgeInsets.symmetric(
                            horizontal: r.wp(118),
                            vertical: r.hp(12),
                          ),
                          child: Text(
                            S.of(context).logIn,
                            style: GoogleFonts.nunitoSans(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: r.hp(36)),
                      Center(
                        child: Text(
                          S.of(context).signUp,
                          style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
