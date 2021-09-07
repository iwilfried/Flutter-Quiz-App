import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 30,
              child: Image.asset('assets/images/view.png'),
            ),
            Expanded(child: SizedBox()),
            Text(
              'Accelerated Learning',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontFamily: "Oswald"),
            ),
            Expanded(child: SizedBox()),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            tooltip: "search",
            onPressed: () {},
          ),
          PopupMenuButton<String>(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            onSelected: (value) => value == "info",
            itemBuilder: (BuildContext context) {
              return {'info'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
    );
  }
}
