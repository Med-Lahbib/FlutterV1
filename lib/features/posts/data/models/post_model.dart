import '../../domain/entities/post.dart';

class PostModel extends Post {
  const PostModel(
      {int? id,
      final String? name,
      final String? userId,
      final String? description,
      final String? image,
      final String? date})
      : super(
            id: id,
            name: name,
            userId: userId,
            description: description,
            image: image,
            date: date);

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'],
      name: json['name'],
      userId: json['userId'],
      description: json['description'],
      image: json['image'],
      date: json['date'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'userId': userId,
      'description': description,
      'image': image,
      'date': date,
    };
  }
}
