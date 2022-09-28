import 'package:get_storage/get_storage.dart';

class LocalDatabase {
  static final box = GetStorage();

  final token = ''.val('token', defVal: '');
  final userHestory = <Map<String, dynamic>>[].val('userHestory');

  deleteUserInfo() {
    // box.write('key', Map<String,);
    box.erase();
  }
}
