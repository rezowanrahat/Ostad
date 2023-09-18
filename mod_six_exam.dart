import 'package:flutter/material.dart';

void main() {
  runApp(MyShoppingListApp());
}

class MyShoppingListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'My Shopping List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyShoppingListScreen(),
    );
  }
}

class MyShoppingListScreen extends StatelessWidget {
  final List<ShoppingItem> shoppingItems = [
    ShoppingItem(icon: Icons.shopping_cart, name: 'Apples'),
    ShoppingItem(icon: Icons.shopping_cart, name: 'Bananas'),
    ShoppingItem(icon: Icons.shopping_cart, name: 'Milk'),
    ShoppingItem(icon: Icons.shopping_cart, name: 'Bread'),
    ShoppingItem(icon: Icons.shopping_cart, name: 'Eggs'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shopping List'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Add cart functionality here
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: shoppingItems.length,
        itemBuilder: (context, index) {
          final item = shoppingItems[index];
          return ListTile(
            leading: Icon(item.icon),
            title: Text(item.name),
          );
        },
      ),
    );
  }
}

class ShoppingItem {
  final IconData icon;
  final String name;

  ShoppingItem({required this.icon, required this.name});
}
