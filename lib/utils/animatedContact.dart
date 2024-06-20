import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedContact extends StatefulWidget {
  final IconData iconData;
  final String title;
  final String subTitle;
  final VoidCallback onTap;

  const AnimatedContact(
      {Key? key,
      required this.iconData,
      required this.title,
      required this.subTitle,
      required this.onTap})
      : super(key: key);

  @override
  State<AnimatedContact> createState() => _AnimatedContactState();
}

class _AnimatedContactState extends State<AnimatedContact> {
  bool isHoverring = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (val) {
        setState(() {
          isHoverring = val;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: isHoverring ? Colors.grey.shade300 : Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: isHoverring ? Colors.grey : Colors.white,
          ),
        ),
        margin: const EdgeInsets.only(
          top: 10.0,
        ),
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: FaIcon(
                  widget.iconData,
                  size: 20,
                ),
              ),
            ),
            const SizedBox(
              width: 12.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                    widget.subTitle,
                  style: const TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
