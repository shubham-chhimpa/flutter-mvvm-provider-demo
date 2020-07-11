import 'package:flutter/material.dart';
import 'package:fluttermvvmproviderdemo/components/post/post_view_model.dart';
import 'package:fluttermvvmproviderdemo/models/post.dart';

class PostView extends StatefulWidget {
  final Post post;

  PostView({@required this.post});

  @override
  State createState() {
    return PostViewState(post);
  }
}

class PostViewState extends State<PostView> {
  Post post;
  PostViewModel postViewModel;

  PostViewState(this.post){
    postViewModel = new PostViewModel();
    postViewModel.setPost(post);

  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: new Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 0,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 0,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            postViewModel.post.id.toString(),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            postViewModel.post.title,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Divider(
                height: 1,
              ),
            ),
            Expanded(
              flex: 0,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(postViewModel.post.body),
              ),
            ),
            Expanded(
              flex: 0,
              child: Divider(
                height: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
