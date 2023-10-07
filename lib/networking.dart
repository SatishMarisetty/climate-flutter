import 'dart:convert';
import 'package:http/http.dart' as http;
import 'variables.dart';

http.Response? response;

void setUri(String url)
{
  uri=Uri.parse(url);
  HTTP();
}

Future<void> HTTP() async {
  response = await http.get(uri!);
  data = json.decode(response!.body);
  if (status==1)
  {
    temperature=data['main']['temp'];
    name=data['name'];
  }
  else
  {
    temperature=data['list'][0]['main']['temp'];
    name=data['city']['name'];
  }
}