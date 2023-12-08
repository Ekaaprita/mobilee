import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../appwrite/DataBaseController.dart';

class UpdateProductScreen extends StatefulWidget {
  final String productId;

  const UpdateProductScreen({super.key, required this.productId});

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  DatabaseController databaseController = Get.put(DatabaseController());
  TextEditingController productName = TextEditingController();
  TextEditingController productDescription = TextEditingController();
  TextEditingController productPrice = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: productName,
                    decoration: InputDecoration(
                      labelText: 'Product Name',
                    ),
                  ),
                  TextField(
                    controller: productDescription,
                    decoration: InputDecoration(
                      labelText: 'Product Descriptions',
                    ),
                  ),
                  TextField(
                    controller: productPrice,
                    decoration: InputDecoration(
                      labelText: 'Product Price',
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      databaseController.updateData(
                          '6572d473ae3575cfefdf', widget.productId, {
                        'name': productName.text,
                        'description': productDescription.text,
                        'price': int.parse(productPrice.text),
                      });
                    },
                    child: Text('Update Product'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
