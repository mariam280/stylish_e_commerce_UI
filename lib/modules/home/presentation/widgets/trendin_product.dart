import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/modules/home/data/models/card_model.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/lower_home_card_info.dart';

class TrendingProduct extends StatelessWidget {
  const TrendingProduct({
    super.key,
    required this.cardModel,
  });
  final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 142 / 186,
      child: Card(
        color: Colors.white,
        elevation: 6, // درجة الظل
        shadowColor: Colors.black.withValues(alpha: 0.3),
        child: LowerHomeCardInfo(
          description: cardModel.description,
          price: cardModel.price,
          image: cardModel.image,
        ),
      ),
    );
  }
}
