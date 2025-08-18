class CardModel {
  final String image;
  final String? title;
  final String description;
  final String price;

  CardModel( 
      {
      required this.image,
       this.title,
      required this.description,
      required this.price});
}
