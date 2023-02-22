

import 'package:flutter/material.dart';

import 'item.dart';
import 'models/product.dart';

class Screen extends StatelessWidget {
  const  Screen({
    Key? key,
    required this.productsList,
  }) : super(key: key);


  final List<Product> productsList;
 @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionPanelList.radio(
        children: productsList
            .map((product) => ExpansionPanelRadio(
                  value: product.shopId,
                  headerBuilder: (context, isOpen) {
                    return Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (value) {},
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                          ),
                          const SizedBox(width: 10,),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('TOFF Mall Shop'),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.red),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                )),
                          ),
                          const SizedBox(width: 10,),
                          Text(
                            product.shop,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ]);
                  },
                  body: ProductCartItem(product: product),
                ))
            .toList(),
      ),
    );
  }
}