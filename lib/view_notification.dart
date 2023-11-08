import 'package:flutter/material.dart';

import 'add_feedback.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<NotificationItem> notifications = [
      NotificationItem(
        title: 'New Message',
        message: 'You have a new message from John Doe.',
        date: '2023-11-04 10:30',
      ),
      NotificationItem(
        title: 'Event Reminder',
        message: "Don't forget the meeting at 2 PM today.", // Use double quotes here
        date: '2023-11-03 14:00',
      ),
      // Add more notifications as needed
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
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
        onTap: () {
// Navigate to FeedbackScreen page when the notification card is pressed
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FeedbackScreen()),
          );
        },
      ),
    );
  }
}
