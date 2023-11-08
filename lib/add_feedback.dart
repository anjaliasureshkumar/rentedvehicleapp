import 'package:flutter/material.dart';

import 'admin_approve.dart';

class FeedbackScreen extends StatefulWidget {
  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  String feedbackText = '';
  int rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Rate your experience:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 1; i <= 5; i++)
                  IconButton(
                    icon: Icon(
                      i <= rating ? Icons.star : Icons.star_border,
                      size: 30.0,
                      color: Colors.amber,
                    ),
                    onPressed: () {
                      setState(() {
                        rating = i;
                      });
                    },
                  ),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              'Provide feedback:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              maxLines: 5,
              onChanged: (value) {
                setState(() {
                  feedbackText = value;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Your feedback here...',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to AdminProviderScreen page when the "Submit Feedback" button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AdminProviderScreen()),
                );
              },
              child: Text('Submit Feedback'),
            ),

          ],
        ),
      ),
    );
  }

  AdminProviderScreen() {}
}