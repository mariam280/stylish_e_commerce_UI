import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/modules/home/data/models/card_model.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/upper_home_card_info.dart';

class FavouriteCard extends StatelessWidget {
  const FavouriteCard({
    super.key,
    required this.cardModel,
  });
  final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 164 / 305,
      child: Card(
        color: Colors.white,
        elevation: 6, // درجة الظل
        shadowColor: Colors.black.withValues(alpha: 0.3),
        child: UpperHomeCardInfo(
          title: cardModel.title!,
          description: cardModel.description,
          price: cardModel.price,
          image: cardModel.image,
        ),
      ),
    );
  }
}
