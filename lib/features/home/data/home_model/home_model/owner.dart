import 'package:equatable/equatable.dart';

class Owner extends Equatable {
  final int? id;
  final String? name;
  final String? email;
  final String? phone;
  final String? image;
  final int? isNotify;
  final int? advsCount;
  final int? userTypeId;
  final String? userTypeName;

  const Owner({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.image,
    this.isNotify,
    this.advsCount,
    this.userTypeId,
    this.userTypeName,
  });

  factory Owner.fromJson(Map<String, dynamic> json) => Owner(
        id: json['id'] as int?,
        name: json['name'] as String?,
        email: json['email'] as String?,
        phone: json['phone'] as String?,
        image: json['image'] as String?,
        isNotify: json['is_notify'] as int?,
        advsCount: json['advs_count'] as int?,
        userTypeId: json['user_type_id'] as int?,
        userTypeName: json['user_type_name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'phone': phone,
        'image': image,
        'is_notify': isNotify,
        'advs_count': advsCount,
        'user_type_id': userTypeId,
        'user_type_name': userTypeName,
      };

  @override
  List<Object?> get props {
    return [
      id,
      name,
      email,
      phone,
      image,
      isNotify,
      advsCount,
      userTypeId,
      userTypeName,
    ];
  }
}
