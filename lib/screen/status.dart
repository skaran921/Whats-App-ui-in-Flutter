import 'package:flutter/material.dart';
import 'package:whatsapp/model/chat.dart';
import '../reuseable/wCards.dart';
import './chat.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Wcards(
            "My Status",
            "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
            "10:11"),
        Divider(),
        Heading("Recent Updates"),
        Wcards(
            messageData[0].name, messageData[0].imageUrl, messageData[0].time),
        Divider(),
        Heading("Today"),
        Wcards(
            messageData[1].name, messageData[1].imageUrl, messageData[1].time),
        Divider(),
        Wcards(
            messageData[2].name, messageData[2].imageUrl, messageData[2].time),
        Divider(),
      ],
    );
  }
}

class Heading extends StatelessWidget {
  final String heading;
  Heading(this.heading);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: EdgeInsets.only(left: 5.0, top: 5.0),
      child: Text(heading,
          style: TextStyle(
              fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.grey)),
    ));
  }
}
