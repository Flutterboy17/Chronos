import 'package:flutter/material.dart';
import 'package:chronos/utils/app_colors.dart';
import 'body.dart';
import 'bottom_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List<String> categories = ["Popular", "New", "Top", "Favorites"];

  Widget buildCategoryText(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: selectedIndex == index
                    ? AppColors.primaryColor
                    : AppColors.primaryColor.withOpacity(0.5),
              ),
            ),
            SizedBox(height: 4),
            if (selectedIndex == index)
              Container(
                height: 6,
                width: 6,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  shape: BoxShape.circle,
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 12, right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/menu.png',
                      height: 40,
                      width: 40,
                      color: AppColors.primaryColor,
                    ),
                    SizedBox(width: 12),
                    Text(
                      "FINE WATCHES",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        letterSpacing: 1.0,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/icons/search.png',
                  height: 40,
                  width: 40,
                  color: AppColors.primaryColor,
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: List.generate(categories.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: buildCategoryText(index),
                );
              }),
            ),
            SizedBox(height: 20),
            BodyContent(),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Recent Collection",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: AppColors.primaryColor),
                ),
                Row(
                  children: [
                    Text(
                      "All Collections",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: AppColors.primaryColor),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.arrow_forward_rounded,
                      size: 16,
                    )
                  ],
                ), 
              ],
            ),
            SizedBox(
              height: 16,
            ),
            BottomBody()
          ],
        ),
      ),
    );
  }
}
