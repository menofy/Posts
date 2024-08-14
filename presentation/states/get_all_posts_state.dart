import '../di.dart';
import '../helpers/msgs.dart';

class GetAllPostsState {
  void call() {
    getAllPosts().forEach((post) {
      print('''
Post ID: ${post.id}
Post Title: ${post.title}
Post Body: ${post.body}

********************************

''');
    });
    endTaskMsg();
  }
}