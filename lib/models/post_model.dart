class Post {
  String authorName;
  String authorImageUrl;
  String timeAgo;
  String imageUrl;

  Post({
    required this.authorName,
    required this.authorImageUrl,
    required this.timeAgo,
   required this.imageUrl,
  });
}

final List<Post> posts = [
  Post(
    authorName: 'Prince Vegeta',
    authorImageUrl: 'assets/images/user0.png',
    timeAgo: '5 min',
    imageUrl: 'assets/images/post0.jpeg',
  ),
  Post(
    authorName: 'Prince Vegeta',
    authorImageUrl: 'assets/images/user0.png',
    timeAgo: '10 min',
    imageUrl: 'assets/images/post1.png',
  ),
];

final List<String> stories = [
  'assets/images/user1.jpg',
  'assets/images/user2.jpg',
  'assets/images/user3.jpg',
  'assets/images/user4.png',
  'assets/images/user0.png',
  'assets/images/user1.jpg',
  'assets/images/user2.jpg',
  'assets/images/user3.jpg',
];
