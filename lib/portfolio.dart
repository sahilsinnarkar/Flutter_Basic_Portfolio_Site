import 'package:flutter/material.dart';
import 'package:portfolio_site/components/footer.dart';
import 'package:portfolio_site/components/skills.dart';

import 'components/about.dart';
import 'components/education.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<Widget> navItems = [];

  bool isMobile = false;
  final skillsKey = GlobalKey();
  @override
  void initState() {
    navItems = [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: () {}, child: const Text("Education")),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: () {
          Scrollable.ensureVisible(skillsKey.currentContext!);
        }, child: const Text("Skills")),
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portfolio"),
        actions: isMobile ? null : navItems,
      ),
      drawer: isMobile
          ? Drawer(
              child: ListView(
                children: navItems,
              ),
            )
          : null,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Wrap(
                alignment: WrapAlignment.center,
                children: [
                  About(),
                  SizedBox(width: 12.0,),
                  Education(),
                ],
              ),
              Skills(
                key: skillsKey,
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
