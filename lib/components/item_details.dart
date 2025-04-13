import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:toku/models/item.dart';

class ItemDetails extends StatelessWidget {
  final ItemModel item;
  const ItemDetails({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 4.44.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.jpName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 3.7.w,
                ),
              ),
              Text(
                item.enName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 3.7.w,
                ),
              ),
            ],
          ),
        ),
        Spacer(
          flex: 1,
        ),
        IconButton(
            enableFeedback: true,
            onPressed: () {
              item.playSound();
            },
            icon: Icon(
              Icons.play_arrow,
              size: 8.w,
              color: Colors.white,
            ))
      ],
    );
  }
}
