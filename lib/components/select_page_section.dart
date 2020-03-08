import 'package:flutter/material.dart';

class SelectPageSection extends StatefulWidget {
  const SelectPageSection({
    Key key,
  }) : super(key: key);

  @override
  _SelectPageSectionState createState() => _SelectPageSectionState();
}

class _SelectPageSectionState extends State<SelectPageSection> {
  int selected = 0;

  _select(int num) {
    setState(() {
      selected = num;
    });
  }

  @override
  Widget build(BuildContext context) {
    var disabledColor = Colors.grey.withOpacity(0.5);

    var textStyle = TextStyle(
      color: selected == 0 ? Colors.black : disabledColor,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    );
    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: () => _select(0),
          child: Text("All", style: textStyle),
        ),
        SizedBox(width: 20),
        GestureDetector(
          onTap: () => _select(1),
          child: Text(
            "Favourites",
            style: textStyle.copyWith(
              color: selected == 1 ? Colors.black : disabledColor,
            ),
          ),
        ),
      ],
    );
  }
}