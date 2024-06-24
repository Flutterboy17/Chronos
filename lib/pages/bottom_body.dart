import 'package:chronos/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../models/data_model.dart';

class BottomBody extends StatelessWidget {
  const BottomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: collectionData.length,
      itemBuilder: (context, index) {
        final data = collectionData[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(width: .3),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      data.imageUrl,
                      height: 80,
                      width: 80,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          data.title,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 4),
                        Text(
                          data.size,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: AppColors.primaryColor),
                        )
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Text(
                    "\$${data.price.toString()}",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: AppColors.tagColor),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ));
  }
}
