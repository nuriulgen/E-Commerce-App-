class ValidateEmptyException implements Exception {
  @override
  String toString() {
    return 'This field cannot be empty!';
  }
}
