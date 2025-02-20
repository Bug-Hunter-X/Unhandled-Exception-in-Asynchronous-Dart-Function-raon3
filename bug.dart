```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here
      final jsonData = jsonDecode(response.body);
      // Access the data
      print(jsonData['key']); 
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle the error here
    print('Error: $e');
    // Re-throw the error to be handled higher up in the call stack 
    rethrow; 
  }
}
```