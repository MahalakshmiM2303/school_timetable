import 'package:flutter/material.dart';

class TimetablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Timetable'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Table(
          border: TableBorder.all(color: Colors.grey),
          children: [
            _buildTableRow('Day', '9:00 AM - 10:00 AM', '10:15 AM - 11:15 AM'),
            _buildTableRow('Monday', 'Math', 'Science'),
            _buildTableRow('Tuesday', 'English', 'History'),
            _buildTableRow('Wednesday', 'Physics', 'Chemistry'),
            _buildTableRow('Thursday', 'Biology', 'Geography'),
            _buildTableRow('Friday', 'PE', 'Art'),
          ],
        ),
      ),
    );
  }

  TableRow _buildTableRow(String day, String slot1, String slot2) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(day, style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(slot1),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(slot2),
        ),
      ],
    );
  }
}
