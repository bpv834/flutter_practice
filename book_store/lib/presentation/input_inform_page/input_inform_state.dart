import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';

part 'input_inform_state.freezed.dart';

part 'input_inform_state.g.dart';

@freezed
class InputInformState with _$InputInformState {
  factory InputInformState({
    required int? id,
    required String? nickName,
    required int? age,
    required String? category,
  }) = _InputInformState;

  factory InputInformState.fromJson(Map<String, Object?> json) =>
      _$InputInformStateFromJson(json);
}
