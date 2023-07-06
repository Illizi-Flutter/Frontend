import 'package:illizi/models/abstractJson.dart';

class ListeProduitModel extends AbstractJsonResource{
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
  String? sId;
  String? nom;
  int? prix;
  int? quantity;
  String? description;
  String? adresse;
  String? image;
  bool? isEnabled;
  String? etat;
  int? iV;
  String? categorie;

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
        this.iV,
        this.categorie});

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
    iV = json['__v'];
    categorie = json['categorie'];
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
    data['__v'] = this.iV;
    data['categorie'] = this.categorie;
    return data;
  }
}