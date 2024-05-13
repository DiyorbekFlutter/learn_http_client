import 'dart:convert';

import 'package:learn_request/service/request_service.dart';
import 'models/note_model.dart';

Future<List<NoteModel>> getNotes() async {
  String? json = await ClientService.get();

  if(json != null) return List<NoteModel>.from(jsonDecode(json).map((e) => NoteModel.fromJson(e)));

  throw Exception("Malumotlarni olib bo'lmadi");
}
