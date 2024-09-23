import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  const Failure(this.message);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}


class ServerFailure extends Failure {
  const ServerFailure(String? message) : super(message??'Server Failure');
}

class ConnectionFailure extends Failure {
  const ConnectionFailure(String? message) : super(message??'Connection Failure');
}

