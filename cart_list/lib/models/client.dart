import 'package:mobx/mobx.dart';

part 'client.g.dart';

class Client = _ClientBase with _$Client;

abstract class _ClientBase with Store {
  @observable
  String name;

  @action
  void changeName(String value) => name = value;

  @observable
  String email;

  @action
  void changeEmail(String value) => email = value;

  @observable
  String address;

  @action
  void changeAddress(String value) => address = value;
}
