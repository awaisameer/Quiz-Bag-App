// ignore_for_file: prefer_const_constructors, camel_case_types, sort_child_properties_last, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/widgets.dart';

class productlists extends StatefulWidget {
  const productlists({super.key});

  @override
  State<productlists> createState() => _productlistsState();
}

class _productlistsState extends State<productlists> {
  List<String> productsName = [
    'Mango',
    'Orange',
    'Apple',
    'Peach',
    'Grape',
    'Banana',
    'Cherry',
    'Mixed fruits'
  ];
  List<int> productPrice = [
    100,
    178,
    132,
    144,
    155,
    222,
    133,
    200,
  ];
  List<String> productUnits = [
    " KG",
    "DOZEN",
    "G",
    "KG",
    "DOZEN",
    "DOZEN",
    "KG",
    "KG",
  ];
  List<String> productImages = [
    'https://images.pexels.com/photos/2294471/pexels-photo-2294471.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/327098/pexels-photo-327098.jpeg?auto=compress&cs=tinysrgb&w=400',
    'https://images.pexels.com/photos/347926/pexels-photo-347926.jpeg?auto=compress&cs=tinysrgb&w=400',
    'https://images.pexels.com/photos/1268122/pexels-photo-1268122.jpeg?auto=compress&cs=tinysrgb&w=400',
    'https://images.pexels.com/photos/60021/grapes-wine-fruit-vines-60021.jpeg?auto=compress&cs=tinysrgb&w=400',
    'https://images.pexels.com/photos/1093038/pexels-photo-1093038.jpeg?auto=compress&cs=tinysrgb&w=400',
    'https://images.pexels.com/photos/1178610/pexels-photo-1178610.jpeg?auto=compress&cs=tinysrgb&w=400',
    'https://images.pexels.com/photos/12597141/pexels-photo-12597141.jpeg?auto=compress&cs=tinysrgb&w=400',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
        title: Text('Product Lists'),
        actions: const [
          badges.Badge(
            badgeContent: Text('1'),
            child: Icon(Icons.shopping_bag_outlined),
            badgeAnimation: badges.BadgeAnimation.rotation(
                animationDuration: Duration(milliseconds: 200)),
          ),
          SizedBox(
            width: 17,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: productsName.length,
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          fit: BoxFit.cover,
                          height: 100,
                          width: 100,
                          image: NetworkImage(
                            productImages[index].toString(),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                productsName[index].toString(),
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              Row(
                                children: [
                                  Text(
                                    productPrice[index].toString(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(productUnits[index].toString(),
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 35,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.amberAccent),
                                  child: Center(
                                    child: Text(
                                      'Add to Cart',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 82, 73, 73)),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          )),
        ],
      ),
    );
  }
}
