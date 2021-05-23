class Comment {
  String authorName;
  String authorImageUrl;
  String text;

  Comment({
    required this.authorName,
    required this.authorImageUrl,
    required this.text,
  });
}

final List<Comment> comments = [
  Comment(
    authorName: 'BROLY',
    authorImageUrl: 'assets/images/user2.jpg',
    text: 'Fight BROLY...!!!',
  ),
  Comment(
    authorName: 'Gohan',
    authorImageUrl: 'assets/images/user3.jpg',
    text: 'Yo Vegeta That\'s Cool...... ',
  ),
  Comment(
    authorName: 'Future Trunks',
    authorImageUrl: 'assets/images/user4.png',
    text: 'Aww. I was So Cute',
  ),
  Comment(
    authorName: 'Goku',
    authorImageUrl: 'assets/images/user1.jpg',
    text: 'Gonna Train With Whis. Wanna Join?',
  ),
  Comment(
    authorName: 'Prince Vegeta',
    authorImageUrl: 'assets/images/user0.png',
    text: 'We leave at 8pm today Kakarot.',
  ),
];
