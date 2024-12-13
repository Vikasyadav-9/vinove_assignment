import 'package:flutter/material.dart';
import 'package:project/attendence.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Workstatus'),
        ),
        drawer: SideMenu(),
        body: Center(
          child: Text('Main Content Area'),
        ),
      ),
    );
  }
}

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.redAccent,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.orangeAccent,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'VIKAS GAURAV',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  'vikasgaurav@gmail.com',
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
          ),
          _createDrawerItem(
            icon: Icons.timer,
            text: 'Timer',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AttendanceScreen(),),);
            },
          ),
          _createDrawerItem(
            icon: Icons.calendar_today,
            text: 'Attendance',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AttendanceScreen(),),);
            },
          ),
          _createDrawerItem(
            icon: Icons.bar_chart,
            text: 'Activity',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AttendanceScreen(),),);
            },
          ),
          _createDrawerItem(
            icon: Icons.access_time,
            text: 'Timesheet',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AttendanceScreen(),),);
            },
          ),
          _createDrawerItem(
            icon: Icons.file_present,
            text: 'Report',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AttendanceScreen(),),);
            },
          ),
          _createDrawerItem(
            icon: Icons.location_on,
            text: 'Jobsite',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AttendanceScreen(),),);
            },
          ),
          _createDrawerItem(
            icon: Icons.group,
            text: 'Team',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AttendanceScreen(),),);
            },
          ),
          _createDrawerItem(
            icon: Icons.time_to_leave,
            text: 'Time off',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AttendanceScreen(),),);
            },
          ),
          _createDrawerItem(
            icon: Icons.schedule,
            text: 'Schedules',
            onTap: () {},
          ),
          Divider(),
          _createDrawerItem(
            icon: Icons.account_tree,
            text: 'Request to join Organization',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AttendanceScreen(),),);
            },
          ),
          _createDrawerItem(
            icon: Icons.lock,
            text: 'Change Password',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AttendanceScreen(),),);
            },
          ),
          _createDrawerItem(
            icon: Icons.logout,
            text: 'Logout',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AttendanceScreen(),),);
            },
          ),
        ],
      ),
    );
  }

  Widget _createDrawerItem(
      {required IconData icon, required String text, required GestureTapCallback onTap}) {
    return ListTile(
        title: Text(text),
        leading: Icon(icon),
        onTap: onTap,
        );
    }
}