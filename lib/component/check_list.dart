import 'package:flutter/material.dart';

class CustomCheckboxWidget extends StatelessWidget {
  const CustomCheckboxWidget({
    super.key,
    required this.value,
    required this.onChanged,
  });
  final Function(bool? p0)? onChanged;
  final bool value;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        checkboxTheme: const CheckboxThemeData(
          fillColor: MaterialStatePropertyAll<Color?>(
            Colors.transparent,
          ),
          checkColor: MaterialStatePropertyAll<Color?>(
            Colors.white,
          ),
        ),
      ),
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(2),
          border: Border.all(
            color: Colors.white,
          ),
        ),
        child: Checkbox(
          value: value,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
