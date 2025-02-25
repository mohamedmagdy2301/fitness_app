import 'package:equatable/equatable.dart';

abstract class YouAwesomeState extends Equatable {
  YouAwesomeState();

  @override
  List<Object> get props => [];
}

/// UnInitialized
class UnYouAwesomeState extends YouAwesomeState {

  UnYouAwesomeState();

  @override
  String toString() => 'UnYouAwesomeState';
}

/// Initialized
class InYouAwesomeState extends YouAwesomeState {
  InYouAwesomeState(this.hello);
  
  final String hello;

  @override
  String toString() => 'InYouAwesomeState $hello';

  @override
  List<Object> get props => [hello];
}

class ErrorYouAwesomeState extends YouAwesomeState {
  ErrorYouAwesomeState(this.errorMessage);
 
  final String errorMessage;
  
  @override
  String toString() => 'ErrorYouAwesomeState';

  @override
  List<Object> get props => [errorMessage];
}
