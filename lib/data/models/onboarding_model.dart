class OnBoardingModel {
  final String title, description, image;
  OnBoardingModel({
    required this.title,
    required this.description,
    required this.image,
  });
  // factory OnBoardingModel.fromJson(jsonData) {
  //   return OnBoardingModel(
  //       id: jsonData['id'],
  //       title: jsonData['title'],
  //       price: double.parse(jsonData['price'].toString()),
  //       description: jsonData['description'],
  //       category: jsonData['category'],
  //       img: jsonData['image'],
  //       rating: Rating.fromJson(jsonData['rating']));
  // }
}
