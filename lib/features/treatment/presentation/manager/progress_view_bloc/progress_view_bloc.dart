import 'package:bloc/bloc.dart';

class ProgressViewBloc extends Cubit<double> {
  ProgressViewBloc(super.initialState);

  double stack = 0;

  double index = 0;

  set setSack(double value) => stack = value;

  void increment() {
    if(index < stack ){
      index++ ;
    }
    final value = index / stack ;

    emit(value);
  }

  void decrement() {
    emit(--index / stack);
  }
}
