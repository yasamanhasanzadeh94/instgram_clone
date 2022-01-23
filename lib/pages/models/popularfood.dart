class PopularFood{
  String name;
  String image;
  PopularFood(this.name,this.image);
}
List<PopularFood> fakeListpopular(){
  List<PopularFood> popularFoodList = [];
  popularFoodList.add(PopularFood("Cafe De Bambaa", "assets/pizza1.png"));
  popularFoodList.add(PopularFood("Burger by Bambaa", "assets/burger-offer.png"));
  popularFoodList.add(PopularFood("Cafe De Bambaa", "assets/coffe.png"));


  return popularFoodList;
}
