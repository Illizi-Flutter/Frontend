import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:illizi/controllers/categorieController.dart';
import 'package:illizi/models/CategorieModel.dart';
import 'package:illizi/models/addProduitModel.dart';
import 'package:illizi/view/rechercheView.dart';
import 'package:illizi/widget/customAppBar2.dart';
import 'package:illizi/widget/customButton.dart';

class CategoryView extends GetView<CategorieController>{
  CategoryView({super.key});

   String? selectedValue;
   String dropdownValue = 'Categorie des articles';
   List<String> dropdownLocation = [
     "Msaken",
     "ahloul",
   ];
   @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          CustomAppBar2(titre: 'Catégories des articles',icon: Icons.arrow_back),

      SizedBox(
        height: 10,
      ),
          /*
          DropdownButtonFormField<String>(
          hint: Padding(padding: EdgeInsets.only(left: 20),

              child: Text('${dropdownValue}',style: TextStyle(
                  fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500
              ), ),),
            // decoration:
            // InputDecoration(
            //   border:UnderlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid
            //   )),
              //isCollapsed: true,
          //  ),

     decoration: InputDecoration(
         border: InputBorder.none,
     enabledBorder: OutlineInputBorder(
     borderSide: BorderSide(color: Colors.blue, width: 2))),
      padding: EdgeInsets.all(20),
            //  isExpanded: false,
            onChanged: (String? newValue) {

                dropdownValue = newValue!;
            },
            icon: Icon(Icons.keyboard_arrow_down_sharp, color: Colors.blue, size: 35),
            items: controller.listeCategories?.data!.map<DropdownMenuItem<String>>(
                    (String value) {
                  return DropdownMenuItem<String>(
                    value: value,

                    child: Padding(padding: EdgeInsets.only(left: 20),
                        child:
                        Text(value, style: TextStyle(
                            fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500
                        ),)),);

                } as DropdownMenuItem<String> Function(Data e)).toList(),

          ),*/
          SizedBox(
            height: MediaQuery.of(context).size.height * .55,
          ),
          CustomButton(text: 'Appliquer',color: Colors.blue,function: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> RechercheView()));
          },)



    ],
      ),
    );
  }
}
