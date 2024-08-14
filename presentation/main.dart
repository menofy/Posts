import 'di.dart';
import 'helpers/msgs.dart';
import 'dart:io';

void main () {
  while (true) {
    welcomeMsg();
    int choice = int.parse(stdin.readLineSync()!);
    switch(choice) {
      case 1:
        getAllPostsState();
      case 2:
        getSinglePostState();
      case 3:
        addPostState();
      case 4:
        updatePostState();
      case 5:
        deletePostState();
      case 6:
        exit(0);
      default:
        print('Invalid choice. Please try again.');
    }
  }
}