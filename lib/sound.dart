import 'package:audioplayers/audio_cache.dart';


playSuccess(){
  AudioCache player = AudioCache();
  player.play('success.mp3');
}
playError(){
  AudioCache player = AudioCache();
  player.play('error.mp3');
}