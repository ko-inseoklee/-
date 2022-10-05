import 'package:teeth_outsourcing/data/ImageReference.dart';

class UserModel {
  final String name;
  final List<String> method;
  final String profileImage;
  final int score;
  final String description;
  bool isFriend;
  bool isAdding;

  UserModel(this.name, this.method, this.profileImage, this.score, this.description, this.isFriend, this.isAdding);
}

List<UserModel> DummyUserData = [
  UserModel("이닦는 문어",["치실","워터픽","가글"],image_avatar1,88, "양치를 합시다", true, false),
  UserModel("워터 픽미업",["치실","가글"],image_avatar2,86, "양치를 합시다", true, false),
  UserModel("다혜",["워터픽","가글"],image_avatar3,84, "양치를 합시다", true, false),
  UserModel("지우",["가글"],image_avatar4,79, "양치를 합시다", true, false),
  UserModel("세수세포",["치실","가글"],image_avatar5,75, "양치를 합시다", false, false),
  UserModel("덜렁이",[],image_avatar6,32, "양치를 합시다", true, false),
  UserModel("깔끔이",["치실","워터픽","가글"],image_avatar7,91, "양치를 합시다", true, false),
  UserModel("한동이",["치실","워터픽","가글"],image_avatar8,94, "양치를 합시다", true, false),
  UserModel("느헴이",["워터픽"],image_avatar9,74, "양치를 합시다", true, false),
  UserModel("한동이",["치실","워터픽","가글"],image_avatar8,64, "양치를 합시다", false, false),
  UserModel("한동이2",["치실","워터픽","가글"],image_avatar7,55, "양치를 합시다", false, false),
  UserModel("한동이3",["치실","워터픽","가글"],image_avatar6,72, "양치를 합시다", false, false),
  UserModel("한동이4",["치실","워터픽","가글"],image_avatar5,89, "양치를 합시다", true, false),
  UserModel("한동이5",["치실","워터픽","가글"],image_avatar4,43, "양치를 합시다", false, false),
  UserModel("밍기적", ["치실"],image_avatar3, 84, "나와 친구해요", false, false),
  MyProfile
];

UserModel MyProfile = new UserModel("양치기", ["치실","워터픽"], image_profileImage, 87, "양치를 합시다", true, false);