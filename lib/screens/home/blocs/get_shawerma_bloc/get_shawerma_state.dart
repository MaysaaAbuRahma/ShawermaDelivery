part of 'get_shawerma_bloc.dart';

sealed class GetShawermaState extends Equatable {
  const GetShawermaState();

  @override
  List<Object> get props => [];
}

final class GetShawermaInitial extends GetShawermaState {}

final class GetShawermaFailure extends GetShawermaState {}

final class GetShawermaLoading extends GetShawermaState {}

final class GetShawermaSuccess extends GetShawermaState {
  final List<Shawerma> shawermas;

  const GetShawermaSuccess(this.shawermas);

  @override
  List<Object> get props => [shawermas];
}
