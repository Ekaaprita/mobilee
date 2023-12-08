import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../appwrite/DataBaseController.dart';

class HomeScreenController extends GetxController {
  DatabaseController databaseController = Get.put(DatabaseController());
  RxList<dynamic> data = <dynamic>[].obs;

  @override
  void onInit() {
    super.onInit();
    setUserData();
    print('home controller');
  }

  void setUserData() async {
    final result = await databaseController.getData();
    data.addAll(result);
  }

  void deleteData(String documentId) async {
    await databaseController.deleteData(documentId);
  }
}
