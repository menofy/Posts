import '../../domain/entity/post.dart';
import '../../domain/repository/post_repository.dart';
import '../data_source/post_remote_data.dart';
import '../model/post_model.dart';

class PostRepositoryImp implements PostRepository {
  PostRemoteData postRemoteData;
  PostRepositoryImp(this.postRemoteData);
  List<Post> getAllPosts () {
    return postRemoteData.getAllPosts();
  }
  Post getPost(int id) {
    return postRemoteData.getPost(id);
  }
  void addPost(Post post) {
    final PostModel postModel = PostModel(title: post.title, body: post.body);
    postRemoteData.addPost(postModel);
  }
  void updatePost(Post post) {
    final PostModel postModel = PostModel(title: post.title, body: post.body);
    postRemoteData.updatePost(postModel);
  }
  void deletePost(int id) {
    postRemoteData.deletePost(id);
  }
}