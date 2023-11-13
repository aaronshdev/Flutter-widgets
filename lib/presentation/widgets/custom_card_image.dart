import 'package:flutter/material.dart';

class CustomImageScreen extends StatelessWidget {
  const CustomImageScreen({Key? key, required this.imageURL, this.nameImage})
      : super(key: key);
  final String imageURL;
  final String? nameImage;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 20,
      child: Column(
        children: [
          Stack(
            children: [
          FadeInImage(
            placeholder: const AssetImage('assets/loadings/jar-loading.gif'),
            image: NetworkImage(imageURL),
            width: double.infinity,
            height: 240,
            fit: BoxFit.cover,
            // fadeInDuration: Duration(microseconds: 1000),
          ),
              Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))
              ),
              child: IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert_rounded)),
             )
          ),
            ],
          ),
          Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
              child: Text(nameImage ?? 'No name'))
        ],
      ),
    );
  }
}
