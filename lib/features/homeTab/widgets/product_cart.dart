import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../ui/responsive/responsive.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({
    super.key,
    required this.pathToIamge,
    required this.name,
    required this.price,
    required this.onTap,
  });

  final String pathToIamge;
  final String name;
  final double price;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final r = Provider.of<Responsive>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(10),
              child: Image.asset(pathToIamge),
            ),
            Positioned(
              right: 10,
              bottom: 10,
              child: GestureDetector(
                onTap: () => onTap,
                child: SvgPicture.asset('images/addToCart.svg'),
              ),
            ),
          ],
        ),

        SizedBox(height: r.hp(10)),

        Text(
          name,
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
            fontWeight: FontWeight.normal,
            fontSize: 14,
            color: Color(0xff606060),
          ),
        ),

        SizedBox(height: r.hp(5)),

        Text(
          '12.00',
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Color(0xff303030),
          ),
        ),
      ],
    );
  }
}
