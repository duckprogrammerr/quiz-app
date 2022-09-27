import 'package:get/get.dart';
import 'package:quiz_app/models/player.dart';
import 'package:quiz_app/services/api/quiz_api.dart';
import 'package:quiz_app/services/database/local_database.dart';

class QuizController extends GetxController {
  var topPlayers = <Player>[].obs;
  var token = LocalDatabase().token.val;
  getTopPlayers() async {
    List<Player> data = await QuizApi().fetchTopScores(token);
    topPlayers.value = data;
  }
}
