class CardModel {
  final String image;
  final String title;
  final String? subTitle;
  final String description;
  final String price;

  CardModel( 
      {
      required this.image,
      required this.title,
      this.subTitle,
      required this.description,
      required this.price});
}
