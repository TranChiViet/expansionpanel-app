import 'package:flutter/material.dart';

import '../../models/product.dart';

class ProductCartItem extends StatelessWidget {
  final Product product;
  const ProductCartItem(
    this.product,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildCheckBox(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildImage(),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildName(),
                    _buildCategories(),
                    _buildCoupons(),
                    Row(
                      children: [
                        _buildPrice(),
                        _buildQuantityProduct(),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Text _buildPrice() {
    return Text(
      '\đ ${product.price.toString()}',
      textAlign: TextAlign.center,
      style: const TextStyle(
          color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),
    );
  }

  SizedBox _buildName() {
    return SizedBox(
      // height:50,
      width: 250,
      child: Text(
        product.name,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }

  OutlinedButton _buildCategories() {
    return OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.all(5),
            side: const BorderSide(
              color: Colors.grey,
            )),
        child: Row(
          children: [
            Text(
              'Phân loại: ${product.categories.toString()}',
              style: const TextStyle(color: Colors.grey),
            ),
            const Icon(
              Icons.arrow_drop_down,
              color: Colors.grey,
            ),
          ],
        ));
  }

  ClipRRect _buildImage() {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(5)),
      child: SizedBox(
        width: 150,
        height: 150,
        child: Image.network(
          product.image,
          // width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Checkbox _buildCheckBox() {
    return Checkbox(
      value: false,
      onChanged: (value) {},
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    );
  }

  Widget _buildCoupons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.all(5),
                side: const BorderSide(
                  color: Colors.green,
                )),
            child: const Text(
              'Freeship',
              style: TextStyle(color: Colors.green),
            )),
        const SizedBox(width: 5),
        OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.all(5),
                side: const BorderSide(
                  color: Colors.red,
                )),
            child: const Text(
              'Áp dụng thêm mã giảm giá 20K',
              style: TextStyle(color: Colors.red),
            )),
      ],
    );
  }

  Widget _buildQuantityProduct() {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.remove_circle),
        ),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 0.5),
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Center(
            child: Text('10'),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add_circle),
        ),
      ],
    );
  }
}
