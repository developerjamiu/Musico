import 'package:flutter/material.dart';

import '../../core/data/app_data.dart';
import '../../model/music.dart';
import '../widgets/music_controls.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool searching = false;

  toggleSearch() {
    setState(() {
      searching = !searching;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            searching ? searchingAppBar() : appBar(context),
            Expanded(
              child: searching
                  ? searchBody()
                  : SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          musicCollection('Recently Added', recentlyAdded),
                          musicCollection('Favorite Songs', favoriteSongs),
                        ],
                      ),
                    ),
            ),
            MusicControls(),
          ],
        ),
      ),
    );
  }

  Widget appBar(BuildContext context) => Container(
        padding: EdgeInsets.all(16),
        color: Colors.grey.shade900,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Music',
              style: Theme.of(context).textTheme.headline5.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            IconButton(
              icon: Icon(Icons.search, size: 32),
              color: Colors.white,
              constraints: BoxConstraints(),
              onPressed: toggleSearch,
            ),
          ],
        ),
      );

  Widget searchingAppBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      color: Colors.grey.shade900,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white24,
          suffixIcon: IconButton(
            icon: Icon(Icons.close),
            onPressed: toggleSearch,
            color: Colors.grey,
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 32.0,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }

  Widget searchBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Music',
          style: Theme.of(context).textTheme.headline5.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
        ),
        SizedBox(height: 10),
        Text(
          'Search for artist, song or album',
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ],
    );
  }

  Widget musicCollection(String title, List<Music> musicCollection) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Container(
          height: 270,
          padding: EdgeInsets.all(16),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: recentlyAdded.length,
            itemBuilder: (context, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 160,
                  height: 180,
                  padding: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      musicCollection[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  musicCollection[index].name,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  musicCollection[index].artist,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
