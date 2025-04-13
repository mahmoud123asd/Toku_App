import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:toku/components/item_details.dart';
import 'package:toku/models/item.dart';

class PhraseItem extends StatelessWidget {
  final ItemModel data;
  final Color color;
  const PhraseItem({super.key, required this.data, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: .625.h),
      child:
          Container(height: 12.5.h, color: color, child: ItemDetails(item: data)),
    );
  }
}
