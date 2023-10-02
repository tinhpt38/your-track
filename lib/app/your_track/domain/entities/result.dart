import 'package:your_track/app/your_track/infra/models/base.dart';

// class Result<T extends BaseModel> implements BaseModel {
//   bool success;
//   String? message;
//   T? data;

//   Result({
//     required this.success,
//     this.message,
//     this.data,
//   });

//   @override
//   Map<String, dynamic> toJson() {
//     return {
//       'success': success,
//       'message': message,
//       'data': data?.toJson(),
//     };
//   }

//   @override
//   factory Result.fromJson(Map<String, dynamic> map) {
//     return Result<T>(
//       success: map['success'] ?? false,
//       message: map['message'] ?? '',
//       // TODO: Allows calling T.fromMap method
//       data: T.fromJson(map['data']),
//     );
//   }

//   @override
//   String collectionName() => data?.collectionName() ?? "";
// }
