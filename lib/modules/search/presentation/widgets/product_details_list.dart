
import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/modules/search/data/models/product_details_model.dart';
import 'package:stylish_e_commerce/modules/search/presentation/widgets/product_details_category.dart';

class ProductDetailsList extends StatefulWidget {
  const ProductDetailsList({
    super.key,
  });

  @override
  State<ProductDetailsList> createState() => _ProductDetailsListState();
}

class _ProductDetailsListState extends State<ProductDetailsList> {
  final List<ProductDetailsModel> categories = [
    ProductDetailsModel(name: '6 UK', isSelected: true),
    ProductDetailsModel(name: '7 UK'),
    ProductDetailsModel(name: '8 UK'),
    ProductDetailsModel(name: '9 UK'),
    ProductDetailsModel(name: '10 UK'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child:  Row(children: [
           ... categories.map((category) => Padding(
            padding: const EdgeInsets.only(right: 8),
            child: InkWell(
                onTap: () {
                  setState(() {
                    {
                      for (var element in categories) {
                        element.isSelected = false;
                      }
                      category.isSelected = true;
                    }
                  });
                },
                child: ProductDetailsCategory(
                  productDetailsModel: category,
                )),
          )),
          ],),
          
          //  Padding(
          //   padding: const EdgeInsets.only(right: 16),
          //   child: InkWell(
          //       onTap: () {
          //         setState(() {
          //           {
          //             for (var element in categories) {
          //               element.isSelected = false;
          //             }
          //             categories[index].isSelected = true;
          //           }
          //         });
          //       },
          //       child: ProductDetailsCategory(
          //         productDetailsModel: categories[index],
          //       )),
          // );
        
      );
  }
}
