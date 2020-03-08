import 'package:flutter/material.dart';

class AppTabBar extends StatefulWidget {
  const AppTabBar({
    Key key,
  }) : super(key: key);

  @override
  _AppTabBarState createState() => _AppTabBarState();
}

class _AppTabBarState extends State<AppTabBar>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.bold,
    );

    return TabBar(
      controller: _tabController,
      indicatorColor: Colors.black,
      indicatorSize: TabBarIndicatorSize.label,
      labelPadding: EdgeInsets.symmetric(horizontal: 5),
      isScrollable: true,
      tabs: <Widget>[
        Text("Pokemon", style: textStyle),
        Text("Items", style: textStyle),
        Text("Gyms", style: textStyle),
        Text("Characters", style: textStyle),
      ],
    );
  }
}