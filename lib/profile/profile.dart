import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:htlbkingui/profile/profilecontainer.dart';

import 'const.dart';

class Profile_page extends StatelessWidget {
  const Profile_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.grey,
                ),
                Icon(
                  Icons.menu,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: CircleAvatar(
              radius: 73,
              backgroundImage: NetworkImage(
                  'data:image/jpeg;base64,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'),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 23,
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(
                  'https://cdn-icons-png.flaticon.com/128/174/174855.png',
                ),
              ),
              Circlesizedboxwidth(),
              CircleAvatar(
                radius: 23,
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(
                  'https://cdn-icons-png.flaticon.com/128/281/281764.png',
                ),
              ),
              Circlesizedboxwidth(),
              CircleAvatar(
                radius: 23,
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(
                    'https://cdn-icons-png.flaticon.com/128/3670/3670151.png'),
              ),
              Circlesizedboxwidth(),
              CircleAvatar(
                radius: 23,
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(
                    'https://cdn-icons-png.flaticon.com/128/145/145807.png'),
              ),
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Text(
            'Anandhu Rk',
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 7),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              '@amFOSS',
              style: TextStyle(
                  color: Colors.grey[600], fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screensize.width * 0.04,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: screensize.width * 0.09,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '    Mobile App Developer and Open-',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: screensize.width * 0.09),
                        child: Text(
                          'source enthusiastic',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screensize.width * 0.03,
                ),
                Expanded(
                  child: Container(
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          profile_container(
                              title: 'Privacy', iconpath: Icons.privacy_tip),
                          profile_container(
                              title: 'Purchase History',
                              iconpath: Icons.lock_clock),
                          profile_container(
                              title: 'Help & Support', iconpath: Icons.help),
                          profile_container(
                              title: 'Settings', iconpath: Icons.settings),
                          profile_container(
                              title: 'invite a Friend', iconpath: Icons.person),
                          profile_container(
                              title: 'Logout', iconpath: Icons.logout),
                        ],
                      )),
                )
              ],
            ),
          )
        ]),
      )),
    );
  }
}

class Image_iconer extends StatelessWidget {
  final String iconpath;
  final color;
  const Image_iconer({Key? key, required this.iconpath, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageIcon(
      AssetImage(iconpath),
      color: color,
    );
  }
}
