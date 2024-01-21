import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feeds_state.dart';
part 'feeds_cubit.freezed.dart';

class FeedsCubit extends Cubit<FeedsState> {
  FeedsCubit() : super(FeedsState.initial());
}
