/* // ignore_for_file: public_member_api_docs, sort_constructors_first

// Package imports:
import 'package:firebase_messaging/firebase_messaging.dart';

class LocalNotificationModel {
  final int id;
  final String title;
  final String body;
  final String? image;
  final RemoteMessage? remoteMessage;

  const LocalNotificationModel({
    required this.id,
    required this.title,
    required this.body,
    this.image,
    this.remoteMessage,
  });


  @override
  String toString() {
    return 'LocalNotificationModel(id: $id, title: $title, body: $body, image: $image, remoteMessage: $remoteMessage)';
  }
}
 */