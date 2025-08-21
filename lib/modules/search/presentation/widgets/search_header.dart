import 'package:flutter/material.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
      Spacer(),
      IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart))
    ],);
  }
}