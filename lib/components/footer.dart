import 'package:flutter/material.dart';
import 'package:portfolio_site/utils/socialRow.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.only(top: 15.0),
      child: const Column(
        children: [
          SocialRow(),
          SizedBox(height: 10.0,),
          Text(
            "S A H I L",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}
