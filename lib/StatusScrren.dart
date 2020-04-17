import 'package:flutter/material.dart';

import 'StoryPageView.dart';


class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color(0xfff2f2f2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
            Card(
              color:Colors.white,
              elevation: 0.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Stack(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/91.jpg"),
                      ),
                      Positioned(
                        bottom: 0.0,
                        right: 1.0,
                        child: Container(
                          height: 20,
                          width: 20,
                          child: Icon(Icons.add,color: Colors.white,size: 15,),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle
                          ),
                        ))
                    ],
                  ),
                  title: Text("My Status",style: TextStyle(fontWeight:FontWeight.bold ),),
                  subtitle: Text("Tap to add status"),
                ),
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Viewed Updates",style: TextStyle(color:Colors.grey,fontWeight: FontWeight.bold),),

            ),
            Expanded(
              child:Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.white,
                child: ListView(
                  children: <Widget>[
                    ListTile(
                  leading: 
                   
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/91.jpg"),
                      ),
                     
                  title: Text("Akshay Madan",style: TextStyle(fontWeight:FontWeight.bold ),),
                  subtitle: Text("Today, 8:30 AM"),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>StoryPageView()));
                  },
                ),
                 Divider(
            height: 10.0,
          ),
                 ListTile(
                  leading: 
                   
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/91.jpg"),
                      ),
                     
                  title: Text("Tushar Lco",style: TextStyle(fontWeight:FontWeight.bold ),),
                  subtitle: Text("Today, 9:30 AM"),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>StoryPageView()));
                  },
                ),
                 Divider(
            height: 10.0,
          ),
                 ListTile(
                  leading: 
                   
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/91.jpg"),
                      ),
                     
                  title: Text("Samansh Lco",style: TextStyle(fontWeight:FontWeight.bold ),),
                  subtitle: Text("Today, 10:30 AM"),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>StoryPageView()));
                  },
                ),
                 Divider(
            height: 10.0,
          ),
                 ListTile(
                  leading: 
                   
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/91.jpg"),
                      ),
                     
                  title: Text("Om Lco",style: TextStyle(fontWeight:FontWeight.bold ),),
                  subtitle: Text("Today, 8:30 AM"),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>StoryPageView()));
                  },
                ),
                 Divider(
            height: 10.0,
          ),
                 ListTile(
                  leading: 
                   
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/91.jpg"),
                      ),
                     
                  title: Text("Vikas Lco",style: TextStyle(fontWeight:FontWeight.bold ),),
                  subtitle: Text("Today, 8:30 AM"),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>StoryPageView()));
                  },
                ),
                 Divider(
            height: 10.0,
          ),
                 ListTile(
                  leading: 
                   
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/91.jpg"),
                      ),
                     
                  title: Text("Manish Lco",style: TextStyle(fontWeight:FontWeight.bold ),),
                  subtitle: Text("Today, 8:30 AM"),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>StoryPageView()));
                  },
                ),
                 Divider(
            height: 10.0,
          ),
                 ListTile(
                  leading: 
                   
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/91.jpg"),
                      ),
                     
                  title: Text("Sagar Kumar",style: TextStyle(fontWeight:FontWeight.bold ),),
                  subtitle: Text("Today, 8:30 AM"),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>StoryPageView()));
                  },
                ),
                  ],
                ),
                
              ) ),
               
        ],
      ),
    );
  }
}