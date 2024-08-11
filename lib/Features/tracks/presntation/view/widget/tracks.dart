import 'package:flutter/material.dart';
import 'package:ieee/Features/tracks/presntation/view_model/tracks_model.dart';

class Tracks extends StatelessWidget {
  const Tracks({super.key , required this.trackmodel});
  final TrackModel trackmodel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 8, right: 8 , bottom: 5),
      child: Container(
        height: 412,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 238, 234, 234),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 197.3,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(trackmodel.IMage),
                fit: BoxFit.fill,
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19, top: 10),
              child: Text(
                trackmodel.title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 21, top: 8, right: 10),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc enim, porttitor Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc enim, porttitor Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc enim, porttitor",
                maxLines: null,
                overflow: TextOverflow.visible,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ),
    );
  }
}