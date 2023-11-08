import 'package:flutter/material.dart';

import 'add_notification.dart';

class AdminApproveProviderScreen extends StatefulWidget {
  @override
  _AdminApproveProviderScreenState createState() => _AdminApproveProviderScreenState();
}

class _AdminApproveProviderScreenState extends State<AdminApproveProviderScreen> {
  bool isApproved = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Approval'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Provider Details:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            // Display provider details here, e.g., name, contact, services offered, etc.

            SizedBox(height: 20.0),
            Text(
              'Approval Status:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text('Pending Approval'),
                Switch(
                  value: isApproved,
                  onChanged: (value) {
                    setState(() {
                      isApproved = value;
                    });
                  },
                ),
                Text('Approved'),
              ],
            ),

            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to AdminProviderScreen page when the "Submit Feedback" button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AdminNotificationsScreen()),
                );
              },
              child: Text('Submit Feedback'),
            ),
          ],
        ),
      ),
    );
  }
}