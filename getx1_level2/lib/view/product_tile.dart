import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/product_model.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  width: 400,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Image.network(
                    product.imageLink,
                    fit: BoxFit.fill,
                  ),
                ),
                Obx(
                  ()=> CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15,
                    child: IconButton(
                      onPressed: () {
                        product.like.toggle();
                      },
                      icon: Icon(
                        product.like.value ? Icons.favorite_rounded :
                        Icons.add,
                      ),
                      iconSize: 18,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            Text(
              '${product.name}',
              maxLines: 2,
              style: TextStyle(fontWeight: FontWeight.bold),
              //초과된 부분을 "..." (ellipsis)으로 축약하여 표시합니다
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${product.rating.toString()}',
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.star,
                    size: 16,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            SizedBox(height: 8),
            Text(
              '\$ ${product.price}',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
