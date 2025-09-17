import 'package:audioplayers/audioplayers.dart';

import '../utils/app_logger.dart';
import 'service_interface.dart';

// audio_players_services
class AudioPlayersServices implements ServiceInterface {
  late AudioPlayer audioPlayer;

  @override
  Future initializeService() async {
    AppLogger.logDebug('$name Success initialization');

    audioPlayer = AudioPlayer();
  }

  playNetworkSound(String url) async {
    audioPlayer.stop();
    audioPlayer.setVolume(0.6);
    await audioPlayer.play(UrlSource(url));
  }

  playAssetSound(
    String path, {
    double? volume,
    double? balance,
    AudioContext? ctx,
    Duration? position,
    PlayerMode? mode,
  }) async {
    stopSound();
    audioPlayer.setVolume(volume ?? 0.6);
    if (path.contains("assets/")) {
      path = path.replaceAll("assets/", "");
    }

    await audioPlayer.play(
      AssetSource(path),
      volume: volume,
      balance: balance,
      ctx: ctx,
      position: position,
      mode: mode,
    );
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  @override
  String get name => "Audio Player Service";
}
