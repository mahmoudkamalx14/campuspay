import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.myCache() = MyCache;

  const factory HomeState.credit() = MyCredit;
}
