import 'package:messanger/models/user_model.dart';

class Message{
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({this.sender, this.time, this.text, this.isLiked, this.unread});
}

final User Feisel = User(
    id: 0,
    name: 'Feisel',
    imageUrl: 'assets/images/image01');

final User Meaza = User(
    id: 1,
    name: 'Meaza',
    imageUrl: 'assets/images/image02');

final User Kidus = User(
    id: 2,
    name: 'Kidus',
    imageUrl: 'assets/images/image03');

final User Arsema = User(
    id: 3,
    name: 'Arsema',
    imageUrl: 'assets/images/image04');

final User Yeabsira = User(
    id: 4,
    name: 'Yeabsira',
    imageUrl: 'assets/images/image05');

final User Biruk = User(
    id: 5,
    name: 'Biruk',
    imageUrl: 'assets/images/image06');

List<User> favorite = [Feisel, Biruk, Arsema, Yeabsira];

List<Message> chats = [
  Message(sender:Feisel, time:'7:03 PM', text: 'hello how are you ?', isLiked:true, unread:true),
  Message(sender:Feisel, time:'7:03 PM', text: 'hello how are you ?', isLiked:true, unread:true),
  Message(sender:Feisel, time:'7:03 PM', text: 'hello how are you ?', isLiked:true, unread:true),
  Message(sender:Feisel, time:'7:03 PM', text: 'hello how are you ?', isLiked:true, unread:true),
  Message(sender:Feisel, time:'7:03 PM', text: 'hello how are you ?', isLiked:true, unread:true),
  Message(sender:Feisel, time:'7:03 PM', text: 'hello how are you ?', isLiked:true, unread:true),
];
