import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../appwrite/DataBaseController.dart';

class HomeScreenController extends GetxController {
  DatabaseController databaseController = Get.put(DatabaseController());
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  void onInit() {
    super.onInit();
    databaseController.getData();
  }
}
