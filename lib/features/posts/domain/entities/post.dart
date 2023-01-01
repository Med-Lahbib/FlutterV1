import 'package:equatable/equatable.dart';

class Post extends Equatable {
  final int? id;
  final String? name;
  final String? trainerName;
  final String? description;
  final String? imageURL;
  final String? date;

  const Post({
    this.id,
    required this.name,
    required this.trainerName,
    required this.description,
    required this.imageURL,
    required this.date,
  });

  @override
  List<Object?> get props =>
      [id, name, trainerName, description, imageURL, date];
}
