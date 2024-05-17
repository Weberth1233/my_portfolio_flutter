import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portifolio/src/widgets/home/widgets/circular_image.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const CircularImage().paddingOnly(bottom: 39),
        SizedBox(
          width: 656,
          child: Text(
            'I do code and make content about it!',
            style: Theme.of(context).textTheme.displayLarge,
            textAlign: TextAlign.center,
          ),
        ).paddingOnly(bottom: 39),
        SizedBox(
          width: 656,
          child: Text(
            'I am a seasoned full-stack software engineer with over 8 years of professional experience, specializing in backend development.  My expertise lies in crafting robust and scalable SaaS-based architectures on the Amazon AWS platform.',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
