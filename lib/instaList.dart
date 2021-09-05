import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/instaStory.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => index == 0
          ? new SizedBox(
              child: InstaStory(),
              height: deviceSize.height * .15,
            )
          : Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 16, 8, 16),
                  child: ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHBlb3BsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"))),
                    ),
                    title: Text("Tommy"),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert,
                        )),
                  ),
                ),
                Container(
                  width:deviceSize.width,
                  height: 300,
                  child: Flexible(
                    fit: FlexFit.loose,
                    child: Image.network(
                        "https://images.unsplash.com/photo-1467003909585-2f8a72700288?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",fit: BoxFit.cover,),
                  ),
                ),
                Row(
                  children: [

                  ],
                )
              ],
            ),
    );
  }
}
