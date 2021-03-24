import 'package:screening/models/ApiResponse.dart';
import 'package:http/http.dart' as http;
import 'package:screening/utils/Constants.dart';

class AppRepository {
  Future<List<ApiResponse>> fetchTodoList() async {
    final response = await http.get(BASE_URL + "/todos?_limit=15");
    print(response.body);
    return apiResponseFromJson(response.body);
  }
}
