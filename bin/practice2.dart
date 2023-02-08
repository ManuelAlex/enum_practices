void main(List<String> args) {
  final foo = Person(name: 'Foo', car: Car.teslaModelX);
  switch (foo.car) {
    case Car.teslaModelX:
      print('foo drive a TeslaModel X= ${foo.car}');
      break;
    case Car.teslaModelY:
      print('foo drive a TeslaModel Y= ${foo.car}');
      break;
  }
}

class Person {
  final String name;
  final Car car;

  Person({required this.name, required this.car});
}

//Enhanced Enums
enum Car {
  teslaModelX(
    manufacturer: 'Tesla',
    model: 'model x',
    year: '2021',
  ),
  teslaModelY(
    manufacturer: 'Tesla',
    model: 'model Y',
    year: '2020',
  );

  //enum properties
  final String manufacturer;
  final String model;
  final String year;

  const Car({
    required this.manufacturer,
    required this.model,
    required this.year,
  });
  @override
  String toString() => 'Car:$manufacturer, $model, $year';
}
