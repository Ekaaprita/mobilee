import 'package:appwrite/appwrite.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:mobilekelomp/appwrite/ClientController.dart';

class DatabaseController extends ClientController {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<void> createData(String collectionId, Map map) async {
    try {
      await databases.createDocument(
        databaseId: "6572d42c7c42e31ff681",
        documentId: ID.unique(),
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

  Future<void> updateData(
    String collectionId,
    String documentId,
    Map map,
  ) async {
    try {
      await databases.updateDocument(
        databaseId: "6572d42c7c42e31ff681",
        documentId: documentId,
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

  Future<List<dynamic>> getData() async {
    try {
      final result = await databases.listDocuments(
        databaseId: '6572d42c7c42e31ff681',
        collectionId: '6572d473ae3575cfefdf',
      );
      final documents = result.documents;
      var data = [];

      for (var document in documents) {
        data.add(document.data);
      }

      return data;
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

    return [];
  }

  Future<void> deleteData(String documentId) async {
    try {
      await databases.deleteDocument(
          databaseId: '6572d42c7c42e31ff681',
          collectionId: '6572d473ae3575cfefdf',
          documentId: documentId);
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
