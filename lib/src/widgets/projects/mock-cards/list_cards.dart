import 'package:my_portifolio/src/utils/utils_methods.dart';

import '../widgets/card_project.dart';

List<CardProject> cards = [
  CardProject(
    pathImage: 'assets/images/takeumbrella.png',
    text: 'takeYourUmbrellaApp',
    actionGit: () {
      launchURL('https://github.com/Weberth1233/takeYourUmbrellaApp');
    },
    actionFigma: () {
      launchURL(
          'https://www.figma.com/design/hA2ZjyRw81PEsR9C4nCgJj/TakeYourUmbrellaApp?t=otDcBRZICbO6p1yR-0');
    },
  ),
  CardProject(
    pathImage: 'assets/images/swift-vagalumes.png',
    text: 'Aplicativo de Musicas- SWIFT',
    actionGit: () {
      launchURL('https://github.com/Weberth1233/api-vagalumes');
    },
    actionFigma: () {
      launchURL(
          'https://www.figma.com/design/0vyfFAoDcQPDdDODRqWpDs/Api-Vagalumes?t=otDcBRZICbO6p1yR-0');
    },
  ),
  CardProject(
    pathImage: 'assets/images/pokedex.png',
    text: 'Pokedex',
    actionGit: () {
      launchURL('https://github.com/Yhan17/PokeAppBall');
    },
    actionFigma: () {
      launchURL(
          'https://www.figma.com/design/QZnxbHxGnG3OmM44Sbty8N/Pok%C3%A9mon?node-id=0-1&t=otDcBRZICbO6p1yR-0');
    },
  ),
];
