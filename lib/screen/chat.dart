import 'package:flutter/material.dart';
import '../model/chat.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messageData.length,
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            Divider(
              height: 20.0,
            ),
            ListTile(
              leading: CircleAvatar(
                maxRadius: 25,
                backgroundImage: NetworkImage(messageData[index].imageUrl),
              ),
              title: Text(messageData[index].name,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(messageData[index].message),
              trailing: Text(messageData[index].time),
              onTap: () {},
            )
          ],
        );
      },
    );
  }
}
