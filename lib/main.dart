import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:res_management_system/dashboard/dashboard.dart';
import 'package:res_management_system/orders/orders.dart' ;
import 'package:res_management_system/orders/orders_details.dart';
import './notification/notification.dart';
import './profile/profile.dart';
import './landingPage/landingPage.dart';
import './message/message.dart';
import 'package:device_preview/device_preview.dart';



 void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const ReservationApp(),
        '/dashboard': (context) => const DashboardPage(),
       '/orders': (context) => const RestaurantOrdersPage(),
         '/detail': (context) => const RestaurantOrdersPageDetail(),
         '/notification': (context) => const NotificationPage(),
          '/profile': (context) =>  ProfilePage(),
       '/message': (context) =>  MessageCard(date: '27/4/2023', message: 'expired date 4/3', sender: 'Ahmad Khalid',)
      },
    );
  }
}

