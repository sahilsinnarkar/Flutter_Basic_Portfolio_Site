import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedIconButton extends StatefulWidget {
  final IconData iconData;
  final VoidCallback onTap;

  const AnimatedIconButton(
      {Key? key,
        required this.iconData,
        required this.onTap})
      : super(key: key);

  @override
  State<AnimatedIconButton> createState() => _AnimatedContactState();
}

class _AnimatedContactState extends State<AnimatedIconButton> {
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
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: FaIcon(
                widget.iconData,
                size: 28.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
