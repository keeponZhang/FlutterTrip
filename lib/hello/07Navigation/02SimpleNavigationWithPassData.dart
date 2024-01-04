import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;

  Product(this.title, this.description);
}

void main() => runApp(
      MaterialApp(
        title: "导航传递数据示例",
        home: FirstScreen(
          products: List.generate(
              20, (index) => Product("商品 $index", "这是商品 $index 的描述信息")),
        ),
      ),
    );

class FirstScreen extends StatelessWidget {
  final List<Product> products;

  const FirstScreen({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品列表"),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondScreen(product: products[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final Product product;

  const SecondScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(product.description),
      ),
    );
  }
}
