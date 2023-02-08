void main(List<String> args) {
  /*
   { 
    "name":"foo",
    "type":"cat"
   }
   */
  describe(animalType(fromStr: 'rabbit'));
  // print(AnimalType.values.firstWhere((element) => element.name == 'cat'));
}

void describe(AnimalType? animalType) {
  switch (animalType) {
    case AnimalType.cat:
      print('this is a cat');
      break;
    case AnimalType.rabbit:
      print('this is a rabbit');
      break;
    case AnimalType.dog:
      print('this is a dog');
      break;
    default:
      print('Unknown Animal');
  }
}

AnimalType? animalType({required String fromStr}) {
  try {
    return AnimalType.values.firstWhere((element) => element.name == fromStr);
  } catch (e) {
    return null;
  }
}

enum AnimalType {
  cat,
  rabbit,
  dog,
}
