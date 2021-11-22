import "dart:core";
import "dart:math";

void main(){
  // Generate a random double.
  print(generateRandomDouble());
}

// Generate a random double
double generateRandomDouble() {
  return Random().nextDouble();
}
