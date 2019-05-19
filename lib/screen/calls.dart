import 'package:flutter/material.dart';
import '../model/calls.dart';

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callData.length,
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            Divider(
              height: 20.0,
            ),
            ListTile(
              leading: CircleAvatar(
                maxRadius: 25.0,
                backgroundImage: NetworkImage(callData[index].imageUrl),
              ),
              title: Text(callData[index].name,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(callData[index].time),
              trailing: Icon(Icons.call),
              selected: true,
            )
          ],
        );
      },
    );
  }
}
