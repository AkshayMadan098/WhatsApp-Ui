import 'package:flutter/material.dart';

import 'CallsScreen.dart';
import 'CameraScreen.dart';
import 'ChatsScreen..dart';
import 'StatusScrren.dart';

class WhatsApphome extends StatefulWidget {
  var cameras;
  WhatsApphome(this.cameras);
  @override
  _WhatsApphomeState createState() => _WhatsApphomeState();
}

class _WhatsApphomeState extends State<WhatsApphome> with SingleTickerProviderStateMixin{

   TabController _tabController;
   bool showFab=true;

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController= TabController(vsync: this,initialIndex: 1,length: 4);
    _tabController.addListener(() {
      if(_tabController.index==1){
       showFab=true;
      }
      else {
        showFab=false;
      }
      setState(() {
        
      });
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt),
              
            ),
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            ),
          ],),
          actions: <Widget>[Icon(Icons.search),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:5.0),
            child: Icon(Icons.more_vert),
          ),
          ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CameraScreen(widget.cameras),
          ChatsScreen(),
          StatusScreen(),
          CallsScreen(),
        ]),
        floatingActionButton: showFab? FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: Icon(Icons.message,color: Colors.white,),
          onPressed: null):null,
    );
  }
}