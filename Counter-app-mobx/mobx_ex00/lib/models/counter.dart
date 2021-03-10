import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = _CounterBase with _$Counter;

abstract class _CounterBase with Store {
  @observable
  int value = 0;

  @action
  increment() {
    if (value <= 100) {
      value++;
      when((_) => value == 100,
          () => print('You arrived at number 100 || It\'s limit '));
    } else {
      return;
    }
  }

  @action
  desincrement() {
    if (value <= 100) {
      value--;
      when((_) => value == -100,
          () => print('You arrived at number -100 || It\'s limit '));
    } else {
      return;
    }
  }
}
