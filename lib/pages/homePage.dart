import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final double nuts = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text('MyApp'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          // verticalDirection:VerticalDirection.up ,
          children: [
            CircleAvatar(
              // backgroundColor: Colors.red,
              backgroundImage: AssetImage('asset/image/diamond.jpg'),
              radius: 50,
              // child: ,
            ),
            Text(
              'Mohaned Giess',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: "Pacifico"),
            ),
            Text(
              'Flutter developer',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                  letterSpacing: 2.5,
                  fontFamily: "SourceCodePro"),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 20,
                    color: Colors.teal.shade800,
                  ),
                  title: Text(
                    '+249 99 420 50 66',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.teal,
                    ),
                  ),
                )),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: ListTile(
                    leading: Icon(
                      Icons.email,
                      size: 20,
                      color: Colors.teal.shade800,
                    ),
                    title: Text(
                      'test@test.com',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.teal,
                      ),
                    )))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: Icon(Icons.refresh_outlined),
      ),
    );
  }
}
