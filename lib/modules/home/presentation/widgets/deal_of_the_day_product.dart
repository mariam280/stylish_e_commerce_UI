import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/modules/home/data/models/card_model.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/home_card_info.dart';

class DealOfTheDayProduct extends StatelessWidget {
  const DealOfTheDayProduct({
    super.key, required this.cardModel,
  });
  final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 170/241,
      child: Card(
        color: Colors.white,
        elevation: 6, // درجة الظل
        shadowColor: Colors.black.withValues(alpha: 0.3),
        child: HomeCardInfo(
            title: cardModel.title, description: cardModel.description, price: cardModel.price, image: cardModel.image),
      ),
    );
  }
}
