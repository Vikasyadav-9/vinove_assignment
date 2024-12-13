import 'package:flutter/material.dart';
import 'package:project/tracklivelocation.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AttendanceScreen(),
    );
  }
}

class AttendanceScreen extends StatelessWidget {
  final List<Map<String, dynamic>> attendanceData = [
    {
      'name': 'Vikas Yadav',
      'id': '0001',
      'timeIn': '10:02 am',
      'timeOut': '07:15',
      'status': 'Completed',
      'photoUrl': 'https://via.placeholder.com/50',
    },
    {
      'name': 'Gaurav Gupta',
      'id': '0002',
      'timeIn': '09:30 am',
      'timeOut': '',
      'status': 'Working',
      'photoUrl': 'https://via.placeholder.com/50',
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ATTENDANCE'),
        backgroundColor: Colors.yellowAccent,
      ),
      body: ListView.builder(
        itemCount: attendanceData.length,
        itemBuilder: (context, index) {
          final member = attendanceData[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(member['photoUrl']),
              ),
              title: Text('${member['name']} (${member['id']})'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_upward, size: 16, color: Colors.green),
                      SizedBox(width: 4),
                      Text(member['timeIn'] ?? '--'),
                      SizedBox(width: 8),
                      if (member['timeOut'] != '')
                        Row(
                          children: [
                            Icon(Icons.arrow_downward, size: 16, color: Colors.red),
                            SizedBox(width: 4),
                            Text(member['timeOut'] ?? '--'),
                          ],
                        ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(
                    member['status'],
                    style: TextStyle(
                      color: member['status'] == 'WORKING'
                          ? Colors.green
                          : Colors.redAccent,
                    ),
                  ),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.calendar_today),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => GoogleMapScreen(), ),);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.location_on),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => GoogleMapScreen(), ),);

                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}