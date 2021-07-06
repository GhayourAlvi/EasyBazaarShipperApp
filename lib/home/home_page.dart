import 'package:flutter/material.dart';
import 'package:shippers_app/home/tab_items.dart';
import 'home_scafflod.dart';


class HomePage  extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Tabitems _currentTab = Tabitems.location;

  Map<Tabitems,WidgetBuilder> get WidgetBuilders{
    return{
      Tabitems.location : (_) => Container(),
      Tabitems.Current : (_) => Container(),
      Tabitems.wallet : (_) => Container(),
      Tabitems.history : (_) => Container(),
      Tabitems.account : (_) => Container(),
    };
  }


  void _select (Tabitems tabitems){
setState(()=> _currentTab = tabitems);
  }


  @override
  Widget build(BuildContext context) {
    return HomeScaffold(
      currentTab: _currentTab,
      onSelectTab: _select,
      WidgetBuilders: WidgetBuilders,
    );
  }
}

