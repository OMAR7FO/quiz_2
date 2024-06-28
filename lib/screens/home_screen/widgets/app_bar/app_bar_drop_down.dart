import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';

class AppBarDropDownButton extends StatefulWidget {
  const AppBarDropDownButton({
    super.key,
    required this.label,
    required this.icon,
    required this.items,
  });
  final String label;
  final IconData icon;
  final List<DropdownMenuItem<Object>> items;

  @override
  State<AppBarDropDownButton> createState() => _AppBarDropDownButtonState();
}

class _AppBarDropDownButtonState extends State<AppBarDropDownButton> {
  int currentValue = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -3,
          child: Text(
            widget.label,
            style: StyleManager.fontExtraBold11.copyWith(
              color: ColorManager.greyFontColor,
            ),
          ),
        ),
        SizedBox(
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                value: currentValue,
                dropdownColor: ColorManager.primaryColorDark,
                iconSize: 15,
                iconEnabledColor: ColorManager.myWhite,
                padding: EdgeInsets.zero,
                icon: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Icon(
                      widget.icon,
                    ),
                  ),
                ),
                items: widget.items,
                onChanged: (value) {
                  setState(() {
                    currentValue = value as int;
                  });
                }),
          ),
        ),
      ],
    );
  }
}
