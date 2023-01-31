import 'package:intl/intl.dart';

class CurrencyFormatter {
  final formatter = NumberFormat.currency(
    locale: 'en_US',
    symbol: '\$',
    decimalDigits: 0,
  );
}
