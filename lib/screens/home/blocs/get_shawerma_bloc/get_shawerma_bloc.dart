import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shawerma_repository/shawerma_repository.dart';

part 'get_shawerma_event.dart';
part 'get_shawerma_state.dart';

class GetShawermaBloc extends Bloc<GetShawermaEvent, GetShawermaState> {
  final ShawermaRepo _shawermaRepo;

  GetShawermaBloc(this._shawermaRepo) : super(GetShawermaInitial()) {
    on<GetShawerma>((event, emit) async {
      emit(GetShawermaLoading());
      try {
        List<Shawerma> shawermas = await _shawermaRepo.getShawermas();
        emit(GetShawermaSuccess(shawermas));
      } catch (e) {
        emit(GetShawermaFailure());
      }
    });
  }
}
