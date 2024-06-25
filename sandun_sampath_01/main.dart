

import 'dart:io';

void main() {
  stdout.write("Enter the Monthly Income = Rs.");
  double? salary = double.parse(stdin.readLineSync()!);

  Map<String, double> costs = {
    "Food": 0,
    "Education": 0,
    "Travel": 0,
    "Cloths": 0,
    "Other": 0
  };

  //for (int i = 0; i < costs.length;) {
  double total = 0;

  for (String cost in costs.keys) {
    stdout.write("Enter expenses for $cost = Rs.");
    double? expenses = double.parse(stdin.readLineSync()!);

    costs[cost] = expenses;

    total = total + expenses;
  }

  double remains = salary - total;

  salary > total
      ? print("After deducting expenses, your salary remains : Rs. $remains")
      : print("you have to borrow this amount : Rs. $remains");

  // }
}
