void main(List<String> args) {
  final wiskers = AnimalType.cat;
  switch (wiskers) {
    case AnimalType.cat:
      print('Wisker is a cat');
      break;
    //defaults
    default:
      print('wiskers is not a cat');
  }
}

enum AnimalType {
  cat,
  dog,
  rabbit,
}
