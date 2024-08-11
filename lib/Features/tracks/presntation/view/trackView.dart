import 'package:flutter/material.dart';

import '../view_model/tracks_model.dart';
import 'widget/tracks.dart';

class TrackView extends StatelessWidget {
  TrackView({super.key});

  final List<TrackModel> tracks = [
    TrackModel(
        IMage: "assets/images/msnyz9L6gs4.png",
        title: "Front-End Development",
        content:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc enim, porttitor Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc enim, porttitor Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc enim, porttitor"),
    TrackModel(
        IMage: "assets/images/msnyz9L6gs4.png",
        title: "Front-End Development",
        content:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc enim, porttitor Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc enim, porttitor Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc enim, porttitor"),
    TrackModel(
        IMage: "assets/images/msnyz9L6gs4.png",
        title: "Front-End Development",
        content:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc enim, porttitor Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc enim, porttitor Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc enim, porttitor"),
    TrackModel(
        IMage: "assets/images/msnyz9L6gs4.png",
        title: "Front-End Development",
        content:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc enim, porttitor Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc enim, porttitor Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc enim, porttitor"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 100,
          ),
        ),
        SliverToBoxAdapter(
          child: ListView.builder(
              itemCount: tracks.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Tracks(
                  trackmodel: tracks[index],
                );
              }),
        )
      ],
    ));
  }
}
