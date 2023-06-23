import 'package:flutter/material.dart';
import 'package:pokedex/presentation/app_colors.dart';
import 'package:pokedex/presentation/widgets/icons/app_icons.dart';

class AppTextField extends StatelessWidget {
  final double height;
  final String hintText;
  final TextEditingController controller;
  final Function(String)? onChanged;

  const AppTextField({
    super.key,
    this.height = 46,
    required this.controller,
    required this.onChanged,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: height,
      width: size.width,
      child: Center(
        child: TextFormField(
          onChanged: onChanged,
          controller: controller,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: AppColors.darkColor,
          ),
          cursorColor: AppColors.darkColor,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 0),
            hintText: hintText,
            counterStyle: const TextStyle(
              height: double.minPositive,
            ),
            hintStyle: const TextStyle(
              fontSize: 13,
              color: AppColors.mediumColor,
            ),
            prefixIcon: SizedBox(
              height: 20,
              width: 20,
              child: Center(
                child: AppIcons.searchIcon(
                  size: 20,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: AppColors.primaryColor,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: AppColors.primaryColor,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            filled: true,
            fillColor: AppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
