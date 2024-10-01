import 'package:flutter/material.dart';
import '../components/info_column.dart';

class BookScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0.5,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightBlueAccent, Colors.lightBlue.shade50],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 220,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.shade100,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 8.0,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Container(
                        height: 250,
                        width: 190,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage('assets/91EU71XRzrL._AC_UF1000,1000_QL80_.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(Icons.library_add, color: Colors.white, size: 30),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.favorite_border, color: Colors.white, size: 30),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.menu_book, color: Colors.white),
                              SizedBox(width: 5),
                              Text(
                                "Read Book",
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rethink',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 35),
                      Icon(Icons.star, color: Colors.orange, size: 35),
                      Icon(Icons.star, color: Colors.orange, size: 35),
                      Icon(Icons.star, color: Colors.orange, size: 35),
                      Icon(Icons.star_border, color: Colors.orange, size: 35),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 5),
              Text(
                'by Steven Poole',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              SizedBox(height: 2),
              Text(
                'The story of how old ideas that were mocked or ignored for centuries are now storming back to the cutting edge of science and technology, informing the way we lead our lives.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InfoColumn(icon: Icons.calendar_today, title: 'Release', value: '11 / 6 / 2024'),
                  InfoColumn(icon: Icons.language, title: 'Language', value: 'AR - EN'),
                  InfoColumn(icon: Icons.pages, title: 'Page Num', value: '450'),
                ],
              ),
              SizedBox(height: 2),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Download Book", style: TextStyle(fontSize: 20, color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 110, vertical: 6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    backgroundColor: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
