import 'package:basketball_counter/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncreamentState());

  int teamAPoints = 0;

  int teamBPoints = 0;

  void TeamIncreament({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAIncreamentState());
    } else {
      teamBPoints += buttonNumber;
      emit(CounterBIncreamentState());
    }
  }
  void Reset ()
  {
    teamAPoints =0;
    teamBPoints=0;
    emit(ResetState());
  }
}
