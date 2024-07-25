import 'package:flutter/material.dart';
class HeroAnimationDetails extends StatefulWidget {
  const HeroAnimationDetails({super.key});

  @override
  State<HeroAnimationDetails> createState() => _HeroAnimationDetailsState();
}

class _HeroAnimationDetailsState extends State<HeroAnimationDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation 2'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Hero(
              tag: 'tphu.jpg',
              child: Image.asset('assets/image/tphu.jpg'))
        ],
      ),
    );
  }
}
