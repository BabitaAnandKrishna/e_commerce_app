import 'package:e_commerce_app/HomePage.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_details_name;
  final product_details_new_price;
  final product_details_old_price;
  final product_details_picure;

  ProductDetails({
    this.product_details_name,
    this.product_details_new_price,
    this.product_details_old_price,
    this.product_details_picure,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          elevation: 0.1,
          backgroundColor: Colors.red,
          title: InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(
                  builder:(context)=> HomePage()));},
              child: Center(child: Text('ShopApp'))),
          actions: <Widget>[
            new IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {}),
            // new IconButton(
            //     icon: Icon(
            //       Icons.shopping_cart,
            //       color: Colors.white,
            //     ),
            //     onPressed: () {}),
          ],
        ),
        body: new ListView(
          children: <Widget>[
            new Container(
              height: 300,
              child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.product_details_picure),
                ),
                footer: new Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: new Text(
                      widget.product_details_name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    title: new Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text(
                            "\£${widget.product_details_old_price}",
                            style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ),
                        Expanded(
                          child: new Text(
                            "\£${widget.product_details_new_price}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            //===============the first buttons=============
            Row(
              children: <Widget>[
                // ================= the size button =================
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Size"),
                              content: Text("Choose the size"),
                              actions: <Widget>[
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text(
                                    "close",
                                    style: TextStyle(color: Colors.blue),
                                  ), /*color: Colors.blue,*/
                                )
                              ],
                            );
                          });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text("Size"),
                        ),
                        Expanded(
                          child: new Icon(Icons.arrow_drop_down),
                        ),
                      ],
                    ),
                  ),
                ),
                // ================= the size button =================
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Colors"),
                              content: Text("Choose a color"),
                              actions: <Widget>[
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text(
                                    "close",
                                    style: TextStyle(color: Colors.blue),
                                  ), /*color: Colors.blue,*/
                                )
                              ],
                            );
                          });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text("Color"),
                        ),
                        Expanded(
                          child: new Icon(Icons.arrow_drop_down),
                        ),
                      ],
                    ),
                  ),
                ),
                // ================= the size button =================
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Quantity"),
                              content: Text("Choose the quantity"),
                              actions: <Widget>[
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text(
                                    "close",
                                    style: TextStyle(color: Colors.blue),
                                  ), /*color: Colors.blue,*/
                                )
                              ],
                            );
                          });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text("Qty"),
                        ),
                        Expanded(
                          child: new Icon(Icons.arrow_drop_down),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),

            //===============the Second buttons=============
            Row(
              children: <Widget>[
                // ================= the size button =================
                Expanded(
                  child: MaterialButton(
                      onPressed: () {},
                      color: Colors.red,
                      textColor: Colors.white,
                      child: new Text("Buy now")),
                ),
                new IconButton(
                    icon: Icon(Icons.add_shopping_cart),
                    color: Colors.red,
                    onPressed: () {}),
                new IconButton(
                    icon: Icon(Icons.favorite_border),
                    color: Colors.red,
                    onPressed: () {}),
              ],
            ),
            Divider(),
            new ListTile(
              title: Text("Product details"),
              subtitle: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset"),
            ),
            Divider(),
            Row(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                    child: Text(
                      "Product name",
                      style: TextStyle(color: Colors.grey),
                    ),
                ),
                Padding(padding: EdgeInsets.all(5.0),
                  child: Text(widget.product_details_name),),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: Text(
                    "Product brand",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),

                // REMEMBER TO CREATE THE PRODUCT BRAND
                Padding(padding: EdgeInsets.all(5.0),
                  child: Text("BRAND X"),),
              ],
            ),


            // ADD THE PRODUCT CONDITION
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: Text(
                    "Product condition",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Padding(padding: EdgeInsets.all(5.0),
                  child: Text("NEW"),),
              ],
            ),

            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Similar Products"),
            ),
            //Similar Product Section

            Container(
              height: 340,
              child: Similar_products(),
            )
          ],
        )
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 123,
      "price": 85,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 65,
    },

    {
      "name": "Sandle",
      "picture": "images/products/hills1.jpeg",
      "old_price": 123,
      "price": 85,
    },
    {
      "name": "Red Sandle",
      "picture": "images/products/hills2.jpeg",
      "old_price": 123,
      "price": 85,
    },
    {
      "name": "Pants",
      "picture": "images/products/pants1.jpg",
      "old_price": 123,
      "price": 85,
    },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        scrollDirection:  Axis.vertical,
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}
class Similar_Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        // tag: prod_name,
        tag: Text("hero1"),
        child: Material(
          child: InkWell(
            // onTap: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => ProductDetails()),
            //   );
            // },
            onTap: () => Navigator.of(context).push(
                new MaterialPageRoute(
                  //here we are passing the values of the product to the product details page
                    builder: (context) => new ProductDetails(
                      product_details_name: prod_name,
                      product_details_new_price: prod_price,
                      product_details_old_price: prod_old_price,
                      product_details_picure: prod_picture,
                    )
                )
            ),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: Row(
                  children:<Widget> [
                    Expanded(child: Text(prod_name,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 16) ,),
                    ),
                    Text("\£${prod_price}",style: TextStyle
                      (color: Colors.red,fontWeight: FontWeight.bold))
                  ],
                ),
                /*ListTile(
                  leading: Text(
                    prod_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    "\£$prod_price",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text(
                    "\£$prod_old_price",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.lineThrough),
                  ),
                ),*/
              ),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
