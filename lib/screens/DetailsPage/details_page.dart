import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import '../../place_model.dart';

class DetailsPage extends StatelessWidget {
  final PlaceDetails placeDetails;

  const DetailsPage({Key? key, required this.placeDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 290,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage(placeDetails.image),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: GestureDetector(
                        onTap: ()=>Navigator.pop(context),
                        child: Container(
                          height: 35,
                          width: 35,
                          color: Colors.white,
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: 9),
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          placeDetails.title,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 25),
                        ),
                        const Text(
                          'Show map',
                          style: TextStyle(color: Colors.blue, fontSize: 15,fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "${placeDetails.rating} (355 reviews)",
                          style:
                              const TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    ),
                    ReadMoreText(
                      placeDetails.description,
                      style: TextStyle(height: 1.5, fontSize: 16),
                      trimLines: 3,
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Read More',
                      moreStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Facilities',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 80,
                      child: facilitiesList(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Price',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                            Text(
                              "\$${placeDetails.price}",
                              style: const TextStyle(
                                  fontSize: 25,
                                  color: Colors.greenAccent,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(width: 30,),
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(18),
                            child: Container(
                              height: 50,
                              color: Colors.blue,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 53),
                                child: Row(
                                  children: const [
                                    Text(
                                      'Book Now',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,color: Colors.white),
                                    ),
                                    Icon(Icons.arrow_forward,size: 20,color: Colors.white,)
                                  ],
                                ),
                              ),
                            ),
                          )
                        )
                      ],
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

Widget facilitiesList() {
  final facilitiesItem = ['1 Heater', 'Dinner', '1 Tub', 'Pool', '2 Balcony'];
  final facilitiesIcon = [
    Icons.wifi,
    Icons.dinner_dining,
    Icons.bathtub,
    Icons.pool,
    Icons.balcony
  ];
  return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: facilitiesItem.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(13),
            child: Container(
              height: 80,
              width: 80,
              color: Colors.lightBlueAccent.withOpacity(.1),
              child: Padding(
                padding: const EdgeInsets.only(top: 13),
                child: Column(
                  children: [
                    Icon(
                      facilitiesIcon[index],
                      color: Colors.grey,
                      size: 35,
                    ),
                    Text(
                      facilitiesItem[index],
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      });
}
