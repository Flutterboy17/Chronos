import 'package:flutter/material.dart';
import '../models/data_model.dart';
import '../routes.dart';
import '../utils/app_colors.dart';
import 'detail_page.dart';

class BodyContent extends StatelessWidget {
  const BodyContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context, index) {
          final info = data[index];
          final color = info.colorOptions[0].color;
          final img = info.colorOptions[0].images[0];
          final txt = info.name;
          final price = info.price;
    
          return Stack(children: [
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  SlideNavigation(DetailPage(
                    watchesModel: info,
                  ))),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.5,
                margin: EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                  color: color,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 12, right: 12, top: 24, bottom: 4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Image.asset(
                        img,
                        height: 250,
                        width: 250,
                      ),
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Price:",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: AppColors.backgroundColor
                                        .withOpacity(.6),
                                    fontSize: 16),
                              ),
                              Text(
                                "\$${price.toString()}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.backgroundColor,
                                    fontSize: 24),
                              ),
                            ],
                          ),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                              color: AppColors.backgroundColor,
                            ),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "ADD TO CART",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13),
                              ),
                            )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 12,
              left: 0,
              child: Container(
                height: 40,
                decoration: BoxDecoration(color: AppColors.tagColor),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 12, top: 8, bottom: 8, right: 14),
                  child: Text(
                    txt,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColors.backgroundColor,
                        fontSize: 18),
                  ),
                ),
              ),
            ),
          ]);
        },
      ),
    );
  }
}
