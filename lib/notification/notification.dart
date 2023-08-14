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
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                title: Text(
                  notification,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                leading: Icon(
                  Icons.notifications,
                  color: Colors.blue,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blue,
                ),
                onTap: () {
                  // Handle notification tap
                },
              ),
            );
          },
        ),
      ),
    );
  }
}