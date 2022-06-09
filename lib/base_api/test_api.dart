import 'package:http/http.dart' as http;

Future<void> getAPI() async {
  var url = Uri.parse('https://gorest.co.in/public/v2/users');
  var response = await http.get(url);
  print(response.body);
}
