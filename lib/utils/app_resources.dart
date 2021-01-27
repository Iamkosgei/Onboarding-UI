import 'package:on_boarding/models/onboarding_item.dart';

class AppResources {
  //images
  static String distanceEducationImg = "assets/group_1.png";
  static String readingBookImg = "assets/group_2.png";
  static String thingsYouLoveImg = "assets/group_3.png";

//titles
  static String distanceEducationTitle = "Save time by tracking your studies";
  static String readingBookTitle = "Stay on top of your education";
  static String thingsYouLoveTitle =
      "Spend more time doing the things you love";

  //content
  static String distanceEducationContent =
      "Schedule your classes, assignments, quizzes and more";
  static String readingBookContent =
      "Reduce your stress, increase your productivity";
  static String thingsYouLoveContent = "Get started within five minutes";

  static final List<OnBoardingItem> onBoardingItems = [
    OnBoardingItem(
        content: distanceEducationContent,
        title: distanceEducationTitle,
        image: distanceEducationImg),
    OnBoardingItem(
        content: readingBookContent,
        title: readingBookTitle,
        image: readingBookImg),
    OnBoardingItem(
        content: thingsYouLoveContent,
        title: thingsYouLoveTitle,
        image: thingsYouLoveImg)
  ];
}
