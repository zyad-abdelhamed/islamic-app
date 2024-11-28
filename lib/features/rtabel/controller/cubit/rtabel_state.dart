part of 'rtabel_cubit.dart';

@immutable
sealed class RtabelState {}

final class RtabelInitial extends RtabelState {}
final class Rtabelloadvalues extends RtabelState {}
final class Rtabelcangevalue extends RtabelState {}