import 'package:app_widgets/presentation/screens/app_tutorial/provider/app_tutorial_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class TutorialScreen extends ConsumerWidget {
  const TutorialScreen({super.key});
  static const name = 'TutorialScreen';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final slides = ref.watch(slidesInfosProvider);
      
    
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          
          physics: const BouncingScrollPhysics(),
          children: slides
              .map((slidedata) => _Slide(
                  title: slidedata.title,
                  caption: slidedata.caption,
                  imagerUrl: slidedata.imageUrl))
              .toList(),
        ),
        Positioned(
          right: 20,
          top: 50,
            child: TextButton(
          child: const  Text('Skip'),
          onPressed: () {
            context.pop();
          },
        ))
      ],
    ));
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imagerUrl;

  const _Slide({
    required this.title,
    required this.caption,
    required this.imagerUrl,
  });

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(imagerUrl),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(title, style: titleStyle),
          const SizedBox(
            height: 10,
          ),
          Text(
            caption,
            style: captionStyle,
          )
        ],
      )),
    );
  }
}
