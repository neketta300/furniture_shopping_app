import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../ui/theme/theme.dart';

class BottomAppBarButton extends StatelessWidget {
  const BottomAppBarButton({
    super.key,
    required this.pathToIcon,
    this.isSelected = false,
    this.onTap,
  });

  final String pathToIcon;
  final void Function()? onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        pathToIcon,
        colorFilter: isSelected
            ? const ColorFilter.mode(primaryColor, BlendMode.srcIn)
            : null,
      ),
    );
  }
}
