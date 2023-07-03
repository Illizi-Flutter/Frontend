class Categorie {
  String? message;
  Data? data;

  Categorie({this.message, this.data});

  Categorie.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? nom;
  bool? isEnabled;
  String? sId;
  int? iV;

  Data({this.nom, this.isEnabled, this.sId, this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    nom = json['nom'];
    isEnabled = json['isEnabled'];
    sId = json['_id'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nom'] = this.nom;
    data['isEnabled'] = this.isEnabled;
    data['_id'] = this.sId;
    data['__v'] = this.iV;
    return data;
  }
}