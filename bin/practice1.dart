void main(List<String> args) {
  final woof = Animal(name: 'Woof', type: AnimalType.dog);
  if (woof.type == AnimalType.cat) {
    print("woof is a cat");
  } else {
    print('woof is not a cat');
  }

  switch (woof.type) {
    case AnimalType.cat:
      print('this is a rabbir');
      break;
    case AnimalType.dog:
      print('this is a dog');
      break;
    case AnimalType.rabbit:
      print('this is a rabbit');
      break;
  }
}

enum AnimalType {
  cat,
  dog,
  rabbit,
}

class Animal {
  final String name;
  final AnimalType type;

  const Animal({required this.name, required this.type});
}
