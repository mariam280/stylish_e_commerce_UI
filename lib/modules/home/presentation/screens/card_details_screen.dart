import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/card_details_screen_body.dart';

class CardDetailsScreen extends StatelessWidget {
  const CardDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CardDetailsScreenBody(),
    );
  }
}