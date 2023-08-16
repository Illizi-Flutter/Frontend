import 'package:illizi/models/abstractJson.dart';

class GetProductModel extends AbstractJsonResource{
  String? status;
  String? message;
  Data? data;

  GetProductModel({this.status, this.message, this.data});

  GetProductModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? sId;
  String? nom;
  int? prix;
  int? quantity;
  String? description;
  String? adresse;
  String? image;
  bool? isEnabled;
  String? etat;
  String? categorie;
  String? userId;
  int? iV;

  Data(
      {this.sId,
        this.nom,
        this.prix,
        this.quantity,
        this.description,
        this.adresse,
        this.image,
        this.isEnabled,
        this.etat,
        this.categorie,
        this.userId,
        this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    nom = json['nom'];
    prix = json['prix'];
    quantity = json['quantity'];
    description = json['description'];
    adresse = json['adresse'];
    image = json['image'];
    isEnabled = json['isEnabled'];
    etat = json['etat'];
    categorie = json['categorie'];
    userId = json['user_id'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['nom'] = this.nom;
    data['prix'] = this.prix;
    data['quantity'] = this.quantity;
    data['description'] = this.description;
    data['adresse'] = this.adresse;
    data['image'] = this.image;
    data['isEnabled'] = this.isEnabled;
    data['etat'] = this.etat;
    data['categorie'] = this.categorie;
    data['user_id'] = this.userId;
    data['__v'] = this.iV;
    return data;
  }
}