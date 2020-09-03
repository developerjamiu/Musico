import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'My Profile',
          style: Theme.of(context).textTheme.headline5.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 48.0),
                    margin: EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 40,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        NameAndTitle(
                          title: 'Full Name',
                          name: 'Adeeko Emmanuel',
                        ),
                        NameAndTitle(
                          title: 'Email Address',
                          name: 'emmie4sure.web@gmail.com',
                        ),
                        NameAndTitle(
                          title: 'Musico ID',
                          name: '124392874098734',
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    left: 0,
                    top: 0,
                    child: CircleAvatar(
                      radius: 42,
                      backgroundColor: Colors.white24,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: ClipOval(
                          child: Image.asset(
                            'assets/me.png',
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.music_note,
              size: 80,
              color: Colors.white24,
            ),
            SizedBox(height: 6),
            Text(
              'MUSICO',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white24,
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class NameAndTitle extends StatelessWidget {
  final String name;
  final String title;

  const NameAndTitle({
    Key key,
    this.name,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 6),
          Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
