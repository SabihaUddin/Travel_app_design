import 'package:flutter/material.dart';
import 'package:travel_app/screens/DetailsPage/details_page.dart';
import 'package:travel_app/screens/HomePage/Constant/categories.dart';
import 'package:travel_app/screens/HomePage/Constant/item_card.dart';
import 'package:travel_app/place_model.dart';
import 'package:travel_app/screens/HomePage/popular_itemCard.dart';
import '../../place_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child:Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(icon: Icon(Icons.home_outlined), onPressed: () {}),
              IconButton(icon: Icon(Icons.bookmark), onPressed: () {}),
              IconButton(icon: Icon(Icons.favorite_outline), onPressed: () {}),
              IconButton(icon: Icon(Icons.person_outline), onPressed: () {}),
            ],
          ),
        ),),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Explore',style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.blue,
                    ),
                    const Text(
                      'Aspen,USA',
                      style: TextStyle(color: Colors.blue),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_drop_down_outlined,
                          color: Colors.blue,
                        ))
                  ],
                )
              ],
            ),
            const Text(
              'Aspen',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                    borderSide: BorderSide(color: Colors.white)
                ),
                filled: true,
                fillColor: Colors.lightBlueAccent.withOpacity(.1),
                prefixIcon: const Icon(Icons.search),
                hintText: 'find things to do',
                contentPadding: const EdgeInsets.all(6),
              ),
            ),
            const SizedBox(height: 15,),
            const Categories(),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Popular', style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),),
                  Text('See all',
                      style: TextStyle(fontSize: 13, color: Colors.blue)),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            SizedBox(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: placeDetails.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ItemCard(placeDetails: placeDetails[index],
                      press: () =>
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => DetailsPage(placeDetails: placeDetails[index],))),
                    );
                  }),
            ),
            const Text('Recommended',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),
            SizedBox(
              height: 140,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: placeDetails.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return PopularItemCard(placeDetails: placeDetails[index],
                      press: () =>
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => DetailsPage(placeDetails: placeDetails[index],))),
                    );
                  }),
            ),

          ],
        ),
      ),
    );
  }
}
