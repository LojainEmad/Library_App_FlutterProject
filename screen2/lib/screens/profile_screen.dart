import 'package:flutter/material.dart';
import '../components/info_datails.dart';
import '../components/menu_drawer.dart';
import '../models/user_info.dart';


class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0,
        title: Text(
          "PROFILE",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 40,
              letterSpacing: 1.5),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
      drawer: MenuDrawer(),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          image: DecorationImage(
            image: AssetImage('assets/1434933_581.jpg'),
            fit: BoxFit.cover,
            repeat: ImageRepeat.repeat,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.4),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 190,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      gradient: LinearGradient(
                        colors: [Colors.lightBlueAccent, Colors.lightBlue],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(80),
                        bottomRight: Radius.circular(80),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: CircleAvatar(
                        radius: 110,
                        backgroundImage: AssetImage('assets/459420502_10221314757338248_4673058588362481469_n.jpg'),
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 90),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: userInfo.map((info) {
                    return Column(
                      children: [
                        InfoDetails(
                          icon: info['icon'],
                          text: Text(
                            info['text'],
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 19),
                          ),
                          iconColor: info['iconColor'],
                        ),
                        SizedBox(height: 10),
                      ],
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
