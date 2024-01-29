// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:namma_metro/components/myDropDownList.dart';
import 'package:namma_metro/components/verificationButton.dart';
import 'package:namma_metro/pages/trains/trains.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> gridviewMap = [
    {
      "title": "Nearest Station",
      "path": "lib/assets/neareststation.png",
    },
    {
      "title": "My Bookings",
      "path": "lib/assets/mybookings.png",
    },
    {
      "title": "Station Info",
      "path": "lib/assets/stationinfo.png",
    },
    {
      "title": "Lost & Found",
      "path": "lib/assets/neareststation.png",
    },
    {
      "title": "Time Schedule",
      "path": "lib/assets/mybookings.png",
    },
    {
      "title": "About Metro",
      "path": "lib/assets/stationinfo.png",
    },
    {
      "title": "Top Places",
      "path": "lib/assets/neareststation.png",
    },
    {
      "title": "Covid 19 precautions",
      "path": "lib/assets/mybookings.png",
    },
    {
      "title": "Helpline",
      "path": "lib/assets/stationinfo.png",
    },
  ];

  var size;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    child: Image.asset("lib/assets/logo.png"),
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications_active_outlined,
                            color:
                                Theme.of(context).colorScheme.primaryContainer,
                            size: 30,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.account_circle_outlined,
                            color:
                                Theme.of(context).colorScheme.primaryContainer,
                            size: 30,
                          )),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              MyDropDownList(),
              SizedBox(
                height: 20,
              ),
              MyDropDownList(),
              SizedBox(
                height: 10,
              ),
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    VerificationButton(
                        widget: Trains(),
                        myicon: Icons.search,
                        buttonText: "Check Trains",
                        width: MediaQuery.of(context).size.width * 0.4,
                        bgcolor: Theme.of(context).colorScheme.primaryContainer,
                        fgcolor: Theme.of(context).colorScheme.background),
                    SizedBox(
                      width: 10,
                    ),
                    VerificationButton(
                        widget: HomeScreen(),
                        buttonText: "Check Trains",
                        width: MediaQuery.of(context).size.width * 0.4,
                        bgcolor: Theme.of(context).colorScheme.background,
                        fgcolor:
                            Theme.of(context).colorScheme.primaryContainer),
                  ],
                ),
              ),
              Text(
                "Other Services",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: gridviewMap.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "${gridviewMap.elementAt(index)['path']}"))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "${gridviewMap.elementAt(index)['title']}",
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Theme.of(context).colorScheme.background,
          currentIndex: 0,
          onTap: (index) {
            setState(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            });
          },
          elevation: 20,
          selectedItemColor:
              Theme.of(context).colorScheme.primaryContainer.withOpacity(0.8),
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.credit_card), label: "Metro Card"),
            BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "News"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Map"),
          ]),
    );
  }
}