import 'package:flutter/material.dart';
enum Tabitems  {location , Current , wallet , history , account}

class TabItemData {
 const TabItemData({@required this.title, @required this.icon});

 final String title;
  final IconData icon;

static const Map<Tabitems , TabItemData> allTabs = {
  Tabitems.location : TabItemData(title: 'Location' , icon: Icons.location_on ),
  Tabitems.Current : TabItemData(title: 'Current' , icon: Icons.bookmark_border ),
  Tabitems.wallet : TabItemData(title: 'Wallet' , icon: Icons.account_balance_wallet ),
  Tabitems.history : TabItemData(title: 'History' , icon: Icons.history ),
  Tabitems.account : TabItemData(title: 'Account' , icon: Icons.person ),
};


}