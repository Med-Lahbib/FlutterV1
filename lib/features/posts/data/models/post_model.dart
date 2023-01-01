import '../../domain/entities/post.dart';

class PostModel extends Post {
  const PostModel(
      {int? id,
      final String? name,
      final String? trainerName,
      final String? description,
      final String? imageURL,
      final String? date})
      : super(
            id: id,
            name: name,
            trainerName: trainerName,
            description: description,
            imageURL: imageURL,
            date: date);

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'],
      name: json['name'],
      trainerName: json['trainerName'],
      description: json['description'],
      imageURL: json['imageURL'],
      date: json['date'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'trainerName': trainerName,
      'description': description,
      'imageURL': imageURL,
      'date': date,
    };
  }
}
