import 'package:chronos/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../models/data_model.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.watchesModel});
  final WatchesModel watchesModel;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _currentColorIndex = 0;

  @override
  Widget build(BuildContext context) {
    final colorOptions = widget.watchesModel.colorOptions;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 75,
            color: colorOptions[_currentColorIndex].color,
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 8, top: 16),
                  child: BackButton(
                    color: AppColors.backgroundColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 500,
            child: PageView.builder(
              itemCount: colorOptions[_currentColorIndex].images.length,
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  padding: const EdgeInsets.all(40),
                  color: colorOptions[_currentColorIndex].color,
                  child: Image.asset(
                    colorOptions[_currentColorIndex].images[index],
                    fit: BoxFit.cover,
                  ),
                );
              },
              onPageChanged: (index) {
                setState(() {});
              },
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.watchesModel.name,
                  style: const TextStyle(
                      fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: AppColors.tagColor,
                    ),
                    Text(
                      " ${widget.watchesModel.rating.toString()}/5.0  (${widget.watchesModel.reviews} Reviews)",
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                const Text(
                  "Colors",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                colorsList(colorOptions),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Price:",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: AppColors.primaryColor.withOpacity(.5),
                              fontSize: 16),
                        ),
                        Text(
                          "\$${widget.watchesModel.price.toString()}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 36),
                        ),
                      ],
                    ),
                    Container( 
                      height: 60,
                      color: AppColors.tagColor,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      child: Center(
                        child: Text(
                          "Add To Cart",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColors.backgroundColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row colorsList(List<ColorOption> colorOptions) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                  colorOptions.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentColorIndex = index;
                        });
                      },
                      child: CircleAvatar(
                        radius: 16,
                        backgroundColor: _currentColorIndex == index
                            ? colorOptions[index].color
                            : AppColors.backgroundColor,
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: AppColors.backgroundColor,
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: CircleAvatar(
                              backgroundColor: colorOptions[index].color,
                              radius: 13,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
  }
}
