void main() {
  Crocodile().hunt("Zebra");
  Alligator().hunt("Fish");
  Fish().feed();
}

mixin Swim {
  void swim() {
    print("Swimming");
  }
}

mixin Bite {
  void bite() {
    print("Chomp");
  }
}

mixin Crawl {
  void crawl() {
    print("Crawling");
  }
}

abstract class Reptile with Swim, Crawl, Bite {
  void hunt(final food) {
    print("${runtimeType} -------");
    swim();
    crawl();
    bite();
    print("Eat $food");
  }
}

class Alligator extends Reptile {
  // Alligator Specific stuff...
}

class Crocodile extends Reptile {
  // Crocodile Specific stuff...
}

class Fish with Swim, Bite {
  void feed() {
    print("Fish --------");
    swim();
    bite();
  }
}
