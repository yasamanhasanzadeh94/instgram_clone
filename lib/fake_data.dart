import 'package:untitled6/pages/models/post_model.dart';
import 'package:untitled6/pages/models/story.dart';

List<PostModel> fakeHomeList(){
  List<PostModel> homePosts=[];
  homePosts.add(PostModel("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUDnkndWV6_6v_dks3oYlvJZwW6CQiCsV6Uw&usqp=CAU", "ali_slt", "Hi", 235, "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFXln_wu3DHmzzi11z3Lweq69IkczU1pXbZA&usqp=CAU"));
  homePosts.add(PostModel("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt85hyof5_odk1dRNdny7dczU4L7ukDavDsA&usqp=CAU", "reza.t", "Hello", 140, "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzQmuasfK1qjFkjJL-4h21Yps4e3i0fpHBBQ&usqp=CAU"));
  homePosts.add(PostModel("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzP3k5CiSrTspKh-0GRXbu5lrZlynuHQ82qQ&usqp=CAU", "sara_hz", "Good morning", 124, "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlCeVhPcF0B061dWx6Y2p6ZshztnAoVQI59g&usqp=CAU"));
  homePosts.add(PostModel("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1FCYb5abgPrX1DSfn7umR5Kt7zw5bJ51I0Q&usqp=CAU", "hasan27", "Have a nice day", 500, "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRisv-yQgXGrto6OxQxX62JyvyQGvRsQQ760g&usqp=CAU"));


  return homePosts;
}





List<Story> homeStoriesFake(){
  List<Story> stories = [];
  stories.add(Story("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUDnkndWV6_6v_dks3oYlvJZwW6CQiCsV6Uw&usqp=CAU", "ali_slt"));
  stories.add(Story("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt85hyof5_odk1dRNdny7dczU4L7ukDavDsA&usqp=CAU", "reza.T"));
  stories.add(Story("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_asqgHyKDsFBx8Y1KjHXcKWykNuXf5skzEQ&usqp=CAU", "mohammad"));
  stories.add(Story("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1FCYb5abgPrX1DSfn7umR5Kt7zw5bJ51I0Q&usqp=CAU", "hasan27"));
  stories.add(Story("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzP3k5CiSrTspKh-0GRXbu5lrZlynuHQ82qQ&usqp=CAU", "sara_hz"));
  stories.add(Story("https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/result.jpeg", "sahar.s"));
  stories.add(Story("https://cdn2.iconfinder.com/data/icons/avatar-2/512/laly_face_woman-512.png", "sima.slr"));
  return stories;
}