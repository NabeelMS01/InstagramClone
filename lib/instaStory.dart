

import 'package:flutter/material.dart';

class InstaStory extends StatelessWidget {
  final stories = Expanded(
    child: Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListView.builder(scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) => Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
                width: 60,
                height: 60,
                margin: EdgeInsets.only(right: 6),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80",
                    ),
                  ),
                )),
            index == 0
                ? Positioned(
                    right: 10,
                    child: CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      radius: 10,
                      child: Icon(
                        Icons.add,
                        size: 14,
                        color: Colors.white,
                      ),
                    ))
                : Container()
          ],
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          stories,
        ],
      ),
    );
  }
}
