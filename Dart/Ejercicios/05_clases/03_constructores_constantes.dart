class Location {
  final double lat;
  final double lng;

  const Location(this.lat, this.lng);
}
void main(List<String> args) {
  final sanFrnacisco1 = new Location(18.2323, 39.90000);
  final sanFrnacisco2 = new Location(18.2323, 39.90001);
  final sanFrnacisco3 = new Location(18.2323, 39.90001);
  print(sanFrnacisco1 == sanFrnacisco2);
  print(sanFrnacisco2 == sanFrnacisco3);

  final sanFrnacisco4 = const Location(18.2323, 39.90000);
  final sanFrnacisco5 = const Location(18.2323, 39.90001);
  final sanFrnacisco6 = const Location(18.2323, 39.90001);
  print(sanFrnacisco4 == sanFrnacisco5);
  print(sanFrnacisco5 == sanFrnacisco6);
}