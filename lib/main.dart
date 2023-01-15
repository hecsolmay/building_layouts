import 'package:building_layout/widgets/button_section.dart';
import 'package:building_layout/widgets/text_section.dart';
import 'package:building_layout/widgets/title_section.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            FadeInImage.assetNetwork(
                placeholder: 'images/lake.jpg',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
                image:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRks82xnPkHktj6CIuADhk_R7X1YgibFiEm5A&usqp=CAU'),
            const TitleSection(),
            const ButtonSection(),
            const TextSection(),
          ],
        ),
      ),
    );
  }
}
