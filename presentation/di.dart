import '../data/data_source/post_remote_data.dart';
import '../data/repository/post_repository_imp.dart';
import '../domain/usecases/add_post.dart';
import '../domain/usecases/delete_post.dart';
import '../domain/usecases/get_all_posts.dart';
import '../domain/usecases/get_post.dart';
import '../domain/usecases/update_post.dart';
import 'states/add_post_state.dart';
import 'states/delete_post_state.dart';
import 'states/get_all_posts_state.dart';
import 'states/get_single_post.dart';
import 'states/update_post_state.dart';

PostRepositoryImp postRepositoryImp = PostRepositoryImp(PostRemoteData());
GetAllPosts getAllPosts = GetAllPosts(postRepositoryImp);
GetPost getPost = GetPost(postRepositoryImp);
AddPost addPost = AddPost(postRepositoryImp);
UpdatePost updatePost = UpdatePost(postRepositoryImp);
DeletePost deletePost = DeletePost(postRepositoryImp);


// States
GetAllPostsState getAllPostsState = GetAllPostsState();
GetSinglePostState getSinglePostState = GetSinglePostState();
AddPostState addPostState = AddPostState();
UpdatePostState updatePostState = UpdatePostState();
DeletePostState deletePostState = DeletePostState();