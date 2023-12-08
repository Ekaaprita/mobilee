import 'package:appwrite/appwrite.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ClientController extends GetxController {
  late Client client;
  late Account account;
  late Databases databases;

  @override
  void onInit() {
    client = Client()
        .setEndpoint("https://cloud.appwrite.io/v1")
        .setProject("656bf185b41d2c6857ea")
        .setSelfSigned(status: true);
    account = Account(client);
    databases = Databases(client);
    super.onInit();
  }
}
