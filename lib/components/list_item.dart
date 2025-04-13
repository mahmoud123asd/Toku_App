import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:toku/components/item_details.dart';
import 'package:toku/models/item.dart';

class ListItem extends StatelessWidget {
  final ItemModel data;
  final Color color;
  const ListItem({super.key, required this.data, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: .625.h),
        child: Container(
            height: 12.5.h,
            color: color,
            child: Row(children: [
              Container(
                  height: 12.5.h,
                  color: const Color(0xffFFF6DC),
                  child: Image.asset(data.image!)),
              Expanded(child: ItemDetails(item: data))
            ])));
  }
}
