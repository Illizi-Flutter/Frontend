import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projet_1/widget/customAppBar.dart';

import '../widget/customProductList.dart';

class ListeView extends StatefulWidget {
  const ListeView({super.key});

  @override
  State<ListeView> createState() => _ListeViewState();
}

class _ListeViewState extends State<ListeView> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height ,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: SingleChildScrollView(

    child: Column(
      children: [
        CustomAppBar(),
        SingleChildScrollView(
          child: ListView.builder(
              controller: scrollController,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return const Column(
                  children: [
                    CustomProductList(imageUser: 'assets/images/logo.png',nbrArticle: '1',
                      quantiteRestante: '0',prix: '62500',imageProd: 'assets/images/produit.png',),
                    SizedBox(
                      height: 10,
                    )
                  ],
                );
              },
              itemCount: 10),
        )
      ],
    )),
    )

        //       Column(
        //   children: [
        //       CustomAppBar(),
        //       SizedBox(
        //         height: 20,
        //       ),
        //       Text('data', ),
        //       ListView.builder(
        //         itemCount: 1,
        //         itemBuilder: (BuildContext context, int index) {
        //           return Text('rrrrrrr $index');
        //         },
        //       ),
        //       Text('gggg')
        //   ],
        // ),
        );
  }
}
