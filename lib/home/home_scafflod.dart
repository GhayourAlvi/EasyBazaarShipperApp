
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shippers_app/home/tab_items.dart';


class HomeScaffold  extends StatelessWidget {
  const HomeScaffold({Key key, @required this.currentTab, @required this.onSelectTab, @required this.WidgetBuilders}) : super(key: key);

  final Tabitems currentTab;
  final ValueChanged<Tabitems> onSelectTab;

  final Map<Tabitems,WidgetBuilder> WidgetBuilders;

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          _buildItem(Tabitems.location),
          _buildItem(Tabitems.Current),
          _buildItem(Tabitems.wallet),
          _buildItem(Tabitems.history),
          _buildItem(Tabitems.account),

        ],
        onTap: (index) => onSelectTab(Tabitems.values[index]),
      ),
      tabBuilder: (context,index){
        final item = Tabitems.values[index];
        return CupertinoTabView(

          builder: (context) => WidgetBuilders[item](context),
        );
      },
    );
  }

  BottomNavigationBarItem _buildItem(Tabitems tabitems) {
    final itemData = TabItemData.allTabs[tabitems];
    // ignore: unrelated_type_equality_checks
    final color = currentTab == tabitems ? Colors.indigo : Colors.grey;
    return BottomNavigationBarItem(
      icon: Icon(itemData.icon , color: color,),
      title: Text(itemData.title,
      style: TextStyle(
        color: color
      ),),
    );
  }
}
