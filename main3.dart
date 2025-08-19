import 'package:flutter/material.dart';

void main() {
  runApp(Dashboard());
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Product Showcase'), centerTitle: true),
        body: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [Product(), SizedBox(height: 10), Product()]);
  }
}

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://cdn.shopify.com/s/files/1/2303/2711/files/2_e822dae0-14df-4cb8-b145-ea4dc0966b34.jpg?v=1617059123',
            width: double.infinity,
            height: 200,
            fit: BoxFit.fill,
          ),
          SizedBox(height: 10),
          Text(
            'Product name',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Text(r'$99.99', style: TextStyle(fontSize: 20, color: Colors.blue)),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: ElevatedButton(onPressed: () {}, child: Text('Buy Now')),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
