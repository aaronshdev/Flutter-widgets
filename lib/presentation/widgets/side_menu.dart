import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SideMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const SideMenu({super.key, required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;
  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;
    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {
        setState(() {
          navDrawerIndex = value;
        });
        final menuItem = appMenuItems[value];
        context.push(menuItem.route);
        widget.scaffoldKey.currentState?.closeDrawer();
      },
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(20, hasNotch ? 10 : 20, 15, 20),
          child: const Text('Menu'),
        ),
        ...appMenuItems.sublist(0, 3).map((item) =>
            NavigationDrawerDestination(
                icon: Icon(item.icon), label: Text(item.name))),
        const Padding(
          padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
          child: Divider(),
        ),
        ...appMenuItems.sublist(3, 6).map((item) =>
            NavigationDrawerDestination(
                icon: Icon(item.icon), label: Text(item.name))),
        const Padding(
          padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
          child: Divider(),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, hasNotch ? 10 : 20, 15, 20),
          child: const Text('Mas opciones'),
        ),
        ...appMenuItems.sublist(6).map((item) => NavigationDrawerDestination(
            icon: Icon(item.icon), label: Text(item.name))
        ),
      ]
    );
  }
}
