// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

// Project imports:
import '../../../core/utils/enums.dart';
import '../../../core/utils/extension.dart';
import '../../../core/utils/file_model.dart';

class PickDocumentHelper {
  FileSource fileSource;
  final List<String> allowedExtensions;

  PickDocumentHelper({
    required this.fileSource,
    this.allowedExtensions = const ['pdf', 'doc', 'docx'],
  });

  set changeSource(FileSource fileSource) {
    this.fileSource = fileSource;
  }

  Future<List<FileModel>?> pick({bool isMulti = false}) async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: allowedExtensions,
        allowMultiple: isMulti,
      );

      if (result != null) {
        List<FileModel> fileList = [];
        
        for (var platformFile in result.files) {
          if (platformFile.path.isNotNull) {
            File file = File(platformFile.path!);
            String fileName = platformFile.name;
            
            // Check file extension
            final extension = path.extension(fileName).toLowerCase().replaceAll('.', '');
            if (!allowedExtensions.contains(extension)) {
              debugPrint('Invalid file extension: $extension');
              continue;
            }
            
            // Create FileModel
            fileList.add(
              FileModel(
                name: fileName,
                file: file,
              ),
            );
          }
        }
        
        if (fileList.isEmpty) return null;
        return fileList;
      }
      return null;
    } catch (e) {
      debugPrint('Error picking document: $e');
      return null;
    }
  }

  // Save file to app directory for persistence
  Future<File?> saveFile(File file) async {
    try {
      final appDir = await getApplicationDocumentsDirectory();
      final fileName = path.basename(file.path);
      final savedFile = await file.copy('${appDir.path}/$fileName');
      return savedFile;
    } catch (e) {
      debugPrint('Error saving file: $e');
      return null;
    }
  }
}
