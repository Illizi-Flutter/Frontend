import 'package:illizi/models/abstractJson.dart';

class ListeProduitModel extends AbstractJsonResource {
  String? status;
  String? message;
  List<Data>? data;

  ListeProduitModel({this.status, this.message, this.data});

  ListeProduitModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
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
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? id;
  String? nom;
  int? prix;
  int? quantity;
  String? username;
  String? imageUser;
  String? imageProd;

  Data(
      {this.id,
      this.nom,
      this.prix,
      this.quantity,
      this.username,
      this.imageUser,
      this.imageProd});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nom = json['nom'];
    prix = json['prix'];
    quantity = json['quantity'];
    username = json['username'];
    imageUser = json['imageUser'];
    imageProd = json['imageProd'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nom'] = this.nom;
    data['prix'] = this.prix;
    data['quantity'] = this.quantity;
    data['username'] = this.username;
    data['imageUser'] = this.imageUser;
    data['imageProd'] = this.imageProd;
    return data;
  }
}
