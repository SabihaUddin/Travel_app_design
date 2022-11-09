import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Explore',
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
             Text(
              'Aspen',
              style: TextStyle(fontSize: 20),
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
                fillColor: Colors.grey.withOpacity(.2),
                prefixIcon: const Icon(Icons.search),
                hintText: 'find things to do',
                contentPadding: EdgeInsets.all(6),
              ),
            ),
            SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}
