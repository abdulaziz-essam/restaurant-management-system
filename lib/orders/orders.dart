import 'package:flutter/material.dart';

class RestaurantOrdersPage extends StatelessWidget {
  const RestaurantOrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Orders'),
      ),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return OrderItem(
            order: order,
            onTap: () {
              // Action when an order item is tapped
            },
          );
        },
      ),
    );
  }
}

class Order {
  final String id;
  final String customerName;
  final List<String> items;
  final double total;

  Order({
    required this.id,
    required this.customerName,
    required this.items,
    required this.total,
  });
}

class OrderItem extends StatelessWidget {
  final Order order;
  final VoidCallback onTap;

  const OrderItem({
    Key? key,
    required this.order,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        child: Text(order.customerName.substring(0, 1)),
      ),
      title: Text(order.customerName),
      subtitle: Text('Total: \$${order.total.toStringAsFixed(2)}'),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}

final List<Order> orders = [
  Order(
    id: '1',
    customerName: 'John Doe',
    items: ['Burger', 'Fries', 'Soda'],
    total: 15.99,
  ),
  Order(
    id: '2',
    customerName: 'Jane Smith',
    items: ['Pizza', 'Salad', 'Garlic Bread'],
    total: 24.99,
  ),
  Order(
    id: '3',
    customerName: 'Robert Johnson',
    items: ['Steak', 'Mashed Potatoes', 'Green Beans'],
    total: 32.50,
  ),
];