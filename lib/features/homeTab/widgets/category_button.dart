import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../ui/responsive/responsive.dart';
import '../../../ui/theme/theme.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({
    super.key,
    required this.selected,
    required this.pathToIamge,
    required this.categoryName,
  });
  final bool selected;
  final String pathToIamge;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    final r = Provider.of<Responsive>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: selected ? primaryColor : Color(0xffF5F5F5),
          ),
          padding: EdgeInsets.all(12),
          width: r.wp(44),

          child: SvgPicture.asset(pathToIamge),
        ),
        SizedBox(height: r.hp(5)),
        Text(
          categoryName,
          style: selected
              ? Theme.of(context).textTheme.displaySmall!.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: primaryColor,
                )
              : Theme.of(context).textTheme.displaySmall!.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff999999),
                ),
        ),
      ],
    );
  }
}
