import 'package:flutter/material.dart';

import '../../core/data/app_data.dart';
import '../../core/utils/constants.dart';
import '../widgets/music_controls.dart';

class LibraryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.grey.shade900,
            title: Text(
              'Music',
              style: Theme.of(context).textTheme.headline5.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.search, size: 32),
                color: Colors.white,
                onPressed: () {},
              ),
            ],
            bottom: TabBar(
              labelColor: kPrimary,
              indicatorColor: kPrimary,
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(text: 'All songs'),
                Tab(text: 'Albums'),
                Tab(text: 'Artists'),
              ],
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: TabBarView(
                  children: [
                    allSongsView(),
                    albumsView(),
                    artistsView(),
                  ],
                ),
              ),
              MusicControls(),
            ],
          )),
    );
  }

  Widget allSongsView() {
    return Padding(
      padding: EdgeInsets.only(
        top: 16.0,
      ),
      child: ListView.builder(
        itemCount: allSongs.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                allSongs[index].image,
                width: 50,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              allSongs[index].name,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            subtitle: Text(
              allSongs[index].artist,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget albumsView() {
    return Padding(
      padding: EdgeInsets.only(top: 32, left: 16, right: 16),
      child: GridView.builder(
        itemCount: albums.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 6 / 9,
          crossAxisSpacing: 20,
        ),
        itemBuilder: (context, index) => GridTile(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  albums[index].image,
                  fit: BoxFit.cover,
                  height: 200,
                ),
              ),
              SizedBox(height: 8),
              Text(
                albums[index].name,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 4),
              Text(
                albums[index].artist,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget artistsView() {
    return Padding(
      padding: EdgeInsets.only(top: 32, left: 16, right: 16),
      child: GridView.builder(
        itemCount: albums.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 6 / 8,
          crossAxisSpacing: 30,
        ),
        itemBuilder: (context, index) => GridTile(
          child: Column(
            children: [
              ClipOval(
                child: Image.asset(
                  artists[index].image,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 8),
              Text(
                artists[index].artist,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
