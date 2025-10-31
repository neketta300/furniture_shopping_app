import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/generated/l10n.dart';
import 'package:furniture_shopping_app/ui/theme/theme.dart';
import 'package:provider/provider.dart';

import '../../../ui/responsive/responsive.dart';

@RoutePage()
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final r = Provider.of<Responsive>(context);
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: r.width,
            height: r.height,
            child: Image.asset(
              'images/onboarding_screen.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Text(
                  S.of(context).makeYour,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                SizedBox(height: r.hp(16)),
                Text(
                  S.of(context).homeBeautiful,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(height: r.hp(34)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: r.wp(29)),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      S.of(context).theBestSimplePlace,
                      textAlign: TextAlign.justify,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ),
                ),
                SizedBox(height: r.hp(154)),
                Center(
                  child: GestureDetector(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: r.wp(28),
                        vertical: r.hp(16),
                      ),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        S.of(context).getStarted,
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
