import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:e_commerce_app/componets/horizontalListView.dart';
import 'package:e_commerce_app/componets/Products.dart';
// import 'componets/horizontalListView.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
          AssetImage('images/m2.jpg'),
        ],
        autoplay: false,
        // animationCurve: Curves.fastOutSlowIn,
        // animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        // dotColor: Colors.red,
        indicatorBgPadding: 2.0,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('ShopApp'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            // header
            new UserAccountsDrawerHeader(
              accountName: Text("Babita"),
              accountEmail: Text("babita.k@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.redAccent,
                    // size: 50,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.red),
            ),
            //body

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Home Page"),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Categories"),
                leading: Icon(Icons.dashboard),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Favourites"),
                leading: Icon(Icons.favorite),
              ),
            ),

            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("About"),
                leading: Icon(
                  Icons.help,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          //image carousel begins here
          image_carousel,

          //padding widget
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Categories"),
          ),

          //Horizontal list view begins here
          HorizontalList(),

          //padding widget
          new Padding(
            padding: const EdgeInsets.all(20.0),
            child: new Text("Recent Products"),
          ),

          // grid view beins here
          Container(
            height: 320,
            child: Products(),
          ),
        ],
      ),
    );
  }
}
