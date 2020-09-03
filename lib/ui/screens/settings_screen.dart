import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: Text(
          'Settings',
          style: Theme.of(context).textTheme.headline5.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Text(
              'Equalizer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: Text(
              'Appearance',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            leading: Text(
              'Language',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: Text(
              'Storage',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: Text(
              'Privacy & Security',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: Text(
              'Help & Support',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: Text(
              'About App',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: Text(
              'Invite A Friend',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Icon(
            Icons.music_note,
            size: 80,
            color: Colors.white24,
          ),
          Text(
            'MUSICO',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white24,
            ),
          ),
        ],
      ),
    );
  }
}
