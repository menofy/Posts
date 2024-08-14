import 'dart:convert';

import '../../core/mixins.dart';
import '../model/post_model.dart';

class PostRemoteData with GenerateId<PostModel> {
  static String posts = '';
  List<PostModel> getAllPosts () {
    List<dynamic> data = jsonDecode(posts);
    return data.map<PostModel>((post) => PostModel.fromJson(post)).toList();
  }
  PostModel getPost(int id) {
    return getAllPosts().firstWhere((post) => post.id == id);
  }
  void addPost(PostModel post) {
    List<PostModel> data = getAllPosts();
    post.id = getId(data);
    data.add(post);
    posts = jsonEncode(data);
    print('Post is added'); 
  }

  void updatePost(PostModel post) {
    List<PostModel> data = getAllPosts();
    data = data.map<PostModel>((p) {
      if(p.id == post.id) {
        return post;
      }
      return p;
    }).toList();
    posts = jsonEncode(data);
    print('post is updated');
  }

  void deletePost(int id) {
    List<PostModel> data = getAllPosts();
    data.removeWhere((post) => post.id == id);
    print('post is deleted');
  }
}


