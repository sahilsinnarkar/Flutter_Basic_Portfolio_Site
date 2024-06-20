import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_site/utils/animatedContact.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/socialRow.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20.0,
      ),
      width: context.screenWidth < 1100
          ? context.screenWidth * 0.9
          : context.screenWidth < 1700
          ? context.screenWidth * 0.3
          : context.screenWidth * 0.2,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: const EdgeInsets.all(30.0),
      height: 800,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.asset(
                "assets/dev.png",
                height: 156.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Sahil",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Text(
                "I am a developer and I am looking for dev roles across India",
                textAlign: TextAlign.center,
                style: TextStyle(),
              ),
              const Wrap(
                alignment: WrapAlignment.center,
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Chip(
                    label: Text(
                      "Full Stack Developer",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                    backgroundColor: Colors.greenAccent,
                    padding: EdgeInsets.all(8.0),
                  ),
                  Chip(
                    label: Text(
                      "App Developer",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                    backgroundColor: Colors.greenAccent,
                    padding: EdgeInsets.all(8.0),
                  ),
                ],
              ),
              const Divider(),
              AnimatedContact(
                  iconData: FontAwesomeIcons.linkedin,
                  title: "LinkedIn",
                  subTitle: "sahilsinnarkar",
                  onTap: (){}
              ),
              AnimatedContact(
                  iconData: FontAwesomeIcons.githubAlt,
                  title: "Github",
                  subTitle: "sahilsinnarkar",
                  onTap: (){}
              ),
              AnimatedContact(
                  iconData: Icons.email,
                  title: "Gmail",
                  subTitle: "sahilsinnarkar@gmail.com",
                  onTap: (){}
              ),
            ],
          ),
          const Column(
            children: [
              Divider(),
              SocialRow(),
            ],
          ),
        ],
      ),
    );
  }
}
