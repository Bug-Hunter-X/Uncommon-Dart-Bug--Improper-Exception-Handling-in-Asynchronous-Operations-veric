```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      print(jsonData['key']);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle the exception appropriately
    print('An error occurred: $e');
    // Optionally, you can perform additional actions like logging or retrying the request.
  }
}
```