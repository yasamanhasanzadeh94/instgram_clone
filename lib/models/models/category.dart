
import 'package:untitled6/pages/profile_page.dart';

class Model{
  String name;
  String image;
  Model(this.name,this.image);
}
List<Model> fakeListCategory(){
  List<Model> categoryList = [];
  categoryList.add(Model("Offers", "assets/burger-offer.png"));
  categoryList.add(Model("Sri Lankan", "assets/srilanka.png"));
  categoryList.add(Model("Italian", "assets/italian.png"));
  categoryList.add(Model("Indian", "assets/indian.png"));


  return categoryList;
}


List<Model> fakeListPopular() {
  List<Model> popularFoodList = [];
  popularFoodList.add(Model("Cafe De Bambaa", "assets/pizza1.png"));
  popularFoodList.add(
      Model("Burger by Bambaa", "assets/burger-offer.png"));
  popularFoodList.add(Model("Cafe De Bambaa", "assets/coffe.png"));
  return popularFoodList;
}


List<Model> fakeListRestaurant(){
  List<Model> restaurantList = [];

  restaurantList.add(Model("Minute by tuk tuk", "assets/pizza.png"));
  restaurantList.add(Model("Cafe de Noir", "assets/breakfast.png"));
  restaurantList.add(Model("Bakes by Tella", "assets/bakery.png"));



  return restaurantList;
}

List<Model> fakeListRecent(){
  List<Model> recentList = [];

  recentList.add(Model("Mulberry pizza by Josh ", "assets/pizaar.png"));
  recentList.add(Model("Barita", "assets/coffe.png"));
  recentList.add(Model("Pizza Rush Hour", "assets/pizza1.png"));




  return recentList;
}

List<Model> fakeListProfile(){
  List<Model> profileList = [];
  profileList.add(Model("Emilia", "assets/emilia.png"));



  return profileList;

}