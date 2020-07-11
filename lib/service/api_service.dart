import 'dart:convert';
import 'package:fluttermvvmproviderdemo/models/post.dart';
import 'package:fluttermvvmproviderdemo/notifiers/posts_notifier.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String API_ENDPOINT =
      "https://jsonplaceholder.typicode.com/posts";

  static getPosts(PostsNotifier postNotifier) async {
    List<Post> postList = [];
    http.get(API_ENDPOINT).then((response) {
      print('Response status: ${response.statusCode}');
      if (response.statusCode == 200) {
        print('Response body: ${response.body}');
      }

      List posts = jsonDecode(response.body);
      posts.forEach((element) {
        postList.add(Post.fromMap(element));
      });

      print(postList.length);
      postNotifier.setPostList(postList);
    });
  }
  static Future<bool> addPost(Post post,PostsNotifier postNotifier) async{
    print("addPost");
    bool result = false;
    await http.post(API_ENDPOINT,headers: {
    "Content-type": "application/json; charset=UTF-8"
    },body: json.encode(post.toMap())).then((response){

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');


      if(response.statusCode == 201){
        print("successful");
        result = true;
        postNotifier.addPostToList(post);
      }
    });

    return result;
  }
}
