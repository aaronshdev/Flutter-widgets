import 'package:fl_components/config/themes/app_theme.dart';
import 'package:fl_components/presentation/providers/theme_provider.dart';
import 'package:fl_components/presentation/widgets/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/models/menu_option.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class MenuListViewScreen extends StatelessWidget {
 const MenuListViewScreen({Key? key}) : super(key: key);

  final options = appMenuItems;

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text("Menu"),
      ),
      body: ListView.separated(
        itemCount: appMenuItems.length,
        itemBuilder: (context, index) {
          final item = appMenuItems[index];
          return _CustomListTile(option: item);
        },
        separatorBuilder: (_, __) => const Divider(),
        // children: [
        //   ...options.map((e) => ListTile(
        //         title: Text(e),
        //         trailing: const Icon(Icons.keyboard_arrow_right_outlined),
        //       )),
        // ],
      ),
      drawer: SideMenu(scaffoldKey: scaffoldKey),
    );
  }
}

class _CustomListTile extends ConsumerWidget {
  const _CustomListTile({
    required this.option,
  });

  final MenuOption option;

  @override
  Widget build(BuildContext context, ref) {
    final colorSelected = ref.watch(selectedColorProvider);
    return ListTile(
      leading: Icon(
        option.icon,
        color: colorList[colorSelected],
      ),
      title: Text(option.name),
      subtitle: Text(option.subtitle),
      trailing: Icon(
        Icons.keyboard_arrow_right_outlined,
        color: colorList[colorSelected],
      ),
      onTap: () {
        //  final route = MaterialPageRoute(builder: builder)
        //  Navigator.push(context, route);
        // Navigator.pushNamed(context, option.route);
        context.push(option.route);
      }
    );
  }
}
