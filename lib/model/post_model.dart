class Post{
  late int id;
  late int userId;
  late String title;
  late String body;
  Post({required this.id,required this.userId,required this.title,required this.body});

  Post.fromJson(Map<String,dynamic>json): id = json['id'],userId = json['userId'],title = json['title'],body = json['body'];

  Map<String,dynamic>toJson()=>{'id':id,'userId':userId,'title':title,'body':body};
@override
  String toString() {
    return "Id : $id\nUserID : $userId\nTitle : $title\n Body : $body";
  }
}