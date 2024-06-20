import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Skills extends StatefulWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20.0,
      runSpacing: 20.0,
      alignment: WrapAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
          ),
          alignment: Alignment.center,
          child: const Text(
            "My Skills",
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Container(
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : ((context.screenWidth * 0.8) / 3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
          ),
          padding: const EdgeInsets.all(15.0),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Programming Languages",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Chip(
                    label: Text("Dart"),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(
                      color: Colors.indigo,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text("Java"),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(
                      color: Colors.indigo,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text("C"),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(
                      color: Colors.indigo,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text("C++"),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(
                      color: Colors.indigo,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text("HTML, CSS"),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(
                      color: Colors.indigo,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text("JavaScript"),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(
                      color: Colors.indigo,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text("PHP"),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(
                      color: Colors.indigo,
                    ),
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : ((context.screenWidth * 0.8) / 3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
          ),
          padding: const EdgeInsets.all(20.0),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Frameworks",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Chip(
                    label: Text("Flutter"),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(
                      color: Colors.indigo,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text(".NET"),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(
                      color: Colors.indigo,
                    ),
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : ((context.screenWidth * 0.8) / 3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
          ),
          padding: const EdgeInsets.all(20.0),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Databases",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Chip(
                    label: Text("Oracle"),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(
                      color: Colors.indigo,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text("MySql"),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(
                      color: Colors.indigo,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text("Firebase"),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(
                      color: Colors.indigo,
                    ),
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
