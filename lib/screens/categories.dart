import 'package:flutter/material.dart';

import '../services/utils.dart';
import '../widgets/categories_widget.dart';
import '../widgets/text_widget.dart';


class CategoriesScreen extends StatelessWidget {
   CategoriesScreen({Key? key}) : super(key: key);

  List<Color> gridColors = [
    const Color(0xff53B175),
    const Color(0xffF8A44C),
    const Color(0xffF7A593),
    const Color(0xffD3B0E0),
    const Color(0xffFDE598),
    const Color(0xffB7DFF5),
  ];

List<Map<String, dynamic>> catInfo = [
    {
      'imgPath': 'assets/images/cat/trai-cay-co-phan-ra-nong-mat.jpg',
      'catText': 'Fruits',
    },
    {
      'imgPath': 'assets/images/cat/ver.png',
      'catText': 'Vegetables',
    },
    {
      'imgPath': 'assets/images/cat/burger-king-cheeseburger-1666891208.jpg',
      'catText': 'Food',
    },
    {
      'imgPath': 'assets/images/cat/ruou vang.png',
      'catText': 'Ruou',
    },
    {
      'imgPath': 'assets/images/cat/transparent-natural-foods-drink-juice.jpg',
      'catText': 'Drink',
    },
     {
      'imgPath': 'assets/images/cat/pngtree-delicious.jpg',
      'catText': 'canned food',
    },
  ];
  @override
  Widget build(BuildContext context) {

    final utils = Utils(context);
    Color color = utils.color;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: TextWidget(
            text: 'Categories',
            color: color,
            textSize: 24,
            isTitle: true,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 240 / 250,
            crossAxisSpacing: 10, // Vertical spacing
            mainAxisSpacing: 10, // Horizontal spacing 
            children: List.generate(6, (index) {
              return CategoriesWidget(
                catText: catInfo[index]['catText'],
                imgPath: catInfo[index]['imgPath'],
                passedColor: gridColors[index],
              );
            }),
          ),
        ));
  }
}
