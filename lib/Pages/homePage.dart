import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final topBar = AppBar(
    backgroundColor: Color(0xff8faf8),
    centerTitle: false,
    elevation: 0,
    title: Image.asset(
      "assets/logo/PngItem_1327993.png",
      width: 100,
    ),
    actions: [
      Container(
        width: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/icons/Addicon.png",
              width: 25,
            ),
            Image.asset(
              "assets/icons/messenger.png",
              width: 25,
            )
          ],
        ),
      ),
      SizedBox(
        width: 15,
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      bottomNavigationBar: Container(
        height: 50,
        child: BottomAppBar(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home_filled),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: Container(
                  child: Image.asset(
                    "assets/icons/instagram-reels.png",
                    width: 20,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border),
              ),
              IconButton(
                onPressed: () {},
                icon: Container(width: 60,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(500),
                    border: Border.all(color: Colors.black)
                  ),

                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(200),
                    child: Image.asset(
                      "assets/profiles/tommy.jpg",
                      fit: BoxFit.contain,
                      width: 60,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
