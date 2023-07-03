import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projet_1/widget/customAppBar2.dart';

class RechercheView extends StatefulWidget {
  const RechercheView({super.key});

  @override
  State<RechercheView> createState() => _RechercheViewState();
}

class _RechercheViewState extends State<RechercheView> {
  List<String> items = [
    'Categorie des articles',
    'etat des articles',
    "Type d'exposition",
    "Type de l'exposition",
    "date de l'exposition",
    'ville'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      CustomAppBar2(titre: 'Recherche', icon: Icons.close),
      SizedBox(height: 20,),
      Text('data'),
      ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return
          Column(children: [
          ListTile(
          title:
          Text(items[index], style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500
          ),),
          ),
            Divider(
              thickness: 1,color: Colors.blue,
            )
          ],);

        },
      )
    ]));
  }
}
