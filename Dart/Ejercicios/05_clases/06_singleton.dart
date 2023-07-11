import 'clases/mi_servicio.dart';

void main(List<String> args) {
  final spotifyService1 = new MiServicio();
  spotifyService1.url = 'http://api.spotify.com';

  final spotifyService2 = new MiServicio();
  spotifyService2.url = 'http://api.spotify.com/v2';

  print(spotifyService1 == spotifyService2); // false
  print(spotifyService1.url);
  print(spotifyService2.url);
}