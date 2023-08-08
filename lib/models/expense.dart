import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

final uuid = Uuid();

enum Category {food,travel,leisure,work}

const categoryIcons = {
  Category.food: Icons.restaurant,
  Category.travel: Icons.card_travel,
  Category.leisure: Icons.beach_access,
  Category.work: Icons.work,
};

class Expense {
  Expense({
    required this.title,
    required this.date,
    required this.amount,
    required this.category,
  }):id = uuid.v4() ;

  final String id;
  final String title;
  final DateTime date;
  final double amount;
  final Category category;

  String get formattedDate{
    return formatter.format(date);
  }
}
