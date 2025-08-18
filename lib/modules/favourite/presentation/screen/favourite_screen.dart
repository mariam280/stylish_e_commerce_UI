import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/widgets/custom_background.dart';
import 'package:stylish_e_commerce/modules/favourite/presentation/widgets/favourite_screen_body.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: SafeArea(child: FavouriteScreenBody()),
    );
  }
}