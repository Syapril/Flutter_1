import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:apps_vin/theme.dart';
import 'package:flutter/services.dart';
import 'package:apps_vin/widgets/chat_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blueColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
            size: 28,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Image.asset(
                    'assets/images/profile.jpg',
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Alvin Gautama',
                    style: TextStyle(
                      fontSize: 20,
                      color: whiteColor,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Programing Freelance',
                    style: TextStyle(
                      color: blackColor,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Friends',
                          style: titleTextStyle,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        ChatTile(
                          ImageUrl: 'assets/images/me1.jpg',
                          name: 'Alvin',
                          text: 'Sory, Im handsome guys...',
                          time: 'Now',
                          unread: true,
                        ),
                        ChatTile(
                          ImageUrl: 'assets/images/me2.jpg',
                          name: 'Gautama',
                          text: 'Really, Im more handsome guys...',
                          time: '2.30',
                          unread: false,
                        ),
                        Text(
                          'Group',
                          style: titleTextStyle,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        ChatTile(
                          ImageUrl: 'assets/images/group1.jpg',
                          name: 'Jakarta Fair',
                          text: 'Why does everyone ca...',
                          time: '11.11',
                          unread: false,
                        ),
                        ChatTile(
                          ImageUrl: 'assets/images/me3.jpg',
                          name: 'Syapril',
                          text: 'Here here we can go...',
                          time: '7.11',
                          unread: false,
                        ),
                        ChatTile(
                          ImageUrl: 'assets/images/pic1.jpg',
                          name: 'Gautama',
                          text: 'the car which does not...',
                          time: '7.11',
                          unread: false,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
