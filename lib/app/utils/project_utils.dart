class ProjectUtils {
  final String banners;
  final String icons;
  final String titles;
  final String description;
  final String links;
  ProjectUtils({
    required this.banners,
    required this.icons,
    required this.titles,
    required this.description,
    required this.links,
  });
}

List<ProjectUtils> projectUtils = [
  ProjectUtils(
    banners: 'assets/imgs/serphantsid.jpg',
    icons: 'assets/imgs/SerpentID.png',
    titles: 'SerphantsID App',
    description:
        '🐍 Introducing SerphantsID, a revolutionary snake exploration app powered by a cutting-edge Image Classification AI model, meticulously crafted using the Flutter framework and Dart language! 📱',
    links: 'https://github.com/ChanukaHasaranga/serphantsid-re-build',
  ),
  ProjectUtils(
    banners: 'assets/imgs/1.png',
    icons: 'assets/imgs/spotify.png',
    titles: 'Spotify-like App',
    description:
        '🎵 Exciting News! Just launched my latest project - a personalized music streaming app built using Flutter and Dart! 🚀🔊',
    links: 'https://github.com/ChanukaHasaranga/sportify',
  ),
  ProjectUtils(
    banners: 'assets/imgs/03.png',
    icons: 'assets/imgs/habio.png',
    titles: 'Habio App',
    description:
        '🚀 Excited to introduce my latest creation: Habio, a revolutionary daily routing reminder app meticulously crafted using the powerful Flutter framework and Dart language! 📱',
    links: 'https://github.com/ChanukaHasaranga/habio',
  ),
  ProjectUtils(
    banners: 'assets/imgs/04.png',
    icons: 'assets/imgs/mealapp.png',
    titles: 'MealApp',
    description:
        '🍽️ Delighted to unveil my latest creation: a vibrant MealApp crafted with Flutter and Dart! 📱✨ Designed as a comprehensive food ordering application.',
    links: 'https://github.com/ChanukaHasaranga/mealshop',
  ),
];
