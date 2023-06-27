import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(10, 25, 10, 10),
        children: const [
          CustomCard(),
          CustomImageScreen(
            imageURL:
                'https://www.nationalgeographic.com.es/medio/2022/11/08/lobo-negro-canis-lupus_227e9678_1280x960.jpg',
            nameImage: 'Black wolf',
          ),
          CustomImageScreen(
              imageURL:
                  'https://atlasanimal.com/wp-content/uploads/2021/02/lobo.jpg.webp'),
          CustomImageScreen(
            imageURL:
                'https://www.nationalgeographic.com.es/medio/2022/12/12/lobo-1_dce3fc33_221212160111_1280x720.jpg',
            nameImage: 'Gray wolf',
          )
        ],
      ),
    );
  }
}
