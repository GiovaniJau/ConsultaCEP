import 'package:http/http.dart' as http;
import '../models/ResultCep.dart';

class ViaCepService {
  static Future<ResultCep> fetchCep({required String cep}) async {
    Uri uriViaCep = Uri.parse('https://viacep.com.br/ws/$cep/json/');

    final response = await http.get(uriViaCep);

    if (response.statusCode == 200) {
      return ResultCep.fromJson(response.body);
    } else {
      throw Exception('Requisição inválida!');
    }
  }
}