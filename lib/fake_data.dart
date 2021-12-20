import 'package:untitled6/pages/models/post_model.dart';
import 'package:untitled6/pages/models/story.dart';

List<PostModel> fakeHomeList(){
  List<PostModel> homePosts=[];
  homePosts.add(PostModel("", "userName", "caption", 235, ""));
  homePosts.add(PostModel("", "userName1", "caption1", 140, ""));
  homePosts.add(PostModel("", "userName2", "caption2", 124, ""));
  homePosts.add(PostModel("", "userName3", "caption3", 500, ""));


  return homePosts;
}

List<Story> homeStoriesFake(){
  List<Story> stories = [];
  stories.add(Story("avatar", "userName"));
  stories.add(Story("avatar1", "userName1"));
  stories.add(Story("avatar2", "userName2"));
  stories.add(Story("avatar3", "userName3"));
  stories.add(Story("avatar4", "userName4"));
  stories.add(Story("avatar5", "userName5"));
  stories.add(Story("avatar6", "userName6"));
  return stories;
}