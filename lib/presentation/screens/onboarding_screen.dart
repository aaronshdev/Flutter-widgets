import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  const SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  const SlideInfo(
    'Cupidatat veniam et dolore reprehenderit',
    'Reprehenderit ipsum officia quis consectetur voluptate eiusmod mollit exercitation in do commodo ut.',
    'assets/onboarding/1.png'),
  const SlideInfo(
    'Ad aute consectetur eu reprehenderit pariatur qui ullamco dolor.',
    'Laboris elit ex qui excepteur magna sunt magna do dolor voluptate.',
    'assets/onboarding/2.png'),
  const SlideInfo(
    'Laboris qui Lorem id et exercitation',
    'Pariatur non excepteur cupidatat amet reprehenderit qui.',
    'assets/onboarding/3.png'),
];

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController pageViewController = PageController();
  bool finalPage = false;
  @override
  void initState() {
    super.initState();
    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;
      if (!finalPage && page >= slides.length - 1.5) {
        setState(() {
          finalPage = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            physics: const BouncingScrollPhysics(),
            //primera forma
            children: slides.map((data) =>
              _SlideWidget(data.title, data.caption, data.imageUrl)
            ).toList(),
            //segunda forma
            // children: [
            //   ...slides.map(
            //     (data)=> _SlideWidget(data.title, data.title, data.imageUrl)
            //   ),
            // ],
          ),
          Positioned(
            right: 20,
            top: 40,
            child: TextButton(
              child: const Text('Skipe'),
              onPressed: () => context.pop(),
            )
          ),
          Visibility(
            visible: finalPage,
            child: Positioned(
              right: 20,
              bottom: 20,
              child: FadeInRight(
                from: 15,
                delay: const Duration(seconds: 1),
                child: FilledButton(
                  child: const Text('Comenzar'),
                  onPressed: () {},
                ),
              )
            ),
          )
        ],
      ),
    );
  }
}

class _SlideWidget extends StatelessWidget {
  final String title;
  final String caption;
  final String urlImage;
  const _SlideWidget(this.title, this.caption, this.urlImage);

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(urlImage)),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              title,
              style: titleStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              caption,
              style: captionStyle,
            ),
          ),
        ]
      ),
    );
  }
}
