import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/widgets/custom_card.dart';

class ChangeLanguageButton extends StatelessWidget {
  const ChangeLanguageButton(
      {super.key, required this.languageName, required this.image, this.onTap});
  final String languageName, image;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CustomCard(
        aspectRatio: 182 / 30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(languageName),
            CircleAvatar(
              radius: 10,
              backgroundImage: AssetImage(
                image,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


