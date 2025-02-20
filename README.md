# Unhandled Exception in Asynchronous Dart Function

This repository demonstrates a common error in Dart: improper error handling within an asynchronous function. The `fetchData` function makes a network request.  If the request fails or the JSON decoding fails, the error is not handled gracefully.  This could lead to app crashes or unexpected behavior.

The solution demonstrates best practices for handling exceptions during asynchronous operations, ensuring the app remains responsive and provides informative feedback to the user.

## Bug

The `bug.dart` file contains the function with the unhandled exception. The `try-catch` block only prints the error to the console, then re-throws it. A better approach would handle the error specifically to avoid crashing the application.

## Solution

The `bugSolution.dart` file shows improved error handling. The `catch` block now handles exceptions more gracefully, preventing the app from crashing and providing a more informative error message to the user.  It also considers scenarios where the API response might not contain expected data. 