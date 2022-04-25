

import 'package:untitled11/model/album_model.dart';
import 'package:untitled11/model/post_model.dart';
import 'package:untitled11/service/network_service.dart';



void main()async {
// String body =  await NetworkService.GET(NetworkService.api, NetworkService.headers);
// List<Post> post = NetworkService.parsePost(body);
//
// print(post);
// var album =Post(id: 12, userId: 78, title: 'title', body: 'body');
//   String body =  await NetworkService.POST(NetworkService.apiPosts, NetworkService.headers,album.toJson());
//  // List<Album> post = NetworkService.parseAlbum(body);
//
//   print(body);


 Post post = Post(id: 12, userId: 78, title: "title", body: "body");
String response1 = await NetworkService.GET(NetworkService.apiPost + post.id.toString(), NetworkService.headers);
 String response = await NetworkService.POST(NetworkService.apiPosts, NetworkService.headers, post.toJson());

 print("get: $response1");
  print("get: $response");
}
// // String body = await NetworkService.GET(NetworkService.apiPosts, NetworkService.headers);
// // List<Post> posts = NetworkService.parsePostList(body);
// // print(posts);
//
// // String body = await NetworkService.GET(NetworkService.apiAlbums, NetworkService.headers);
// // List<Album> albums = NetworkService.parseAlbumList(body);
// // print(albums);
// Post post = Post(id: 12, userId: 78, title: "title", body: "body");
// // String response = await NetworkService.POST(NetworkService.apiPosts, NetworkService.headers, post.toJson());
// String response1 = await NetworkService.GET(NetworkService.apiPost + post.id.toString(), NetworkService.headers);
// print("get: $response1");
// // String response = await NetworkService.PUT(NetworkService.apiPost + post.id.toString(), NetworkService.headers, post.toJson());
// // String response = await NetworkService.PATCH(NetworkService.apiPost + post.id.toString(), NetworkService.headers, {'title': "salom"});
// String response = await NetworkService.DELETE(NetworkService.apiPost + post.id.toString(), NetworkService.headers);
//
// print("delete: $response");