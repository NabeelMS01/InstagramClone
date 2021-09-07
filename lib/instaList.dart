import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
          : Container(
              width: deviceSize.width * 1.1,
              height: deviceSize.height * 0.7,
              child: Column(
                children: [
                  //1st row
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 8, 16),
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
                      title: Text(
                        "Tommy",
                        style: TextStyle(fontFamily: "roboto"),
                      ),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert,
                          )),
                    ),
                  ),
                  //2nd row
                  Flexible(
                    fit: FlexFit.tight,
                    child: Image.network(
                      "https://images.unsplash.com/photo-1467003909585-2f8a72700288?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
                      fit: BoxFit.cover,
                    ),
                  ),
                  //3rd row

                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(FontAwesomeIcons.heart),
                        SizedBox(
                          width: 18,
                        ),
                        Icon(FontAwesomeIcons.comment),
                        SizedBox(
                          width: 18,
                        ),
                        Icon(FontAwesomeIcons.paperPlane),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //4th row

                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Row(
                      children: [
                        Text(
                          "Liked by ",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              fontFamily: "roboto"),
                        ),
                        Text(
                          "Amy kuriyan,Raj and 5200 others ",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              fontFamily: "roboto"),
                        ),
                      ],
                    ),
                  ),
                  //5th Row

                  ListTile(
                      leading: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHBlb3BsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"))),
                      ),
                      title: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Add a comment..."),
                      )),
                  Container(height: 30,
                    padding: EdgeInsets.only(left: 16,),
                    child: ListTile(
                      leading: Text("1 day ago"),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
