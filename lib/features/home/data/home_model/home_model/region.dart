import 'package:equatable/equatable.dart';

class Region extends Equatable {
  final int? id;
  final String? name;
  final dynamic productsCount;
  final int? cityId;
  final String? cityName;

  const Region({
    this.id,
    this.name,
    this.productsCount,
    this.cityId,
    this.cityName,
  });

  factory Region.fromJson(Map<String, dynamic> json) => Region(
        id: json['id'] as int?,
        name: json['name'] as String?,
        productsCount: json['products_count'] as dynamic,
        cityId: json['city_id'] as int?,
        cityName: json['city_name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'products_count': productsCount,
        'city_id': cityId,
        'city_name': cityName,
      };

  @override
  List<Object?> get props => [id, name, productsCount, cityId, cityName];
}
