import 'package:get_storage/get_storage.dart';

class LocalDatabase {
  static final box = GetStorage();

  final token = ''.val('token', defVal: '');
  ReadWriteValue<List<dynamic>> userHestory =
      ReadWriteValue<List<dynamic>>('userHestory', []);

  deleteUserInfo() {
    box.erase();
  }
}
