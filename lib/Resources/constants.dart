import 'package:flutter/material.dart';
import 'package:teapme/Utils/colors.dart';

InputDecoration textFormDecoration = InputDecoration(
  fillColor: Colors.white,
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(
      color: AppColors.primaryOrange,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(
      color: AppColors.lightGrey,
    ),
  ),
);