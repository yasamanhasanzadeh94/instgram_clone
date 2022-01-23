class storyFood{
  String name;
  String image;
  storyFood(this.name,this.image);
}
List<storyFood> fakeListStory(){
  List<storyFood> storyFoodList = [];
  storyFoodList.add(storyFood("Offers", "assets/burger-offer.png"));
  storyFoodList.add(storyFood("Sri Lankan", "assets/srilanka.png"));
  storyFoodList.add(storyFood("Italian", "assets/italian.png"));
  storyFoodList.add(storyFood("Indian", "assets/indian.png"));


  return storyFoodList;
}
