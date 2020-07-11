import 'package:flutter/material.dart';
import 'package:fluttermvvmproviderdemo/components/post/post_view.dart';
import 'package:fluttermvvmproviderdemo/notifiers/posts_notifier.dart';
import 'package:fluttermvvmproviderdemo/services/api_service.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  @override
  void initState() {
    PostsNotifier postNotifier =
    Provider.of<PostsNotifier>(context, listen: false);
    ApiService.getPosts(postNotifier);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    PostsNotifier postNotifier = Provider.of<PostsNotifier>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text("MVVM + Provider Demo"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.add),onPressed: (){
              Navigator.pushNamed(context, "/add_post");
            },)
          ],
        ),
        body: postNotifier != null
            ? Container(
            color: Colors.black12,
            child: ListView.builder(
                itemCount: postNotifier.getPostList().length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(0),
                    key: ObjectKey(postNotifier.getPostList()[index]),
                    child: PostView(
                      post: postNotifier.getPostList()[index],
                    ),
                  );
                }))
            : Center(
          child: CircularProgressIndicator(),
        ));
  }
}
