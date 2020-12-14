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
      height: 250,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          // AssetImage('images/c1.jpg'),
          // AssetImage('images/m1.jpeg'),
          // AssetImage('images/w3.jpeg'),
          // AssetImage('images/w4.jpeg'),
          // AssetImage('images/m2.jpg'),
          AssetImage('images/FrontPage/f1.jpg'),
          AssetImage('images/FrontPage/f2.jpg'),
          AssetImage('images/FrontPage/f4.jpg'),
          AssetImage('images/FrontPage/k1.jpg'),
          // AssetImage('images/FrontPage/k3.jpg'),
          AssetImage('images/FrontPage/m1.jpg'),
          AssetImage('images/FrontPage/m2.jpg'),
          AssetImage('images/FrontPage/w22.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        // dotColor: Colors.red,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Center(child: Text('ShopApp')),
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
            UserAccountsDrawerHeader(
              accountName: Text("Babita"),
              accountEmail: Text("babita.k@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  radius: 40,
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
                leading: Icon(Icons.home,color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(Icons.person,color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(Icons.shopping_basket,color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Shopping cart"),
                leading: Icon(Icons.shopping_cart,color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Favourites"),
                leading: Icon(Icons.favorite,color: Colors.red,),
              ),
            ),

            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(
                  Icons.settings,
                  // color: Colors.blue,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("About"),
                leading: Icon(
                  Icons.help,
                  // color: Colors.green,
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
            padding: const EdgeInsets.only(top:7,left: 10),
            child: new Text("Categories"),
          ),

          //Horizontal list view begins here
          HorizontalList(),

          //padding widget
          new Padding(
            padding: const EdgeInsets.only(top:20,left: 10,bottom: 20),
            child: new Text("Recent Products"),
          ),

          // grid view begins here
          Container(
            height: 320,
            child: Products(),
          ),
        ],
      ),
    );
  }
}
