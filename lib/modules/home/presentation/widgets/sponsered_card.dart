import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/sponsered_card_info.dart';

class SponseredCard extends StatelessWidget {
  const SponseredCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 345 / 347,
      child: Card(
        color: Colors.white,
        elevation: 4, // درجة الظل
        shadowColor: Colors.black.withValues(alpha: 0.3),
        child: SponseredCardInfo() ,
      ),
    );
  }
}