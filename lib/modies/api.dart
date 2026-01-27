import 'dart:convert';
import 'dart:io';
import 'package:flutter_app/modies/disney.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class Api{
  
String link = "https://api.disneyapi.dev/character";

getData() async{
  var uri = Uri.parse(link);
  var response = await http.get(uri);
  var result = jsonDecode(response.body);
  print(result);

  List<Disney> list =[];
  for (var elmint in result["data"]){
    Disney id = Disney.framJson(elmint);
    list.add(id);
  }
  return;
}

}

class DataSave{
  DataSave();
saveData({required String name,required String password}) async{
Map<String,String> user = {"name":name,"password":password};
String jsonString = jsonEncode(user);
final file = File('flutter_app/modies/user_info.json');
await file.writeAsString(jsonString);
}
}