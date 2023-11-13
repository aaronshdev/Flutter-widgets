import 'package:flutter/material.dart';
import 'package:fl_components/models/menu_option.dart';
import 'package:go_router/go_router.dart';

class MenuListViewScreen extends StatelessWidget {
 const MenuListViewScreen({Key? key}) : super(key: key);

  final options = appMenuItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      )
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.option,
  });

  final MenuOption option;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).primaryColor;
    return ListTile(
      leading: Icon(
        option.icon,
        color: colors,
      ),
      title: Text(option.name),
      subtitle: Text(option.subtitle),
      trailing: Icon(
        Icons.keyboard_arrow_right_outlined,
        color: colors,
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
