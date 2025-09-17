/* // Package imports:

// Package imports:
import 'package:hive/hive.dart';

// Project imports:
import '../../core/utils/local_params.dart';

abstract class LocalAppRepository {
  Future<bool> store(LocalParams params);
  Future<Box<String>> get(LocalParams params);
  Future<bool> removeKey(LocalParams params);
  Future<bool> removeBox(LocalParams params);
  Future<bool> clear();
}
 */
