import "dart:core";

void main() {
  // Right shift value.
  print(rightShiftValue(10, 2));
}

// Right shift the value.
int rightShiftValue(final int primary, final int secondary) {
  return primary >> secondary;
}
