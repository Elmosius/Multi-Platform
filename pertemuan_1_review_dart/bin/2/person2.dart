class Person2 {
  String name = 'No Name';
  int _age = 0;

  set age(int age) {
    if (age <= 0) {
      age *= -1;
    }

    _age = age;
  }

  int get age => _age;

  String hello() {
    return 'Hello, my name is $name and I am $age years old.';
  }
}
