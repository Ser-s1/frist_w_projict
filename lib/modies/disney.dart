import 'package:flutter/foundation.dart';

class Disney {
  int? name;
  int? password;

  Disney({this.name,this.password});


factory Disney.framJson(Map<String,dynamic> json){
return Disney(
 name : json["id"] ??"",
 password : json["password"] ??""
);

}
}