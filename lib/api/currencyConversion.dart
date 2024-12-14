import 'dart:convert';
import 'package:http/http.dart' as http;

class CurrencyConversionService {
  static const String apiKey = '1907bb3afd8d0d3e8c7e7256eb797439';
  static const String url = 'http://api.currencylayer.com/live?access_key=$apiKey';

  Future<double> convertCurrency(double amount, String fromCurrency, String toCurrency) async {
    final response = await http.get(Uri.parse('$url&currencies=$fromCurrency,$toCurrency'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final rates = data['quotes'];
      final fromRate = rates['$fromCurrency$toCurrency'];
      return amount * fromRate;
    } else {
      throw Exception('Failed to load currency data');
    }
  }
}
