// ignore_for_file: public_member_api_docs, sort_constructors_first

// Dart imports:
import 'dart:io';

class FileModel {
  final String name;
  final File file;

  const FileModel({
    required this.name,
    required this.file,
  });

  Map<String, dynamic> toJson() => {
        'name': name,
        'file': file,
      };

  @override
  String toString() => 'FileModel(name: $name, file: $file)';
}
