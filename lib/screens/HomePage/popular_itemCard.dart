import 'package:flutter/material.dart';
import 'package:travel_app/place_model.dart';
import 'package:travel_app/screens/DetailsPage/details_page.dart';

class PopularItemCard extends StatelessWidget {
  final PlaceDetails placeDetails;
  final VoidCallback press;

  const PopularItemCard({Key? key, required this.placeDetails, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: 14),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Container(
              height:135,
              width: 220,
              child: Image.asset(
                placeDetails.image,
                fit: BoxFit.cover,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
