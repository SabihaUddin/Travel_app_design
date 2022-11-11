
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ['Location', 'Hotels','Food', 'Adventure', 'Price Range'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return buildText(index);
          }),
    );
  }

  Widget buildText(int index) {
    return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child:
          Container(height: 90,
            width:100 ,
            decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),
              color: selectedIndex==index?Colors.lightBlueAccent.withOpacity(.3):Colors.grey.withOpacity(.1),
            ),
            child: Center(
              child: Text(
                categories[index],
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 18),
              ),
            ),
          ),
        ));
  }
}
