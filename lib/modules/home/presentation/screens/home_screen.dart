import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/widgets/custom_background.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
        child: Column(children: [
          Text('HomeView...'),
        ],),
        // child: CustomScrollView(
        //   slivers: [
        //     SliverToBoxAdapter(child: Text('HomeView...'),),
        //   ],
        // ),
      ));
  }
}