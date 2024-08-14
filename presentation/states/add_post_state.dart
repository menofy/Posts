import 'dart:io';
import '../../domain/entity/post.dart';
import '../di.dart';
import '../helpers/msgs.dart';

class AddPostState {
  void call() {
    recieverMsg('the title of the post');
    String title = stdin.readLineSync()!;
    recieverMsg('the body of the post');
    String body = stdin.readLineSync()!;
    addPost(Post(title: title, body: body));
    endTaskMsg();
  }
}