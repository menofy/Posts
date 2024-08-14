import 'dart:io';

import '../../domain/entity/post.dart';
import '../di.dart';
import '../helpers/msgs.dart';

class UpdatePostState {
  void call() {
    recieverMsg('the id of the post you want to edit');
    int id = int.parse(stdin.readLineSync()!);
    Post post = getPost(id);
    recieverMsg('the new title of the post');
    String title = stdin.readLineSync()!;
    recieverMsg('the new body of the post');
    String body = stdin.readLineSync()!;
    updatePost(Post(title: title, body: body, id: post.id));
    endTaskMsg();
  }
}