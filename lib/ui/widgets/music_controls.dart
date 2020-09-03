import 'package:flutter/material.dart';

import '../../core/data/app_data.dart';
import '../../core/utils/constants.dart';

class MusicControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade900,
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                currentMusic.image,
                height: 50,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currentMusic.name,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    currentMusic.artist,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.fast_rewind),
                iconSize: 36,
                color: Colors.white,
                onPressed: () {},
                constraints: BoxConstraints(),
                padding: EdgeInsets.all(0),
              ),
              IconButton(
                icon: Icon(Icons.play_arrow),
                iconSize: 48,
                color: kPrimary,
                onPressed: () {},
                constraints: BoxConstraints(),
                padding: EdgeInsets.all(0),
              ),
              IconButton(
                icon: Icon(Icons.fast_forward),
                iconSize: 36,
                color: Colors.white,
                onPressed: () {},
                constraints: BoxConstraints(),
                padding: EdgeInsets.all(0),
              ),
            ],
          )
        ],
      ),
    );
  }
}
