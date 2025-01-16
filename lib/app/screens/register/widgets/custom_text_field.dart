// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:learning_app/app/widgets/my_sized_box.dart';

import '../../../../core/utils/colors.dart';

class CustomTextField extends StatefulWidget {
  final String title;
  final String hintText;
  final IconData icon;
  final TextInputType keyboardType;
  final bool obscure;
  final bool enabled;
  const CustomTextField({
    super.key,
    required this.title,
    required this.hintText,
    required this.icon,
    required this.keyboardType,
    this.obscure = false,
    this.enabled = false,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _isObscure;

  @override
  void initState() {
    super.initState();
    _isObscure = widget.obscure;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: primaryColor.withOpacity(0.7),
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
        ),
        mySizedBox(height: 5),
        TextFormField(
          keyboardType: widget.keyboardType,
          obscureText: _isObscure,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey.shade200,
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            prefixIcon: Icon(widget.icon),
            prefixIconColor: primaryColor,
            suffixIcon: widget.enabled
                ? IconButton(
                    onPressed: () {
                      setState(
                        () {
                          _isObscure = !_isObscure;
                        },
                      );
                    },
                    icon: _isObscure
                        ? Icon(Icons.visibility_off_outlined)
                        : Icon(Icons.visibility_outlined),
                    color: primaryColor,
                  )
                : null,
            hintText: widget.hintText,
            hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: primaryColor.withOpacity(0.7),
                  fontWeight: FontWeight.w500,
                  fontSize: 19,
                ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
