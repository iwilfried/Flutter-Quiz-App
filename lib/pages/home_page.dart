import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          shape: Border(top: BorderSide(color: Colors.green, width: 3)),
          backgroundColor: Colors.white,
          centerTitle: false,
          titleSpacing: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 30,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset('assets/images/LogoMaster.png'),
              ),
              Expanded(child: SizedBox()),
              FittedBox(
                child: Text(
                  'Accelerated to Learning',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontFamily: "Roboto"),
                ),
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
      ),
    );
  }
}
