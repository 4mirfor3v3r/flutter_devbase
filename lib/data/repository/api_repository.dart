import 'package:devbase/data/local/db_local.dart';
import 'package:devbase/data/rest_api/api_service.dart';

class ApiRepository {
  final RestApi api;
  final DbLocal db;
  const ApiRepository(this.api, this.db);

  void getUserFromApi() {
    api.getFromApi();
  }

  void getUserFromDb() {
    db.getFromDb();
  }
}
