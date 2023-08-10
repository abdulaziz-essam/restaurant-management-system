import 'package:flutter/material.dart';

void main() {
  runApp(NotificationPage());
}

class NotificationPage extends StatelessWidget {
  static const List<String> notifications = [
    'New message received',
    'Appointment reminder',
    'Event starting soon',
  ];

  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notification Page Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Notifications'),
        ),
        body: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            final notification = notifications[index];
            return ListTile(
              title: Text(
                notification,
                style: TextStyle(fontSize: 16.0),
              ),
            );
          },
        ),
      ),
    );
  }
}