class Failure {
  final String message;
  Failure([this.message = "Error Happend"]);
}

class ServeFailue extends Failure {
  ServeFailue([super.message]);
}
