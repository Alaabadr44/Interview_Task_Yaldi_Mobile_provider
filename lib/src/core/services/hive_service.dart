// Package imports:

// Package imports:
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

// Project imports:
import '../utils/app_logger.dart';
import 'service_interface.dart';

class HiveService implements ServiceInterface {

  @override
  String get name => "Hive Service";

  @override
  Future<void> initializeService() async {
    final directory = await getApplicationDocumentsDirectory();
    Hive.init(directory.path);
    await Hive.initFlutter(directory.path);
    AppLogger.logDebug('$name Success initialization');
  }

  Future<Box> getBox({required String box}) async {
    bool isExists = await isExistBox(box);
    if (isExists) {
      if (!Hive.isBoxOpen(box)) {
        return await Hive.openBox(box);
      }
      return Hive.box(box);
    } else {
      return await Hive.openBox(box);
    }
  }

  Future<void> deleteBox(String box, int roomId) async {
    if (Hive.isBoxOpen(box)) {
      return await Hive.box(box).delete(roomId.toString());
    } else {
      await getBox(box: box);
      return await Hive.box(box).delete(roomId.toString());
    }
  }

  Future<void> deleteAllBoxes() async {
    await Hive.deleteFromDisk().then((value) {
      AppLogger.logDebug('[HiveService] [Remove All Hive Boxes] [Done]');
    });
  }

  Future<bool> isExistBox(String box) async => await Hive.boxExists(box);

  // singleton
  HiveService.init();
  static HiveService? _instance;
  factory HiveService() => _instance ??= HiveService.init();
}
