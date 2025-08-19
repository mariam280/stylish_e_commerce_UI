import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/card_details_header.dart';

class CardDetailsScreenBody extends StatelessWidget {
  const CardDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Column(children: [
        CardDetailsHeader(),
      ],),
    );
  }
}