import 'package:flutter_app/models/users.dart';
import 'package:http/http.dart' as http;

class Service{
static const String url = 'https://jsonplaceholder.typicode.com/users';

static Future<List<Users>> getUsers() async{
  try{
    final response = await http.get(url);
    if(200 == response.statusCode){
      final List<Users> users = usersFromJson(response.body);
      return users;
    }else{
      return List<Users>();
    }
  }catch(e){
    return List<Users>();
  }
}
}