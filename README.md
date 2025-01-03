# Unhandled Exception in Dart Asynchronous Operations

This repository demonstrates a common error in Dart asynchronous programming:  unhandled exceptions in asynchronous operations. The `bug.dart` file shows a function that throws an exception, but the main function doesn't always handle it properly.  The `bugSolution.dart` file presents a corrected version that demonstrates appropriate exception handling.

## How to Reproduce

1. Clone this repository.
2. Run `bug.dart` using the Dart VM.
3. Observe the error message showing that the exception wasn't handled correctly in `main` unless a `catch` block exists at every level of the call stack.
4. Run `bugSolution.dart`. This version correctly handles the exception.

## Problem

In asynchronous operations, exceptions can easily get lost unless explicitly caught and handled. This can make debugging difficult and can lead to unexpected application behavior.

## Solution

The solution involves using `try-catch` blocks to catch potential exceptions. This allows for graceful error handling and prevents the application from crashing unexpectedly.  Ensure that any functions that might throw exceptions either handle them internally or re-throw to an appropriate handling point in the call stack.