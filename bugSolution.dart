```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        // Check if the key exists before accessing it to prevent exceptions
        if (jsonData.containsKey('key')) {
          print(jsonData['key']);
        } else {
          print('Error: Key not found in JSON response.');
        }
      } catch (jsonError) {
        print('Error decoding JSON: $jsonError');
      }
    } else {
      print('Error: HTTP request failed with status code ${response.statusCode}.');
    }
  } catch (e) {
    // More specific error handling for network errors or other exceptions
    print('A general error occurred: $e');
  }
}
```