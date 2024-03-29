import 'dart:io';

int calculateLeftMargin(int imageWidth) {
  int containerWidth = 1000;
  int remainingSpace = containerWidth - imageWidth;
  int leftMargin = remainingSpace ~/ 2;
  return leftMargin;
}

void main() {
  int? imageWidth = int.tryParse(stdin.readLineSync() ?? '');

  if (imageWidth != null &&
      imageWidth >= 400 &&
      imageWidth <= 1600 &&
      imageWidth % 10 == 0) {
    int leftMargin = calculateLeftMargin(imageWidth);
    print(leftMargin);
  } else {
    print(
        "Invalid input. Please provide a width between 400 and 1600, divisible by 10.");
  }
}
