import 'package:flutter_api/models/post.dart';
import 'package:http/http.dart' as http;

class PostsProvider {

  Future<List<Post>?> getPosts() async 
  {
    var client = http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await client.get(uri);

    if(response.statusCode == 200){

      var json = response.body;
      return postFromJson(json);
    }
  }
}