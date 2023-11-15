import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String tittle;
  final double elevation;
  const CustomCard({
    Key? key, 
    required this.tittle, 
    required this.elevation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Column(children: [
        const Align(
          alignment: Alignment.topRight,
          child: Icon(Icons.more_vert_outlined)
        ),
        ListTile(
          leading: const Icon(
            Icons.closed_caption,
          ),
          title: Text(tittle),
          subtitle: const Text(
            'Sint in mollit amet ut ea magna ex consequat dolor qui sint cupidatat. Ut duis ullamco est magna sit officia minim officia. Elit consectetur quis nostrud ad id incididunt do tempor laboris et incididunt veniam. Dolore culpa duis aute ipsum do. Do officia ex reprehenderit irure pariatur tempor. Sit elit aliquip duis mollit duis cupidatat fugiat dolor quis ea.'
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(),
                child: const Text('Cancelar'),
              ),
              TextButton(onPressed: () {}, child: const Text('Aceptar')),
            ],
          ),
        )
      ]),
    );
  }
}
