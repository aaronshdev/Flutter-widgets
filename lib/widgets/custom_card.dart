import 'package:flutter/material.dart';
import '../themes/app_theme.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading: Icon(
            Icons.closed_caption,
            color: AppTheme.primary,
          ),
          title: Text('titulo'),
          subtitle: Text(
              'Sint in mollit amet ut ea magna ex consequat dolor qui sint cupidatat. Ut duis ullamco est magna sit officia minim officia. Elit consectetur quis nostrud ad id incididunt do tempor laboris et incididunt veniam. Dolore culpa duis aute ipsum do. Do officia ex reprehenderit irure pariatur tempor. Sit elit aliquip duis mollit duis cupidatat fugiat dolor quis ea.'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Cancelar'),
                style: TextButton.styleFrom(),
              ),
              TextButton(onPressed: () {}, child: Text('Aceptar')),
            ],
          ),
        )
      ]),
    );
  }
}
