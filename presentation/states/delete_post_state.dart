import 'dart:io';

import '../di.dart';
import '../helpers/msgs.dart';

class DeletePostState {
  void call () {
    recieverMsg('the id of the post you want to delete');
    int id = int.parse(stdin.readLineSync()!);
    deletePost(id);
    endTaskMsg();
  }
}