import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../domain/core/constant_values.dart';
import '../widgets/music_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: black,
        body: ListView(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    'Good Evening',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.bell,
                        color: Colors.white,
                        size: 25,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'icons/Recents.svg',
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'icons/Settings.svg',
                        color: Colors.white,
                      )),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                    child: Container(
                  height: 70,
                  width: 190,
                  color: Colors.grey,
                )),
                Card(
                    child: Container(
                  height: 70,
                  width: 190,
                  color: Colors.grey,
                ))
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                    child: Container(
                  height: 70,
                  width: 190,
                  color: Colors.grey,
                )),
                Card(
                    child: Container(
                  height: 70,
                  width: 190,
                  color: Colors.grey,
                ))
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                    child: Container(
                  height: 70,
                  width: 190,
                  color: Colors.grey,
                )),
                Card(
                    child: Container(
                  height: 70,
                  width: 190,
                  color: Colors.grey,
                ))
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://img.freepik.com/premium-photo/woman-wearing-headphones-front-green-wall_713888-6542.jpg?size=626&ext=jpg&ga=GA1.1.1900052020.1717854544&semt=ais_user'),
                        radius: 20,
                      )),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'New Release From',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Text(
                        'Name',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Card(
                child: Container(
                  width: 90,
                  height: 120,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Discover something new',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20,),
            MusicCard(),
            SizedBox(height: 10,),

          ],
        ));
  }
}

