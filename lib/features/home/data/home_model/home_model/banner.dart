import 'package:equatable/equatable.dart';

class Banner extends Equatable {
  final String? image;

  const Banner({this.image});

  factory Banner.fromJson(Map<String, dynamic> json) => Banner(
        image: json['image'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'image': image,
      };

  @override
  List<Object?> get props => [image];
}
