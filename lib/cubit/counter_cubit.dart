import 'package:basketball_points_app/cubit/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit(initialState) : super(CounterAIncrementState());

  int numOfPointsTeamA = 0;
  int numOfPointsTeamB = 0;

  void teamPointsIncrement({required String team, required int numOfPoints}) {
    if (team == 'A') {
      numOfPointsTeamA += numOfPoints;
      emit(CounterAIncrementState());
    } else {
      numOfPointsTeamB += numOfPoints;
      emit(CounterBIncrementState());
    }
  }

  void resetPointsCounter(
      {required int teamAPoints, required int teamBPoints}) {
    if (teamAPoints | teamBPoints != 0) {
      numOfPointsTeamA = 0;
      numOfPointsTeamB = 0;
      emit(CountersResetState());
    }
  }
}
