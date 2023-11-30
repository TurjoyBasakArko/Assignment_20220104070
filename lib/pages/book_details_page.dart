import 'package:flutter/material.dart';

class BookDetailsPage extends StatefulWidget {
  final String bookName;
  final String authorName;
  final String description;
  final String coverAssetPath;

  BookDetailsPage({
    required this.bookName,
    required this.authorName,
    required this.description,
    required this.coverAssetPath,
  });

  @override
  _BookDetailsPageState createState() => _BookDetailsPageState();
}

class _BookDetailsPageState extends State<BookDetailsPage> {
  String selectedRating = '4'; // Default rating

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.red,
        title: Text('Book Description'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.bookName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Image.asset(widget.coverAssetPath),
            SizedBox(height: 20),
            Text('Author: ${widget.authorName}'),
            SizedBox(height: 10),
            Text('Description: ${widget.description}'),
            SizedBox(height: 25),
            Row(
              children: [
                Text('Select a Rating: '),
                DropdownButton<String>(
                  items: ['1', '2', '3', '4', '5'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedRating = newValue!;
                    });
                  },
                  value: selectedRating,
                ),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {

                print('Selected Rating: $selectedRating');
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}