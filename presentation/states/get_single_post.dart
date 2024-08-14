import 'dart:io';
import '../../domain/entity/post.dart';
import '../di.dart';
import '../helpers/msgs.dart';

class GetSinglePostState {
  void call() {
    recieverMsg('the id no. of the wanted post');
    int id = int.parse(stdin.readLineSync()!);
    Post post = getPost(id);
    print('''
Post ID: ${post.id}
Post Title: ${post.title}
Post Body: ${post.body}

''');
    endTaskMsg();
  }
}
