import 'package:http/http.dart' as http;

import 'package:social_media_application/social_media/response_model.dart';

class AppService {
  Future<List<ResponseModel>> getImages() async {
    final response = await http.get(
      Uri.parse('https://fakestoreapi.com/products'),
    );
    final responseModel = responseModelFromJson(response.body); //converting Json to List<ResponseModel>
    return responseModel;
  }
}
