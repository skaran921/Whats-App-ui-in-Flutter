import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Wcards extends StatelessWidget {
  final String name, imageurl, time;
  Wcards(this.name, this.imageurl, this.time);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        maxRadius: 25.0,
        backgroundColor: Colors.blue,
        backgroundImage: NetworkImage(imageurl),
        foregroundColor: Colors.white,
      ),
      title: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(time),
    );
  }
}
