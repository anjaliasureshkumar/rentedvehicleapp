import 'package:flutter/material.dart';

class AdminNotificationsScreen extends StatefulWidget {
  @override
  _AdminNotificationsScreenState createState() => _AdminNotificationsScreenState();
}

class _AdminNotificationsScreenState extends State<AdminNotificationsScreen> {
  List<NotificationItem> notifications = [
    NotificationItem(
      title: 'New Provider Registration',
      message: 'A new provider has registered in your system.',
      date: '2023-11-04 10:30',
    ),
    NotificationItem(
      title: 'Pending Approval',
      message: 'A service request is pending admin approval.',
      date: '2023-11-03 14:00',
    ),
    // Add more notifications as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Notifications'),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return NotificationCard(notification: notifications[index]);
        },
      ),
    );
  }
}

class NotificationItem {
  final String title;
  final String message;
  final String date;

  NotificationItem({
    required this.title,
    required this.message,
    required this.date,
  });
}

class NotificationCard extends StatelessWidget {
  final NotificationItem notification;

  NotificationCard({required this.notification});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(
          notification.title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(notification.message),
            Text(
              'Date: ${notification.date}',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}