import 'package:flutter/material.dart';
import 'package:travel_app/place_model.dart';
import 'package:travel_app/screens/DetailsPage/details_page.dart';

class ItemCard extends StatelessWidget {
  final PlaceDetails placeDetails;
  final VoidCallback press;

  const ItemCard({Key? key, required this.placeDetails, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(right: 14),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: SizedBox(
                height: 190,
                width: 160,
                child: Image.asset(
                  placeDetails.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 180,
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  /*Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey),
                    child: Center(child: Text(placeDetails.title),),
                  )*/
                  Chip(
                      backgroundColor: Colors.grey,
                      label: Text(
                        placeDetails.title,
                        style: const TextStyle(color: Colors.white),
                      )),
                  Row(
                    children: [
                      Chip(
                          backgroundColor: Colors.grey,
                          label: Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              Text(
                                "${placeDetails.rating}",
                                style: const TextStyle(color: Colors.white),
                              ),
                            ],
                          )
                      ),

                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
