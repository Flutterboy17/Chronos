import 'package:chronos/utils/app_colors.dart';
import 'package:flutter/material.dart';

class WatchesModel {
  final String name;
  final String desc;
  final List<ColorOption> colorOptions;
  final double rating;
  final int reviews;
  final int price;

  WatchesModel({
    required this.name,
    required this.desc,
    required this.colorOptions,
    required this.reviews,
    required this.rating,
    required this.price,
  });
}

class ColorOption {
  final Color color;
  final List<String> images;

  ColorOption({required this.color, required this.images});
}

List<WatchesModel> data = [
  WatchesModel(
      name: "Tommy Hilfiger",
      desc: desc,
      price: 299,
      colorOptions: [
        ColorOption(
          color: AppColors.tommy_hilfiger_1,
          images: [
            "assets/images/Tommy-Hilfiger-1.png",
            "assets/images/Tommy-Hilfiger-2.png",
            "assets/images/Tommy-Hilfiger-3.png"
          ],
        ),
        ColorOption(
          color: AppColors.tommy_hilfiger_2,
          images: [
            "assets/images/Tommy-Hilfiger-4.png",
            "assets/images/Tommy-Hilfiger-5.png",
            "assets/images/Tommy-Hilfiger-6.png"
          ],
        ),
        ColorOption(
          color: AppColors.tommy_hilfiger_3,
          images: [
            "assets/images/Tommy-Hilfiger-7.png",
            "assets/images/Tommy-Hilfiger-8.png",
            "assets/images/Tommy-Hilfiger-9.png"
          ],
        ),
        ColorOption(
          color: AppColors.tommy_hilfiger_4,
          images: [
            "assets/images/Tommy-Hilfiger-10.png",
            "assets/images/Tommy_Hilfiger-11.png",
            "assets/images/Tommy-Hilfiger-12.png"
          ],
        ),
      ],
      rating: 4.9,
      reviews: 169),
  WatchesModel(
      name: "Calvin Klein",
      desc: desc,
      price: 299,
      colorOptions: [
        ColorOption(
          color: AppColors.calvin_klein_1,
          images: [
            "assets/images/Calvin_Klein-1.png",
            "assets/images/Calvin_Klein-2.png",
            "assets/images/Calvin_Klein-3.png",
          ],
        ),
        ColorOption(
          color: AppColors.calvin_klein_2,
          images: [
            "assets/images/Calvin_Klein-4.png",
            "assets/images/Calvin_Klein-5.png",
            "assets/images/Calvin_Klein-6.png",
          ],
        ),
        ColorOption(
          color: AppColors.calvin_klein_3,
          images: [
            "assets/images/Calvin_Klein-7.png",
            "assets/images/Calvin_Klein-8.png",
            "assets/images/Calvin_Klein-9.png",
          ],
        )
      ],
      rating: 4.8,
      reviews: 142),
  WatchesModel(
      name: "Edox Watch",
      desc: desc,
      price: 299,
      colorOptions: [
        ColorOption(
          color: AppColors.edox_watch_1,
          images: [
            "assets/images/Edox_Watch-1.png",
          ],
        ),
        ColorOption(
          color: AppColors.edox_watch_2,
          images: [
            "assets/images/Edox_Watch-2.png",
            "assets/images/Edox_Watch-3.png"
                "assets/images/Edox_Watch-4.png"
          ],
        ),
        ColorOption(color: AppColors.edox_watch_3, images: [
          "assets/images/Edox_Watch-5.png"
              "assets/images/Edox_Watch-6.png"
              "assets/images/Edox_Watch-7.png"
        ]),
      ],
      rating: 4.6,
      reviews: 99),
  WatchesModel(
      name: "Breitling Watch",
      desc: desc,
      price: 299,
      colorOptions: [
        ColorOption(
          color: AppColors.breitling_watch_1,
          images: [
            "assets/images/Breitling_Watch-1.png",
            "assets/images/Breitling_Watch-2.png",
            "assets/images/Breitling_Watch-3.png",
          ],
        ),
        ColorOption(
          color: AppColors.breitling_watch_2,
          images: [
            "assets/images/Breitling_Watch-4.png",
            "assets/images/Breitling_Watch-5.png",
            "assets/images/Breitling_Watch-6.png",
          ],
        ),
        ColorOption(
          color: AppColors.breitling_watch_3,
          images: [
            "assets/images/Breitling_Watch-7.png",
            "assets/images/Breitling_Watch-8.png",
            "assets/images/Breitling_Watch-9.png",
          ],
        ),
        ColorOption(
          color: AppColors.breitling_watch_4,
          images: [
            "assets/images/Breitling_Watch-10.png",
            "assets/images/Breitling_Watch-11.png",
            "assets/images/Breitling_Watch-12.png",
          ],
        ),
      ],
      rating: 4.7,
      reviews: 148),
  WatchesModel(
      name: "Klein",
      desc: desc,
      price: 299,
      colorOptions: [
        ColorOption(
          color: AppColors.calvin_klein_1,
          images: [
            "assets/images/Gc-1.png",
            "assets/images/Gc-2.png",
            "assets/images/Gc-3.png",
          ],
        ),
        ColorOption(
          color: AppColors.klein_2,
          images: [
            "assets/images/Gc-4.png",
            "assets/images/Gc-5.png",
            "assets/images/Gc-6.png",
          ],
        ),
      ],
      rating: 4.8,
      reviews: 164),
];

String desc =
    "Tempor culpa eu ipsum esse dolore minim deserunt veniam labore et in reprehenderit minim. Nulla culpa voluptate Lorem exercitation cupidatat reprehenderit ipsum cillum anim commodo labore. Nisi officia quis et cupidatat sunt amet do eiusmod sunt eiusmod. Deserunt dolore fugiat eu consequat. Eiusmod nostrud sit minim amet eiusmod ex sint. Proident et magna commodo velit commodo laboris consectetur mollit sunt. Pariatur consequat esse nostrud commodo esse occaecat non.";

class CollectionItem {
  String title;
  String imageUrl;
  String size;
  int price;

  CollectionItem(
      {required this.title,
      required this.imageUrl,
      required this.size,
      required this.price});
}

List<CollectionItem> collectionData = [
  CollectionItem(
      title: "Timex Analog",
      imageUrl: "assets/images/timex.png",
      size: "Black, Size L",
      price: 79),
  CollectionItem(
      title: "Lacoste Quartz",
      imageUrl: "assets/images/lacoste.png",
      size: "Black, Size L",
      price: 92),
];
