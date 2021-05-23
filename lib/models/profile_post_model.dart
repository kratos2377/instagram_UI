class ProfilePostModel {
  String imagePath = "";

  ProfilePostModel({required String imagePreviewPath}) {
    this.imagePath = imagePreviewPath;
  }
}

final List<ProfilePostModel> posts = [
  ProfilePostModel(imagePreviewPath: 'assets/images/1.jpg'),
  ProfilePostModel(imagePreviewPath: 'assets/images/2.jpg'),
  ProfilePostModel(imagePreviewPath: 'assets/images/3.jpg'),
  ProfilePostModel(imagePreviewPath: 'assets/images/4.jpg'),
  ProfilePostModel(imagePreviewPath: 'assets/images/5.jpg'),
  ProfilePostModel(imagePreviewPath: 'assets/images/6.jpg'),
  ProfilePostModel(imagePreviewPath: 'assets/images/7.jpg'),
  ProfilePostModel(imagePreviewPath: 'assets/images/8.jpg'),
  ProfilePostModel(imagePreviewPath: 'assets/images/9.jpg'),
  ProfilePostModel(imagePreviewPath: 'assets/images/3.jpg'),
  ProfilePostModel(imagePreviewPath: 'assets/images/4.jpg'),
];
