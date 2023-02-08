//enums with mixxins

void main(List<String> args) {
  AnimalType.cat.jump();
  AnimalType.hen.jump();
  AnimalType.dog.jump();
  try {
    AnimalType.fish.jump();
  } catch (e) {
    print('Cannot jump');
  }
}

mixin CanJumP {
  int get feetCount;
  void jump() {
    if (feetCount < 1) {
      throw Exception('cannot Jump');
    } else {
      print('jumped');
    }
  }
}

enum AnimalType with CanJumP {
  cat(feetCount: 4),
  hen(feetCount: 2),
  fish(feetCount: 0),
  dog(feetCount: 4);

  @override
  final int feetCount;
  const AnimalType({required this.feetCount});
}
