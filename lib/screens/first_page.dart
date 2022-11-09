import 'package:flutter/material.dart';
import 'package:travel_app/screens/HomePage/home_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Positioned.fill(
                  child: Image.asset(
                'images/mountain-1.jpg',
                fit: BoxFit.cover,
              )),
              Container(
                height: size.height * .4,
                color: Colors.blue.withOpacity(.3),
                child: const Center(
                  child: Text(
                    'Aspen',
                    style: TextStyle(
                        fontSize: 75,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'TradeWinds'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: size.height * .65),
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text(
                        'Plan your',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      const Text('Luxurious\n' 'Vacation',
                          style: TextStyle(

                              color: Colors.white,
                              fontSize: 35)),
                      SizedBox(
                        width: size.width*.8,
                          child: ElevatedButton(

                              onPressed: () => Navigator.push(
                                  context, MaterialPageRoute(builder:(context)=>const HomePage())),
                          style: ElevatedButton.styleFrom(shape:const StadiumBorder()),
                              child:  const Text('Explore'),),
                        ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
