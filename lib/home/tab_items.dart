import 'package:flutter/material.dart';
enum Tabitems  {location , Current , wallet , history , account}

class TabItemData {
 const TabItemData({@required this.title, @required this.icon});

 final String title;
  final IconData icon;

static const Map<Tabitems , TabItemData> allTabs = {
  Tabitems.location : TabItemData(title: 'Status' , icon: Icons.location_on ),
  Tabitems.Current : TabItemData(title: 'Deliveries' , icon: Icons.assignment ),
  Tabitems.wallet : TabItemData(title: 'Map' , icon: Icons.map ),
  Tabitems.history : TabItemData(title: 'Wallet' , icon: Icons.account_balance_wallet ),
  Tabitems.account : TabItemData(title: 'Account' , icon: Icons.account_circle ),
};


}