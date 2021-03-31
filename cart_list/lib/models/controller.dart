import 'package:mobx/mobx.dart';
import './client.dart';

part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  final client = Client();

  String validateName() {
    if (client.name == null || client.name.isEmpty) {
      return 'this field is required';
    } else if (client.name.length < 3) {
      return 'your name must be more than 3 charecteres';
    } else {
      return null;
    }
  }

  String validateEmail() {
    if (client.email == null || client.email.isEmpty) {
      return 'this field is required';
    } else if (!client.email.contains('@')) {
      return 'type your email correctly';
    } else {
      return null;
    }
  }

  String validateAddress() {
    if (client.address == null || client.address.isEmpty) {
      return 'this field is required';
    } else if (client.address.length <= 5) {
      return 'your name must be more than 5 charecteres';
    } else {
      return null;
    }
  }

  @computed
  bool get isValid =>
      validateName() == null &&
      validateEmail() == null &&
      validateAddress() == null;
}
