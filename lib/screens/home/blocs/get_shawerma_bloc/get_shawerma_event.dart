part of 'get_shawerma_bloc.dart';

sealed class GetShawermaEvent extends Equatable {
  const GetShawermaEvent();

  @override
  List<Object> get props => [];
}

class GetShawerma extends GetShawermaEvent {}
