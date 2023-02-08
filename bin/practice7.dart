// enum comparison

void main(List<String> args) {
  print(TeslaCars.values);
  print([...TeslaCars.values]..sort());
}

enum TeslaCars implements Comparable<TeslaCars> {
  teslaModel1(
      manufacturer: 'Tesla',
      weight: 200.5,
      model: 'Abc',
      year: '2009',
      engineNum: 1),
  teslaModel2(
      manufacturer: 'Tesla',
      weight: 210,
      model: 'Abc',
      year: '2009',
      engineNum: 1),
  teslaModel3(
      manufacturer: 'Tesla',
      weight: 100,
      model: 'Abc',
      year: '2009',
      engineNum: 1);

  final String manufacturer;
  final String model;
  final double weight;
  final String year;
  final int engineNum;
  const TeslaCars(
      {required this.manufacturer,
      required this.model,
      required this.weight,
      required this.year,
      required this.engineNum});

  @override
  int compareTo(TeslaCars other) => weight.compareTo(other.weight);
}
