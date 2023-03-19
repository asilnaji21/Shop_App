class BoardingModel {
  final String image;
  final String title;
  final String body;

  BoardingModel({
    required this.title,
    required this.image,
    required this.body,
  });
}

List<BoardingModel> boarding = [
  BoardingModel(
    image: 'assets/images/onboarding1.png',
    title: 'Get the Best Smartphone ',
    body: 'Lorem Ipsum is simply dummy text of the printing and typesetting..',
  ),
  BoardingModel(
    image: 'assets/images/onboarding2.png',
    title:
        ' Great experince with our product                                                 ',
    body: 'Lorem Ipsum is simply dummy text of the printing and typesetting..',
  ),
  BoardingModel(
    image: 'assets/images/onboarding3.png',
    title: 'Get product from at home',
    body: 'Lorem Ipsum is simply dummy text of the printing and typesetting..',
  ),
];
