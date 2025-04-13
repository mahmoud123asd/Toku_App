import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Category extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback? onTap;
  const Category({
    super.key,
    required this.text,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.only(left: 6.7.w),
          alignment: Alignment.centerLeft,
          height: 10.16.h,
          width: double.infinity,
          color: color,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 5.w,
            ),
          )),
    );
  }
}
