import 'dart:convert';

import 'package:http/http.dart';
import 'package:untitled11/model/album_model.dart';
import 'package:untitled11/model/post_model.dart';

class NetworkService {
  static const String baseUrl = "jsonplaceholder.typicode.com";

  static Map<String, String> headers = {
    "Content-type": "application/json; charset=UTF-8",
  };

  // static const String api = "posts";

  static const String apiPosts = "/posts";
  static const String apiPost = "/posts/";
  static const String apiAlbums = "/albums";
  static const String apiAlbum = "/albums/";

  static Future<String> GET(String api, Map<String, String> headers) async {
    Uri uri = Uri.https(baseUrl, api);
    Response response = await get(uri, headers: headers);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      throw Exception("Error");
    }
  }

  static Future<String> POST(String api, Map<String, String> headers,
      Map<String, dynamic> body) async {
    Uri url = Uri.https(baseUrl, api);

    Response response = await post(url, headers: headers, body: jsonEncode(body));

    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      throw Exception("Error");
    }
  }
  Future<String> PUT(String api,Map<String,String> headers,Map<String,dynamic> body)async{
    Uri url = Uri.https(baseUrl, api);
    Response response = await put(url,headers: headers,body: jsonEncode(body));
    if(response.statusCode == 200|| response.body == 201){
      return response.body;
    }else{
      throw Exception("Error");
    }
  }

  Future<String> PATCH(String api,Map<String,String> headers,Map<String,dynamic> body)async{
    Uri url = Uri.https(baseUrl, api);
    Response response = await patch(url,headers: headers,body: jsonEncode(body));

    if(response.statusCode == 200|| response.body == 201){
      return response.body;
    }else{
      throw Exception("Error");
    }
  }
Future<String> DELETE(String api,Map<String,String> headers)async{
    Uri url = Uri.https(baseUrl,api);
    Response response = await delete(url,headers: headers);

    if(response.statusCode == 200|| response.body == 201){
      return response.body;
    }else{
      throw Exception("Error");
    }
}
  static List<Post> parsePost(String body) {
    List json = jsonDecode(body);

    List<Post> posts = json.map((e) => Post.fromJson(e)).toList();
    return posts;
  }

  static List<Album> parseAlbum(String body) {
    List json = jsonDecode(body);

    List<Album> album = json.map((e) => Album.fromJson(e)).toList();
    return album;
  }
}
