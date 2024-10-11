import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import '/../preferences/preferences.dart';
import '../models/product_model.dart';

part 'section/header_section.dart';
part 'section/search_section.dart';
part 'section/content_section.dart';
part 'section/carousel_section.dart';
part 'section/detail_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  final List<String> categories = ["All", "Activity", "Apparel", "Footwear", "More"];
  List<Widget> categoryContents = const [
    All(),
    Activity(),
    Apparel(),
    Footwear(),
    SizedBox(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
          children: [
            const _HeaderSection(),
            const SizedBox(height: 10),
            const _SearchSection(),
            const SizedBox(height: 20),
            SizedBox(
              height: 100.0, // Height of the category bar
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                separatorBuilder: (context, index) => const SizedBox(width: 23.0),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      if (categories[index] == "More") {
                        // Navigate to another page
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MorePage()),
                        );
                      } else {
                        setState(() {
                          selectedIndex = index;
                        });
                      }
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 56,
                          height: 56,
                          decoration: BoxDecoration(
                            color: selectedIndex == index ? AppColor.primaryColor : const Color(0xfff6f6f6),
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                _getIconForCategory(index),
                                color: selectedIndex == index ? Colors.white : Colors.black,
                              ),

                            ],
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          categories[index],
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColor.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 15.0),
            Expanded(
              child: categoryContents[selectedIndex],
            ),
            const SizedBox(height: 25.0)
          ],
      ),
        );
  }
}

IconData _getIconForCategory(int index) {
  switch (index) {
    case 0:
      return AppIcon.all; // Icon for "All"
    case 1:
      return AppIcon.activity; // Icon for "Activity"
    case 2:
      return AppIcon.apparel; // Icon for "Apparel"
    case 3:
      return AppIcon.footwear; // Icon for "Footwear"
    case 4:
      return Icons.more_horiz; // Icon for "More"
    default:
      return Icons.category;
  }
}




