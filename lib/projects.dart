// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({Key? key}) : super(key: key);

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  MyProjects(lang, title, desc, stars) {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        color: Color(0xff262628),
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 10, top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lang,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 16),
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                desc,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.white54,
                    size: 18,
                  ),
                  SizedBox(width: 4),
                  Text(
                    stars,
                    style: TextStyle(color: Colors.white54),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff252525),
        title: Text('Projects'),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyProjects(
                  'Flutter', 'Click to Code', 'An online compiler', '10'),
              MyProjects('Flutter', 'Coffee Shop', 'Simple Coffee app', '6'),
              MyProjects('Flutter', 'Shopping App', 'Simple Shopping app', '8'),
              MyProjects(
                  'Android', 'Preached Word', 'App for prayer and news', '7'),
              MyProjects(
                  'Android', 'Notes App', 'Simple note taking app', '28'),
              MyProjects(
                  'Android', 'Chat app', 'Firebase based notes app', '20'),
              MyProjects('Android', 'Volleball Score App', 'Scoring App', '10')
            ],
          ),
        ),
      ),
    );
  }
}
