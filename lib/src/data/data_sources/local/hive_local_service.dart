/* // Dart imports:

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:hive_flutter/hive_flutter.dart';

// Project imports:
import '../../../core/error/app_exception.dart';

class HiveLocalService {
  Future<bool> _boxExists({required String box}) async {
    return await Hive.boxExists(box);
  }

  Future<Box<String>?> getBox({required String box}) async {
    try {
      if (await _boxExists(box: box)) {
        if (!Hive.isBoxOpen(box)) {
          return await Hive.openBox<String>(box);
        }
        return Hive.box<String>(box);
      }
    } catch (e) {
      throw AppException(e);
    }
    return null;
  }

  Future<bool> store({
    required String box,
    required String key,
    required dynamic value,
  }) async {
    if (value == null || value.toString().isEmpty) {
      return false;
    }
    Box? b = await getBox(box: box);
    if (b == null) return false;
    try {
      await b.put(key, jsonEncode(value));
      b.flush();
      return true;
    } catch (e) {
      throw AppException(e);
    }
  }

  Future<bool> deleteKey({required String box, required String key}) async {
    try {
      Hive.box(box).delete(key);
      return true;
    } catch (e) {
      throw AppException(e);
    }
  }

  Future<bool> deleteBox({required String box}) async {
    try {
      Hive.box(box).clear();
      return true;
    } catch (e) {
      throw AppException(e);
    }
  }

  Future<bool> clear() async {
    try {
      await Hive.deleteFromDisk();
      return true;
    } catch (e) {
      throw AppException(e);
    }
  }
}
 */
