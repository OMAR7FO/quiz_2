import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/color_manager.dart';
import 'package:quiz_2/core/utils/style_manager.dart';

class AuthTextField extends StatefulWidget {
  const AuthTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.keyboardType,
    required this.prefixIcon,
    this.isPassword = false,
    this.validator,
  });
  final String hintText;
  final IconData prefixIcon;
  final TextEditingController controller;
  final bool isPassword;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  late bool isVisible;
  @override
  void initState() {
    isVisible = widget.isPassword;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: ColorManager.primaryColorDark,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: isVisible,
      validator: widget.validator,
      decoration: InputDecoration(
        fillColor: ColorManager.whiteGrey,
        filled: true,
        border: InputBorder.none,
        hintText: widget.hintText,
        hintStyle: StyleManager.fontMedium14,
        prefixIcon: Icon(
          widget.prefixIcon,
          color: ColorManager.mediumGrey,
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                icon: Icon(
                  isVisible ? Icons.visibility : Icons.visibility_off,
                  color: ColorManager.mediumGrey,
                ),
              )
            : null,
        enabledBorder: _buildBorder(),
        focusedBorder: _buildBorder(),
        errorBorder: _buildBorder(),
        focusedErrorBorder: _buildBorder(),
      ),
    );
  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide.none,
    );
  }
}
