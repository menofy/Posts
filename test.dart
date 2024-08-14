void main () {
  Post post1 = Post();
  Post post2 = Post();
  post1.addPost('data 1');

  print(post1.getPosts()); // ['data 1']
  print('*********');
  print(Post.posts); // ['data 1']
}

class Post {
  static List<String> posts = [];

  void addPost(String data) {
    posts.add(data);
  }

  List<String> getPosts() {
    return posts;
  }
}