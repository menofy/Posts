import '../../domain/entity/post.dart';

class PostModel extends Post {
  PostModel({required super.title, required super.body, super.id});

  factory PostModel.fromJson(Map<String, dynamic> data) {
    return PostModel(
      title: data['title'], 
      body: data['body'],
      id: data['id']);
  }
}

Post post = PostModel(title: 'title', body: 'body');