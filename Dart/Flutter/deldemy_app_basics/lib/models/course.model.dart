// id, title, subtitle, likes, imageUrl
class CourseModel {
  final int id;
  final String? title;
  final String? subtitle;
  int likes;
  final int? rating;
  final String? imageUrl;
  CourseModel(
    this.id,
    this.title,
    this.subtitle,
    this.likes,
    this.rating,
    this.imageUrl,
  );
}
