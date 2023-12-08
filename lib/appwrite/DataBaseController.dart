import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:mobilekelomp/appwrite/ClientController.dart';

class DatabaseController extends ClientController {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future createData(String collectionId, Map map) async {
    try {
      await databases.createDocument(
        databaseId: "6569c8adbd0edd5b30c1",
        documentId: '${firebaseAuth.currentUser?.uid}',
        collectionId: collectionId,
        data: map,
      );
    } catch (error) {
      Get.defaultDialog(
        title: "Error Database",
        titlePadding: const EdgeInsets.only(top: 15, bottom: 5),
        titleStyle: Get.context?.theme.textTheme.titleLarge,
        content: Text(
          "$error",
          style: Get.context?.theme.textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        contentPadding: const EdgeInsets.only(top: 5, left: 15, right: 15),
      );
    }
  }

  Future getData() async {
    try {
      final result = await databases.getDocument(
        databaseId: '6569c8adbd0edd5b30c1',
        collectionId: '6569c8adbd0edd5b30c1',
        documentId: '${firebaseAuth.currentUser?.uid}',
      );
      print(result);
    } catch (error) {
      Get.defaultDialog(
        title: "Error Database",
        titlePadding: const EdgeInsets.only(top: 15, bottom: 5),
        titleStyle: Get.context?.theme.textTheme.titleLarge,
        content: Text(
          "$error",
          style: Get.context?.theme.textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        contentPadding: const EdgeInsets.only(top: 5, left: 15, right: 15),
      );
    }
  }
}
