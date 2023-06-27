import 'package:flutter/material.dart';
import 'package:fl_components/router/app_routes.dart';

class ListviewMenuScreen extends StatelessWidget {
  ListviewMenuScreen({Key? key}) : super(key: key);

  final options = AppRoutes.menuOptions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Menu"),
        ),
        body: ListView.separated(
          itemCount: AppRoutes.menuOptions.length,
          itemBuilder: (context, index) => ListTile(
              leading: Icon(options[index].icon),
              title: Text(options[index].name),
              trailing: const Icon(Icons.keyboard_arrow_right_outlined),
              onTap: () {
                //  final route = MaterialPageRoute(builder: builder)
                //  Navigator.push(context, route);
                Navigator.pushNamed(context, options[index].route);
              }),
          separatorBuilder: (_, __) => const Divider(),
          // children: [
          //   ...options.map((e) => ListTile(
          //         title: Text(e),
          //         trailing: const Icon(Icons.keyboard_arrow_right_outlined),
          //       )),

          // ],
        ));
  }
}
