import 'package:equatable/equatable.dart';

class Image extends Equatable {
  final int? id;
  final String? image;

  const Image({this.id, this.image});

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json['id'] as int?,
        image: json['image'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
      };

  @override
  List<Object?> get props => [id, image];
}
