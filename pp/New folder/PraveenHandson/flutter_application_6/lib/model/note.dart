class NotesModel{
  final int id;
  final String title;
  final String description;
  final String email;

NotesModel({
  required this.id,
  required this.title,
  required this.description,
  required this.email,
});
NotesModel.fromMap(Map<String,dynamic>res)
:id = res['id'],
title = res['title'],
description = res['description'],
email=res['email'];

 Map<String, Object> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'email': email
    };
  }

}