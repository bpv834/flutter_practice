import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';
@freezed
sealed class Result<T> with _$Result<T> {
  const factory Result.Success(T data ) = Success;
  const factory Result.error(String e) = Error;
}