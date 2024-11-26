class ApiException implements Exception {
  final _prefix;
  final _message;

  ApiException([
    this._prefix,
    this._message
  ]);

  @override
  String toString() {
    // TODO: implement toString
    return '$_prefix : $_message';
  }
}

// Fetch data exception
class FetchDataException extends ApiException{
  FetchDataException(message): super('Error during communication', message);
}