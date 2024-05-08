import 'package:http/http.dart' as http;

Future<void> login(String username, String password) async {
  final url = Uri.parse('http://localhost:3000/login');
  final response = await http.post(
    url,
    body: {'username': username, 'password': password},
  );

  if (response.statusCode == 200) {
    print('Login successful');
  } else {
    print('Login failed');
  }
}
