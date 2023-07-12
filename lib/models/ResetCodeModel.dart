import 'package:illizi/models/abstractJson.dart';

class ResetCodeModel extends AbstractJsonResource{
  String? emailCode;
  String? resetCode;

  ResetCodeModel({this.emailCode, this.resetCode});

  ResetCodeModel.fromJson(Map<String, dynamic> json) {
    emailCode = json['email'];
    resetCode = json['resetCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.emailCode;
    data['resetCode'] = this.resetCode;
    return data;
  }
}