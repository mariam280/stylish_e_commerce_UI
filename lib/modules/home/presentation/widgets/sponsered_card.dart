import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/widgets/custom_card.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/sponsered_card_info.dart';

class SponseredCard extends StatelessWidget {
  const SponseredCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      aspectRatio: 354/374,
      child: SponseredCardInfo());
  }
}