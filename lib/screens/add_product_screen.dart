import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobilekelomp/appwrite/DataBaseController.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
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
                      databaseController.createData('6572d473ae3575cfefdf', {
                        'name': productName.text,
                        'description': productDescription.text,
                        'price': int.parse(productPrice.text),
                      });
                    },
                    child: Text('Add Product'),
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
