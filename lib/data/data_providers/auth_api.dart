import 'package:http/http.dart' as http;
class AuthApi
{
  Future<dynamic> signIn() async
  {
     final data = http.post(Uri.parse("https://www.saads.com"),body: {}, headers: );
     return data;
  }
}