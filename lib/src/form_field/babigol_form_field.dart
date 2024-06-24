import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:babigol/babigol.dart';

class BabigolFormField extends StatelessWidget {
  final String hint;
  final String value;
  final bool? obscure;
  final int? maxLines;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final Widget? prefix;
  final Widget? suffix;
  final TextInputType? keyboardType;
  final TextInputFormatter? inputFormatter;

  const BabigolFormField({
    super.key,
    this.prefix,
    this.suffix,
    this.keyboardType,
    this.onChanged, 
    required this.hint,
    required this.value,
    this.obscure,
    this.validator, 
    this.maxLines, 
    this.inputFormatter,
  });

  @override
  Widget build(BuildContext context) {
    final colors = BabigolColors.of(context);
    final textTheme = Theme.of(context).textTheme;
    return TextFormField(
        obscureText: obscure != null ? obscure! : false,
        keyboardType: keyboardType,
        onChanged: onChanged,
        validator: validator,
        initialValue: value,
        inputFormatters: inputFormatter != null ? [inputFormatter!] : null, 
        style: textTheme.bodyMedium,
        cursorColor: colors.textColor,
        maxLines: maxLines ?? 1,
        decoration: InputDecoration(
          filled: true,
          fillColor: colors.cardColor,
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          prefixIcon: prefix,
          suffixIcon: suffix,
        ),
      );
    //);
  }
}