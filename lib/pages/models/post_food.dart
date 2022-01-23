import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class postFood{
  String text;
  String image;

  postFood(this.text,this.image,);
}
List<postFood> fakeListPost(){
  List<postFood> postFoodList = [];

  postFoodList.add(postFood("Minute by tuk tuk", "assets/pizza.png"));
  postFoodList.add(postFood("Cafe de Noir", "assets/breakfast.png"));
  postFoodList.add(postFood("Bakes by Tella", "assets/bakery.png"));




  return postFoodList;
}