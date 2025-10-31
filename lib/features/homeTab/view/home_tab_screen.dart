import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shopping_app/generated/l10n.dart';
import 'package:furniture_shopping_app/ui/responsive/responsive.dart';
import 'package:provider/provider.dart';

import '../widgets/widgets.dart';

@RoutePage()
class HomeTabScreen extends StatelessWidget {
  const HomeTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final r = Provider.of<Responsive>(context);
    return SafeArea(
      right: false,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('images/lupa.svg'),
                Column(
                  children: [
                    Text(
                      S.of(context).makeHome,
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                            fontSize: 18,
                            color: Color(0xff909090),
                          ),
                    ),
                    Text(
                      S.of(context).beautiful,
                      style: Theme.of(context).textTheme.displayLarge!
                          .copyWith(fontSize: 18),
                    ),
                  ],
                ),
                SvgPicture.asset('images/cart.svg'),
              ],
            ),
          ),
          SizedBox(height: r.hp(20)),

          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: SizedBox(
              height: r.hp(68),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (index, _) {
                  return CategoryButton(
                    selected: true,
                    pathToIamge: 'images/star.svg',
                    categoryName: S.of(context).popular,
                  );
                },
                separatorBuilder: (index, context) =>
                    SizedBox(width: 25),
                itemCount: 10,
              ),
            ),
          ),

          SizedBox(height: r.hp(20)),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: GridView.builder(
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: r.wp(157) / r.hp(253),
                      crossAxisCount: 2, // количество колонок
                      crossAxisSpacing: r.wp(
                        20,
                      ), // расстояние между колонками
                      mainAxisSpacing: r.wp(
                        15,
                      ), // расстояние между строками
                    ),
                itemBuilder: (context, index) {
                  return ProductCart(
                    pathToIamge: 'images/lamp.png',
                    name: S.of(context).blackSimpleLamp,
                    price: 10.00,
                    onTap: () {},
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
