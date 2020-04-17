import 'package:flutter/material.dart';
import 'package:whatsapp/ChatsData.dart';

class ChatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context,i)=>Column(
        children: <Widget>[
          Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(dummyData[i].pic),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(dummyData[i].name,style: TextStyle(fontWeight:FontWeight.bold ),),
                Text(dummyData[i].time,style: TextStyle(color: Colors.grey,fontSize: 14.0),),
              ],
            ),
            subtitle: Container(

              child: Padding(
                padding: const EdgeInsets.only(top:5.0),
                child: Text(dummyData[i].message,style: TextStyle(color: Colors.grey,fontSize: 15.0),),
              ),
            ),
          )
        ],
      ));
  }
}