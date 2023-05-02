import 'package:flutter/material.dart';

class AnimationPage extends StatelessWidget {
  const AnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animations"),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
        return FadeInImage.assetNetwork(
          placeholder: "assets/images/loading.gif",
          image: "https://picsum.photos/id/$index/410/200",
          height: 200,
          fadeInCurve: Curves.elasticOut,
        );
      },),
    );
  }
}
