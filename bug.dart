```dart
import 'dart:async';

Future<void> fetchData() async {
  try {
    // Simulate an error
    await Future.delayed(Duration(seconds: 2));
    throw Exception('Network Error');
  } catch (e) {
    print('Error caught in fetchData: $e');
    // Rethrow the exception to be handled higher up
    rethrow;
  }
}

void main() async {
  try {
    await fetchData();
    print('Data fetched successfully');
  } catch (e) {
    print('Error in main: $e');
    // Handle the error properly - maybe retry or display a user message
  }
}
```