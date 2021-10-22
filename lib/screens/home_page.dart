
import 'package:facebook_ui/widgets/new_feeds.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black.withOpacity(0.8),
          title: const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              "facebook",
              style: TextStyle(fontSize: 30),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              iconSize: 30,
            ),
            Builder(
              builder: (ctx) => IconButton(
                onPressed: () {
                  Scaffold.of(ctx).openEndDrawer();
                },
                icon: const Icon(Icons.menu),
                iconSize: 30,
              ),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.people,
                  color: Colors.white,
                ),
              ),
              Tab(
                icon: FaIcon(FontAwesomeIcons.facebookMessenger,color: Colors.white,)
              ),
              Tab(
                icon: Icon(
                  Icons.notifications_active,
                  color: Colors.white,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.ondemand_video,
                  color: Colors.white,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.group,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: Container(
            color: Colors.red,
          ),
        ),
        body: Container(
      padding: const EdgeInsets.only(top: 10),
            color: Colors.black.withOpacity(0.8),
            child: const TabBarView(children: [

              NewFeeds(),
              Center(
                child: Icon(
                  Icons.car_rental,
                  color: Colors.blue,
                ),
              ),
              Center(
                child: Icon(
                  Icons.car_rental,
                  color: Colors.blue,
                ),
              ),
              Center(
                child: Icon(
                  Icons.car_rental,
                  color: Colors.blue,
                ),
              ),
              Center(
                child: Icon(
                  Icons.car_rental,
                  color: Colors.blue,
                ),
              ),
              Center(
                child: Icon(
                  Icons.car_rental,
                  color: Colors.blue,
                ),
              ),
            ])),
      ),
    );
  }
}