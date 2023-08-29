class Failure {
  const Failure(this.message, {this.cause});

  final String message;
  final Object? cause;
}