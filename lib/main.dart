import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: FirstScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        title: Text('Flutter Demo'),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
      ),
      body: Container(
        child: Center(
          child: Text(
            'Hello World!',
            style: TextStyle(fontSize: 40),
          ),
        ),
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(100),
        decoration: BoxDecoration(
            color: Colors.white,
            // shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                offset: Offset(30, 0),
                // blurRadius: 2,
              ),
              BoxShadow(
                color: Colors.yellow,
                offset: Offset(0, 30),
              ),
              BoxShadow(
                color: Colors.green,
                offset: Offset(-30, 0),
              ),
              BoxShadow(
                color: Colors.blue,
                offset: Offset(0, -30),
              ),
            ],
            border: Border.all(color: Colors.black, width: 5),
            borderRadius: BorderRadius.circular(30)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.share)),
              IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
              IconButton(onPressed: () {}, icon: Icon(Icons.thumb_down)),
              IconButton(onPressed: () {}, icon: Icon(Icons.account_box)),
            ],
          ),
        ),
      ),
    );
  }
}
