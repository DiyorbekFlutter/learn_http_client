class NoteModel {
  String id;
  String title;
  String note;
  String createDate;
  String updateDate;

  NoteModel({
    required this.id,
    required this.title,
    required this.note,
    required this.createDate,
    required this.updateDate
  });

  factory NoteModel.fromJson(Map<String, dynamic> json){
    return NoteModel(
      id: json['id'] as String,
      title: json['title'] as String,
      note: json['note'] as String,
      createDate: json['createDate'] as String,
      updateDate: json['updateDate'] as String
    );
  }

  Map<String, dynamic> get toJson => {
    "title": title,
    "note": note,
    "createDate": createDate,
    "updateDate": updateDate
  };
}

List<NoteModel> notes = [];
