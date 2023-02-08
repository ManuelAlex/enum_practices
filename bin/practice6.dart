//functions in enums
void main(List<String> args) {
  AnimalType.cat
    ..jump()
    ..run();
  AnimalType.dog
    ..jump()
    ..run();
}

enum AnimalType {
  cat,
  dog,
  rabbit;

  void run() {
    print("$this Running...");
  }
}

extension Jump on AnimalType {
  void jump() {
    print('$this is jumping');
  }
}
