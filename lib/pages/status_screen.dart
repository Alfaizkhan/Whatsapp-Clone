import 'package:flutter/material.dart';

import 'store_page_view.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255,16, 29, 37),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            color: Color.fromARGB(255,16, 29, 37),
            elevation: 0.0,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8, top: 8),
              child: ListTile(
                leading: Stack(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://avatars3.githubusercontent.com/u/33489180?s=460&u=54977507292374ac476405a5d1fc04da8e898a09&v=4"),
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 1.0,
                      child: Container(
                        height: 20,
                        width: 20,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                  ],
                ),
                title: Text(
                  "My Status",
                  style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
                ),
                subtitle: Text("Tap to add status update", style: TextStyle( color: Colors.white),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8, left: 16, top: 8),
            child: Text(
              "Recent updates",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: Color.fromARGB(255,16, 29, 37),
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://lh3.googleusercontent.com/qcw6zcSxIwH3WaZYkA8hBUnYnevsWthQEMXttVETY7LkzI231wkBZrbNhSQvVE_vVR12"),
                    ),
                    title: Text(
                      "Kashyap Patel",
                      style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
                    ),
                    subtitle: Text("Today, 20:16 PM", style: TextStyle(fontSize: 12 ,color: Colors.white),),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StoryPageView())),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
