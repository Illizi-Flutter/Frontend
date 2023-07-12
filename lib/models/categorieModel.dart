import 'package:illizi/models/abstractJson.dart';

class CategorieModel extends AbstractJsonResource{
  String? message;
  List<Data>? data;

  CategorieModel({this.message, this.data});

  CategorieModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? sId;
  String? nom;
  bool? isEnabled;
  int? iV;

  Data({this.sId, this.nom, this.isEnabled, this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    nom = json['nom'];
    isEnabled = json['isEnabled'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['nom'] = this.nom;
    data['isEnabled'] = this.isEnabled;
    data['__v'] = this.iV;
    return data;
  }
}