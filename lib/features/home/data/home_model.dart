// class HomeModel {
//   final String message;
//   final bool status;
//   final HomeData? data;

//   HomeModel({required this.message, required this.status, required this.data});
//   factory HomeModel.fromJson(Map<String, dynamic> json) {
//     return HomeModel(
//       message: json['message'],
//       status: json['status'],
//       data: json['data'] != null ? HomeData.fromJson(json['data']) : null,
//     );
//   }
// }

// class HomeData {
//   final List<Banners> banners;
//   final List<UserType> userType;

//   HomeData({required this.banners, required this.userType});
//   factory HomeData.fromJson(Map<String, dynamic> json) {
//     return HomeData(
//       banners: List.from(
//         json['banners'].map(
//           (e) => Banners.fromJson(e),
//         ),
//       ),
//       userType: List.from(
//         json['user_type'].map(
//           (e) => UserType.fromJson(e),
//         ),
//       ),
//     );
//   }
// }

// class Banners {
//   final String image;
//   Banners({required this.image});
//   factory Banners.fromJson(Map<String, dynamic> json) {
//     return Banners(
//       image: json['image'],
//     );
//   }
// }

// class UserType {
//   final int id;
//   final String name;

//   UserType({required this.id, required this.name});
//   factory UserType.fromJson(Map<String, dynamic> json) {
//     return UserType(
//       id: json['id'],
//       name: json['name'],
//     );
//   }
// }
