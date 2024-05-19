import 'package:flutter/material.dart';
import 'package:my_portifolio/src/widgets/works/widgets/card_work.dart';

class Works extends StatefulWidget {
  const Works({super.key});

  @override
  State<Works> createState() => _WorksState();
}

class _WorksState extends State<Works> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('EXPERIÊNCIA PROFISSIONAL'),
        SizedBox(
          height: 57,
        ),
        CardWork(
          pathLogo: '',
          company: "Alpha Terceirização(MinÍsterio Publico - TO)",
          durationMothYear: "Maio 2024 - Presente",
          description:
              "As a Senior Software Engineer at Google, I played a pivotal role in developing innovative solutions for Google's core search algorithms. Collaborating with a dynamic team of engineers, I contributed to the enhancement of search accuracy and efficiency, optimizing user experiences for millions of users worldwide.",
        ),
        CardWork(
          pathLogo: '',
          company: "SolarView",
          durationMothYear: "Março 2023 - Dezembro 2023",
          description:
              "As a Senior Software Engineer at Google, I played a pivotal role in developing innovative solutions for Google's core search algorithms. Collaborating with a dynamic team of engineers, I contributed to the enhancement of search accuracy and efficiency, optimizing user experiences for millions of users worldwide.",
        ),
        CardWork(
          pathLogo: '',
          company: "Alpha terceirização",
          durationMothYear: "Maio 2024 - Presente",
          description:
              "As a Senior Software Engineer at Google, I played a pivotal role in developing innovative solutions for Google's core search algorithms. Collaborating with a dynamic team of engineers, I contributed to the enhancement of search accuracy and efficiency, optimizing user experiences for millions of users worldwide.",
        ),
      ],
    );
  }
}
