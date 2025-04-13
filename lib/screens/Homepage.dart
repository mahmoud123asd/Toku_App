import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:toku/components/category_item.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 6.w,
          ),
        ),
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            color: const Color(0xffEF9235),
            onTap: () {
              Navigator.of(context).pushNamed("numbers");
            },
          ),
          Category(
            text: 'FamilyMembers',
            color: const Color(0xff558B37),
            onTap: () {
              Navigator.of(context).pushNamed("family");
            },
          ),
          Category(
            text: 'Colors',
            color: const Color(0xff79359F),
            onTap: () {
              Navigator.of(context).pushNamed("colors");
            },
          ),
          Category(
            text: 'Phrases',
            color: const Color(0xff50ADC7),
            onTap: () {
              Navigator.of(context).pushNamed("phrases");
            },
          ),
        ],
      ),
    );
  }
}
