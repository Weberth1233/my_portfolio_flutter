import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:my_portifolio/src/utils/utils_methods.dart';
import '../widgets/card_project.dart';

String urlGittakeYourUmbrellaApp =
    'https://github.com/Weberth1233/takeYourUmbrellaApp';
String urlFigmatakeYourUmbrellaApp =
    'https://www.figma.com/design/hA2ZjyRw81PEsR9C4nCgJj/TakeYourUmbrellaApp?t=otDcBRZICbO6p1yR-0';
String urlGitAppMusic = 'https://github.com/Weberth1233/api-vagalumes';
String urlFigmaAppMusic =
    'https://www.figma.com/design/0vyfFAoDcQPDdDODRqWpDs/Api-Vagalumes?t=otDcBRZICbO6p1yR-0';
String urlGitPokedex = 'https://github.com/Yhan17/PokeAppBall';
String urlFigmaPokedex =
    'https://www.figma.com/design/QZnxbHxGnG3OmM44Sbty8N/Pok%C3%A9mon?node-id=0-1&t=otDcBRZICbO6p1yR-0';

List<CardProject> cards = [
  CardProject(
    pathImage: 'assets/images/takeumbrella.png',
    text: 'takeYourUmbrellaApp',
    actionGit: () {
      launchURL(urlGittakeYourUmbrellaApp);
    },
    actionFigma: () {
      launchURL(urlFigmatakeYourUmbrellaApp);
    },
    endCard: false,
  ),
  CardProject(
    pathImage: 'assets/images/swift-vagalumes.png',
    text: 'Aplicativo de Musicas- SWIFT',
    actionGit: () {
      launchURL(urlGitAppMusic);
    },
    actionFigma: () {
      launchURL(urlFigmaAppMusic);
    },
    endCard: false,
  ),
  CardProject(
    pathImage: 'assets/images/pokedex.png',
    text: 'Pokedex',
    actionGit: () {
      launchURL(urlGitPokedex);
    },
    actionFigma: () {
      launchURL(urlFigmaPokedex);
    },
    endCard: true,
  ),
];
