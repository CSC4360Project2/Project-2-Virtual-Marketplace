import 'dart:convert';
import 'package:http/http.dart' as http;

class PixabayAPI {
  final String apiKey = '47631659-b348f8190424adef4d57404a8';

  Future<List<String>> fetchImages(String query) async {
    final url = 'https://pixabay.com/api/?key=$apiKey&q=$query&image_type=photo&per_page=5';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      List<String> imageUrls = [];

      for (var hit in data['hits']) {
        imageUrls.add(hit['webformatURL']);
      }

      return imageUrls;
    } else {
      throw Exception('Failed to load images');
    }
  }
}
