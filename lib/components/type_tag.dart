import 'package:flutter/material.dart';

class TypeTag extends StatelessWidget {
  final String name;
  final Color color;

  const TypeTag({
    Key key,
    @required this.name,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 7,
          ),
        ),
      ),
    );
  }
}