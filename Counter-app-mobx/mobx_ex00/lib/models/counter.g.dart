// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Counter on _CounterBase, Store {
  final _$valueAtom = Atom(name: '_CounterBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_CounterBaseActionController = ActionController(name: '_CounterBase');

  @override
  dynamic increment() {
    final _$actionInfo = _$_CounterBaseActionController.startAction(
        name: '_CounterBase.increment');
    try {
      return super.increment();
    } finally {
      _$_CounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic desincrement() {
    final _$actionInfo = _$_CounterBaseActionController.startAction(
        name: '_CounterBase.desincrement');
    try {
      return super.desincrement();
    } finally {
      _$_CounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
