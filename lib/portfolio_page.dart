import 'package:flutter/material.dart';
import 'package:recase/recase.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'dart:async';

import 'package:url_launcher/url_launcher.dart';

class PortfolioPage extends StatelessWidget {
  ReCase rc = new ReCase('');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(rc.snakeCase),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                  width: MediaQuery.of(context).size.width * 3 / 7,
                  image: NetworkImage(
                      'https://media-exp1.licdn.com/dms/image/C5603AQHKYnlOc9vXsQ/profile-displayphoto-shrink_800_800/0/1600480828266?e=1622073600&v=beta&t=SMVQrRS6ydlBUVTL2wMmzCjiQNn6CydLuH55kLJx9Oo')),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Rajiv Ranjan Mars",
              style: TextStyle(fontSize: 30),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 10,
              // color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "Student",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            
            Container(
              margin: EdgeInsets.all(30),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(Icons.email),
                  SizedBox(
                    width: 10,
                  ),
                  Text("rajivranjanmars@gmail.com"),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(30),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red,
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(Icons.settings_phone),
                    SizedBox(
                      width: 10,
                    ),
                    Text("8540029641"),
                  ],
                ),
              ),
            ),
            
            Wrap(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Chip(
                      backgroundColor: Colors.amber,
                      label: Container(
                          padding: EdgeInsets.all(10),
                          child: Text("Competitive Programmer"))),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Chip(
                      backgroundColor: Colors.amber,
                      label: Container(
                          padding: EdgeInsets.all(10), child: Text("Web "))),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Chip(
                      backgroundColor: Colors.amber,
                      label: Container(
                          padding: EdgeInsets.all(10), child: Text("Flutter"))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

