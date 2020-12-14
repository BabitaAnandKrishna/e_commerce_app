import 'package:e_commerce_app/page/Product_Details.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
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
      "old_price": 123,
      "price": 85,
    },
    // {
    //   "name": "Blazer",
    //   "picture": "images/products/blazer2.jpeg",
    //   "old_price": 123,
    //   "price": 85,
    // },
    // {
    //   "name": "Blazer",
    //   "picture": "images/products/dress2.jpeg",
    //   "old_price": 123,
    //   "price": 85,
    // },
    // {
    //   "name": "Blazer",
    //   "picture": "images/products/hills1.jpeg",
    //   "old_price": 123,
    //   "price": 85,
    // },
    // {
    //   "name": "Blazer",
    //   "picture": "images/products/hills2.jpeg",
    //   "old_price": 123,
    //   "price": 85,
    // },
    // {
    //   "name": "Blazer",
    //   "picture": "images/products/pants1.jpeg",
    //   "old_price": 123,
    //   "price": 85,
    // },
    // {
    //   "name": "Blazer",
    //   "picture": "images/products/pants2.jpeg",
    //   "old_price": 123,
    //   "price": 85,
    // },
    // {
    //   "name": "Blazer",
    //   "picture": "images/products/shoe1.jpg",
    //   "old_price": 123,
    //   "price": 85,
    // },
    // {
    //   "name": "Blazer",
    //   "picture": "images/products/skt1.jpeg",
    //   "old_price": 123,
    //   "price": 85,
    // },
    // {
    //   "name": "Blazer",
    //   "picture": "images/products/skt12.jpeg",
    //   "old_price": 123,
    //   "price": 85,
    // },
    // {
    //   "name": "Blazer",
    //   "picture": "images/products/blazer1.jpeg",
    //   "old_price": 123,
    //   "price": 85,
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
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
                child: ListTile(
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
                ),
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
