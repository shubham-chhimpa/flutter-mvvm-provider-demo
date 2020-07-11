import 'package:fluttermvvmproviderdemo/models/post.dart';

class PostViewModel  {
  Post _post;

  setPost(Post post) {
    _post = post;
  }

  Post get post => _post;
}
