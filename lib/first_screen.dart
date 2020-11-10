import 'package:flutter/material.dart';
import 'package:music_app/track_details.dart';

class FirstScreen extends StatefulWidget {
  static const routeName = '/firstscreen';
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          'Trending',
          style: TextStyle(color: Colors.black),
        )),
      ),
      body: ListView.builder(
          itemCount: 70,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  leading: Icon(Icons.music_video_sharp),
                  title: Text('The climb back'),
                  subtitle: Text('Lewis street'),
                  trailing: Text('J.Cole'),
                  onTap: () {
                    Navigator.pushNamed(context, TrackDetails.routeName);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
              ],
            );
          }),
    );
  }
}
