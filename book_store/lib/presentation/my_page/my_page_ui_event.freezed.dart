// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_page_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyPageUiEvent<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageSource imageSource) changeImage,
    required TResult Function(String newName) changeNickName,
    required TResult Function(String barTagName, String regionTagName)
        clickBookmark,
    required TResult Function(String barName) clickMyBoard,
    required TResult Function(String barName) clickMyInteresting,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource imageSource)? changeImage,
    TResult? Function(String newName)? changeNickName,
    TResult? Function(String barTagName, String regionTagName)? clickBookmark,
    TResult? Function(String barName)? clickMyBoard,
    TResult? Function(String barName)? clickMyInteresting,
    TResult? Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource imageSource)? changeImage,
    TResult Function(String newName)? changeNickName,
    TResult Function(String barTagName, String regionTagName)? clickBookmark,
    TResult Function(String barName)? clickMyBoard,
    TResult Function(String barName)? clickMyInteresting,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeImage<T> value) changeImage,
    required TResult Function(ChangeNickName<T> value) changeNickName,
    required TResult Function(ClickBookmark<T> value) clickBookmark,
    required TResult Function(ClickMyBoard<T> value) clickMyBoard,
    required TResult Function(ClickMyInteresting<T> value) clickMyInteresting,
    required TResult Function(LogOut<T> value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeImage<T> value)? changeImage,
    TResult? Function(ChangeNickName<T> value)? changeNickName,
    TResult? Function(ClickBookmark<T> value)? clickBookmark,
    TResult? Function(ClickMyBoard<T> value)? clickMyBoard,
    TResult? Function(ClickMyInteresting<T> value)? clickMyInteresting,
    TResult? Function(LogOut<T> value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeImage<T> value)? changeImage,
    TResult Function(ChangeNickName<T> value)? changeNickName,
    TResult Function(ClickBookmark<T> value)? clickBookmark,
    TResult Function(ClickMyBoard<T> value)? clickMyBoard,
    TResult Function(ClickMyInteresting<T> value)? clickMyInteresting,
    TResult Function(LogOut<T> value)? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyPageUiEventCopyWith<T, $Res> {
  factory $MyPageUiEventCopyWith(
          MyPageUiEvent<T> value, $Res Function(MyPageUiEvent<T>) then) =
      _$MyPageUiEventCopyWithImpl<T, $Res, MyPageUiEvent<T>>;
}

/// @nodoc
class _$MyPageUiEventCopyWithImpl<T, $Res, $Val extends MyPageUiEvent<T>>
    implements $MyPageUiEventCopyWith<T, $Res> {
  _$MyPageUiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangeImageImplCopyWith<T, $Res> {
  factory _$$ChangeImageImplCopyWith(_$ChangeImageImpl<T> value,
          $Res Function(_$ChangeImageImpl<T>) then) =
      __$$ChangeImageImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ImageSource imageSource});
}

/// @nodoc
class __$$ChangeImageImplCopyWithImpl<T, $Res>
    extends _$MyPageUiEventCopyWithImpl<T, $Res, _$ChangeImageImpl<T>>
    implements _$$ChangeImageImplCopyWith<T, $Res> {
  __$$ChangeImageImplCopyWithImpl(
      _$ChangeImageImpl<T> _value, $Res Function(_$ChangeImageImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageSource = null,
  }) {
    return _then(_$ChangeImageImpl<T>(
      null == imageSource
          ? _value.imageSource
          : imageSource // ignore: cast_nullable_to_non_nullable
              as ImageSource,
    ));
  }
}

/// @nodoc

class _$ChangeImageImpl<T>
    with DiagnosticableTreeMixin
    implements ChangeImage<T> {
  const _$ChangeImageImpl(this.imageSource);

  @override
  final ImageSource imageSource;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyPageUiEvent<$T>.changeImage(imageSource: $imageSource)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyPageUiEvent<$T>.changeImage'))
      ..add(DiagnosticsProperty('imageSource', imageSource));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeImageImpl<T> &&
            (identical(other.imageSource, imageSource) ||
                other.imageSource == imageSource));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageSource);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeImageImplCopyWith<T, _$ChangeImageImpl<T>> get copyWith =>
      __$$ChangeImageImplCopyWithImpl<T, _$ChangeImageImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageSource imageSource) changeImage,
    required TResult Function(String newName) changeNickName,
    required TResult Function(String barTagName, String regionTagName)
        clickBookmark,
    required TResult Function(String barName) clickMyBoard,
    required TResult Function(String barName) clickMyInteresting,
    required TResult Function() logOut,
  }) {
    return changeImage(imageSource);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource imageSource)? changeImage,
    TResult? Function(String newName)? changeNickName,
    TResult? Function(String barTagName, String regionTagName)? clickBookmark,
    TResult? Function(String barName)? clickMyBoard,
    TResult? Function(String barName)? clickMyInteresting,
    TResult? Function()? logOut,
  }) {
    return changeImage?.call(imageSource);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource imageSource)? changeImage,
    TResult Function(String newName)? changeNickName,
    TResult Function(String barTagName, String regionTagName)? clickBookmark,
    TResult Function(String barName)? clickMyBoard,
    TResult Function(String barName)? clickMyInteresting,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (changeImage != null) {
      return changeImage(imageSource);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeImage<T> value) changeImage,
    required TResult Function(ChangeNickName<T> value) changeNickName,
    required TResult Function(ClickBookmark<T> value) clickBookmark,
    required TResult Function(ClickMyBoard<T> value) clickMyBoard,
    required TResult Function(ClickMyInteresting<T> value) clickMyInteresting,
    required TResult Function(LogOut<T> value) logOut,
  }) {
    return changeImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeImage<T> value)? changeImage,
    TResult? Function(ChangeNickName<T> value)? changeNickName,
    TResult? Function(ClickBookmark<T> value)? clickBookmark,
    TResult? Function(ClickMyBoard<T> value)? clickMyBoard,
    TResult? Function(ClickMyInteresting<T> value)? clickMyInteresting,
    TResult? Function(LogOut<T> value)? logOut,
  }) {
    return changeImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeImage<T> value)? changeImage,
    TResult Function(ChangeNickName<T> value)? changeNickName,
    TResult Function(ClickBookmark<T> value)? clickBookmark,
    TResult Function(ClickMyBoard<T> value)? clickMyBoard,
    TResult Function(ClickMyInteresting<T> value)? clickMyInteresting,
    TResult Function(LogOut<T> value)? logOut,
    required TResult orElse(),
  }) {
    if (changeImage != null) {
      return changeImage(this);
    }
    return orElse();
  }
}

abstract class ChangeImage<T> implements MyPageUiEvent<T> {
  const factory ChangeImage(final ImageSource imageSource) =
      _$ChangeImageImpl<T>;

  ImageSource get imageSource;
  @JsonKey(ignore: true)
  _$$ChangeImageImplCopyWith<T, _$ChangeImageImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeNickNameImplCopyWith<T, $Res> {
  factory _$$ChangeNickNameImplCopyWith(_$ChangeNickNameImpl<T> value,
          $Res Function(_$ChangeNickNameImpl<T>) then) =
      __$$ChangeNickNameImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String newName});
}

/// @nodoc
class __$$ChangeNickNameImplCopyWithImpl<T, $Res>
    extends _$MyPageUiEventCopyWithImpl<T, $Res, _$ChangeNickNameImpl<T>>
    implements _$$ChangeNickNameImplCopyWith<T, $Res> {
  __$$ChangeNickNameImplCopyWithImpl(_$ChangeNickNameImpl<T> _value,
      $Res Function(_$ChangeNickNameImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newName = null,
  }) {
    return _then(_$ChangeNickNameImpl<T>(
      null == newName
          ? _value.newName
          : newName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeNickNameImpl<T>
    with DiagnosticableTreeMixin
    implements ChangeNickName<T> {
  const _$ChangeNickNameImpl(this.newName);

  @override
  final String newName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyPageUiEvent<$T>.changeNickName(newName: $newName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyPageUiEvent<$T>.changeNickName'))
      ..add(DiagnosticsProperty('newName', newName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeNickNameImpl<T> &&
            (identical(other.newName, newName) || other.newName == newName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeNickNameImplCopyWith<T, _$ChangeNickNameImpl<T>> get copyWith =>
      __$$ChangeNickNameImplCopyWithImpl<T, _$ChangeNickNameImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageSource imageSource) changeImage,
    required TResult Function(String newName) changeNickName,
    required TResult Function(String barTagName, String regionTagName)
        clickBookmark,
    required TResult Function(String barName) clickMyBoard,
    required TResult Function(String barName) clickMyInteresting,
    required TResult Function() logOut,
  }) {
    return changeNickName(newName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource imageSource)? changeImage,
    TResult? Function(String newName)? changeNickName,
    TResult? Function(String barTagName, String regionTagName)? clickBookmark,
    TResult? Function(String barName)? clickMyBoard,
    TResult? Function(String barName)? clickMyInteresting,
    TResult? Function()? logOut,
  }) {
    return changeNickName?.call(newName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource imageSource)? changeImage,
    TResult Function(String newName)? changeNickName,
    TResult Function(String barTagName, String regionTagName)? clickBookmark,
    TResult Function(String barName)? clickMyBoard,
    TResult Function(String barName)? clickMyInteresting,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (changeNickName != null) {
      return changeNickName(newName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeImage<T> value) changeImage,
    required TResult Function(ChangeNickName<T> value) changeNickName,
    required TResult Function(ClickBookmark<T> value) clickBookmark,
    required TResult Function(ClickMyBoard<T> value) clickMyBoard,
    required TResult Function(ClickMyInteresting<T> value) clickMyInteresting,
    required TResult Function(LogOut<T> value) logOut,
  }) {
    return changeNickName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeImage<T> value)? changeImage,
    TResult? Function(ChangeNickName<T> value)? changeNickName,
    TResult? Function(ClickBookmark<T> value)? clickBookmark,
    TResult? Function(ClickMyBoard<T> value)? clickMyBoard,
    TResult? Function(ClickMyInteresting<T> value)? clickMyInteresting,
    TResult? Function(LogOut<T> value)? logOut,
  }) {
    return changeNickName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeImage<T> value)? changeImage,
    TResult Function(ChangeNickName<T> value)? changeNickName,
    TResult Function(ClickBookmark<T> value)? clickBookmark,
    TResult Function(ClickMyBoard<T> value)? clickMyBoard,
    TResult Function(ClickMyInteresting<T> value)? clickMyInteresting,
    TResult Function(LogOut<T> value)? logOut,
    required TResult orElse(),
  }) {
    if (changeNickName != null) {
      return changeNickName(this);
    }
    return orElse();
  }
}

abstract class ChangeNickName<T> implements MyPageUiEvent<T> {
  const factory ChangeNickName(final String newName) = _$ChangeNickNameImpl<T>;

  String get newName;
  @JsonKey(ignore: true)
  _$$ChangeNickNameImplCopyWith<T, _$ChangeNickNameImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClickBookmarkImplCopyWith<T, $Res> {
  factory _$$ClickBookmarkImplCopyWith(_$ClickBookmarkImpl<T> value,
          $Res Function(_$ClickBookmarkImpl<T>) then) =
      __$$ClickBookmarkImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String barTagName, String regionTagName});
}

/// @nodoc
class __$$ClickBookmarkImplCopyWithImpl<T, $Res>
    extends _$MyPageUiEventCopyWithImpl<T, $Res, _$ClickBookmarkImpl<T>>
    implements _$$ClickBookmarkImplCopyWith<T, $Res> {
  __$$ClickBookmarkImplCopyWithImpl(_$ClickBookmarkImpl<T> _value,
      $Res Function(_$ClickBookmarkImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barTagName = null,
    Object? regionTagName = null,
  }) {
    return _then(_$ClickBookmarkImpl<T>(
      null == barTagName
          ? _value.barTagName
          : barTagName // ignore: cast_nullable_to_non_nullable
              as String,
      null == regionTagName
          ? _value.regionTagName
          : regionTagName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClickBookmarkImpl<T>
    with DiagnosticableTreeMixin
    implements ClickBookmark<T> {
  const _$ClickBookmarkImpl(this.barTagName, this.regionTagName);

  @override
  final String barTagName;
  @override
  final String regionTagName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyPageUiEvent<$T>.clickBookmark(barTagName: $barTagName, regionTagName: $regionTagName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyPageUiEvent<$T>.clickBookmark'))
      ..add(DiagnosticsProperty('barTagName', barTagName))
      ..add(DiagnosticsProperty('regionTagName', regionTagName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClickBookmarkImpl<T> &&
            (identical(other.barTagName, barTagName) ||
                other.barTagName == barTagName) &&
            (identical(other.regionTagName, regionTagName) ||
                other.regionTagName == regionTagName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, barTagName, regionTagName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClickBookmarkImplCopyWith<T, _$ClickBookmarkImpl<T>> get copyWith =>
      __$$ClickBookmarkImplCopyWithImpl<T, _$ClickBookmarkImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageSource imageSource) changeImage,
    required TResult Function(String newName) changeNickName,
    required TResult Function(String barTagName, String regionTagName)
        clickBookmark,
    required TResult Function(String barName) clickMyBoard,
    required TResult Function(String barName) clickMyInteresting,
    required TResult Function() logOut,
  }) {
    return clickBookmark(barTagName, regionTagName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource imageSource)? changeImage,
    TResult? Function(String newName)? changeNickName,
    TResult? Function(String barTagName, String regionTagName)? clickBookmark,
    TResult? Function(String barName)? clickMyBoard,
    TResult? Function(String barName)? clickMyInteresting,
    TResult? Function()? logOut,
  }) {
    return clickBookmark?.call(barTagName, regionTagName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource imageSource)? changeImage,
    TResult Function(String newName)? changeNickName,
    TResult Function(String barTagName, String regionTagName)? clickBookmark,
    TResult Function(String barName)? clickMyBoard,
    TResult Function(String barName)? clickMyInteresting,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (clickBookmark != null) {
      return clickBookmark(barTagName, regionTagName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeImage<T> value) changeImage,
    required TResult Function(ChangeNickName<T> value) changeNickName,
    required TResult Function(ClickBookmark<T> value) clickBookmark,
    required TResult Function(ClickMyBoard<T> value) clickMyBoard,
    required TResult Function(ClickMyInteresting<T> value) clickMyInteresting,
    required TResult Function(LogOut<T> value) logOut,
  }) {
    return clickBookmark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeImage<T> value)? changeImage,
    TResult? Function(ChangeNickName<T> value)? changeNickName,
    TResult? Function(ClickBookmark<T> value)? clickBookmark,
    TResult? Function(ClickMyBoard<T> value)? clickMyBoard,
    TResult? Function(ClickMyInteresting<T> value)? clickMyInteresting,
    TResult? Function(LogOut<T> value)? logOut,
  }) {
    return clickBookmark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeImage<T> value)? changeImage,
    TResult Function(ChangeNickName<T> value)? changeNickName,
    TResult Function(ClickBookmark<T> value)? clickBookmark,
    TResult Function(ClickMyBoard<T> value)? clickMyBoard,
    TResult Function(ClickMyInteresting<T> value)? clickMyInteresting,
    TResult Function(LogOut<T> value)? logOut,
    required TResult orElse(),
  }) {
    if (clickBookmark != null) {
      return clickBookmark(this);
    }
    return orElse();
  }
}

abstract class ClickBookmark<T> implements MyPageUiEvent<T> {
  const factory ClickBookmark(
          final String barTagName, final String regionTagName) =
      _$ClickBookmarkImpl<T>;

  String get barTagName;
  String get regionTagName;
  @JsonKey(ignore: true)
  _$$ClickBookmarkImplCopyWith<T, _$ClickBookmarkImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClickMyBoardImplCopyWith<T, $Res> {
  factory _$$ClickMyBoardImplCopyWith(_$ClickMyBoardImpl<T> value,
          $Res Function(_$ClickMyBoardImpl<T>) then) =
      __$$ClickMyBoardImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String barName});
}

/// @nodoc
class __$$ClickMyBoardImplCopyWithImpl<T, $Res>
    extends _$MyPageUiEventCopyWithImpl<T, $Res, _$ClickMyBoardImpl<T>>
    implements _$$ClickMyBoardImplCopyWith<T, $Res> {
  __$$ClickMyBoardImplCopyWithImpl(
      _$ClickMyBoardImpl<T> _value, $Res Function(_$ClickMyBoardImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barName = null,
  }) {
    return _then(_$ClickMyBoardImpl<T>(
      null == barName
          ? _value.barName
          : barName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClickMyBoardImpl<T>
    with DiagnosticableTreeMixin
    implements ClickMyBoard<T> {
  const _$ClickMyBoardImpl(this.barName);

  @override
  final String barName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyPageUiEvent<$T>.clickMyBoard(barName: $barName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyPageUiEvent<$T>.clickMyBoard'))
      ..add(DiagnosticsProperty('barName', barName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClickMyBoardImpl<T> &&
            (identical(other.barName, barName) || other.barName == barName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, barName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClickMyBoardImplCopyWith<T, _$ClickMyBoardImpl<T>> get copyWith =>
      __$$ClickMyBoardImplCopyWithImpl<T, _$ClickMyBoardImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageSource imageSource) changeImage,
    required TResult Function(String newName) changeNickName,
    required TResult Function(String barTagName, String regionTagName)
        clickBookmark,
    required TResult Function(String barName) clickMyBoard,
    required TResult Function(String barName) clickMyInteresting,
    required TResult Function() logOut,
  }) {
    return clickMyBoard(barName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource imageSource)? changeImage,
    TResult? Function(String newName)? changeNickName,
    TResult? Function(String barTagName, String regionTagName)? clickBookmark,
    TResult? Function(String barName)? clickMyBoard,
    TResult? Function(String barName)? clickMyInteresting,
    TResult? Function()? logOut,
  }) {
    return clickMyBoard?.call(barName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource imageSource)? changeImage,
    TResult Function(String newName)? changeNickName,
    TResult Function(String barTagName, String regionTagName)? clickBookmark,
    TResult Function(String barName)? clickMyBoard,
    TResult Function(String barName)? clickMyInteresting,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (clickMyBoard != null) {
      return clickMyBoard(barName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeImage<T> value) changeImage,
    required TResult Function(ChangeNickName<T> value) changeNickName,
    required TResult Function(ClickBookmark<T> value) clickBookmark,
    required TResult Function(ClickMyBoard<T> value) clickMyBoard,
    required TResult Function(ClickMyInteresting<T> value) clickMyInteresting,
    required TResult Function(LogOut<T> value) logOut,
  }) {
    return clickMyBoard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeImage<T> value)? changeImage,
    TResult? Function(ChangeNickName<T> value)? changeNickName,
    TResult? Function(ClickBookmark<T> value)? clickBookmark,
    TResult? Function(ClickMyBoard<T> value)? clickMyBoard,
    TResult? Function(ClickMyInteresting<T> value)? clickMyInteresting,
    TResult? Function(LogOut<T> value)? logOut,
  }) {
    return clickMyBoard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeImage<T> value)? changeImage,
    TResult Function(ChangeNickName<T> value)? changeNickName,
    TResult Function(ClickBookmark<T> value)? clickBookmark,
    TResult Function(ClickMyBoard<T> value)? clickMyBoard,
    TResult Function(ClickMyInteresting<T> value)? clickMyInteresting,
    TResult Function(LogOut<T> value)? logOut,
    required TResult orElse(),
  }) {
    if (clickMyBoard != null) {
      return clickMyBoard(this);
    }
    return orElse();
  }
}

abstract class ClickMyBoard<T> implements MyPageUiEvent<T> {
  const factory ClickMyBoard(final String barName) = _$ClickMyBoardImpl<T>;

  String get barName;
  @JsonKey(ignore: true)
  _$$ClickMyBoardImplCopyWith<T, _$ClickMyBoardImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClickMyInterestingImplCopyWith<T, $Res> {
  factory _$$ClickMyInterestingImplCopyWith(_$ClickMyInterestingImpl<T> value,
          $Res Function(_$ClickMyInterestingImpl<T>) then) =
      __$$ClickMyInterestingImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String barName});
}

/// @nodoc
class __$$ClickMyInterestingImplCopyWithImpl<T, $Res>
    extends _$MyPageUiEventCopyWithImpl<T, $Res, _$ClickMyInterestingImpl<T>>
    implements _$$ClickMyInterestingImplCopyWith<T, $Res> {
  __$$ClickMyInterestingImplCopyWithImpl(_$ClickMyInterestingImpl<T> _value,
      $Res Function(_$ClickMyInterestingImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barName = null,
  }) {
    return _then(_$ClickMyInterestingImpl<T>(
      null == barName
          ? _value.barName
          : barName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClickMyInterestingImpl<T>
    with DiagnosticableTreeMixin
    implements ClickMyInteresting<T> {
  const _$ClickMyInterestingImpl(this.barName);

  @override
  final String barName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyPageUiEvent<$T>.clickMyInteresting(barName: $barName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyPageUiEvent<$T>.clickMyInteresting'))
      ..add(DiagnosticsProperty('barName', barName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClickMyInterestingImpl<T> &&
            (identical(other.barName, barName) || other.barName == barName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, barName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClickMyInterestingImplCopyWith<T, _$ClickMyInterestingImpl<T>>
      get copyWith => __$$ClickMyInterestingImplCopyWithImpl<T,
          _$ClickMyInterestingImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageSource imageSource) changeImage,
    required TResult Function(String newName) changeNickName,
    required TResult Function(String barTagName, String regionTagName)
        clickBookmark,
    required TResult Function(String barName) clickMyBoard,
    required TResult Function(String barName) clickMyInteresting,
    required TResult Function() logOut,
  }) {
    return clickMyInteresting(barName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource imageSource)? changeImage,
    TResult? Function(String newName)? changeNickName,
    TResult? Function(String barTagName, String regionTagName)? clickBookmark,
    TResult? Function(String barName)? clickMyBoard,
    TResult? Function(String barName)? clickMyInteresting,
    TResult? Function()? logOut,
  }) {
    return clickMyInteresting?.call(barName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource imageSource)? changeImage,
    TResult Function(String newName)? changeNickName,
    TResult Function(String barTagName, String regionTagName)? clickBookmark,
    TResult Function(String barName)? clickMyBoard,
    TResult Function(String barName)? clickMyInteresting,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (clickMyInteresting != null) {
      return clickMyInteresting(barName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeImage<T> value) changeImage,
    required TResult Function(ChangeNickName<T> value) changeNickName,
    required TResult Function(ClickBookmark<T> value) clickBookmark,
    required TResult Function(ClickMyBoard<T> value) clickMyBoard,
    required TResult Function(ClickMyInteresting<T> value) clickMyInteresting,
    required TResult Function(LogOut<T> value) logOut,
  }) {
    return clickMyInteresting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeImage<T> value)? changeImage,
    TResult? Function(ChangeNickName<T> value)? changeNickName,
    TResult? Function(ClickBookmark<T> value)? clickBookmark,
    TResult? Function(ClickMyBoard<T> value)? clickMyBoard,
    TResult? Function(ClickMyInteresting<T> value)? clickMyInteresting,
    TResult? Function(LogOut<T> value)? logOut,
  }) {
    return clickMyInteresting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeImage<T> value)? changeImage,
    TResult Function(ChangeNickName<T> value)? changeNickName,
    TResult Function(ClickBookmark<T> value)? clickBookmark,
    TResult Function(ClickMyBoard<T> value)? clickMyBoard,
    TResult Function(ClickMyInteresting<T> value)? clickMyInteresting,
    TResult Function(LogOut<T> value)? logOut,
    required TResult orElse(),
  }) {
    if (clickMyInteresting != null) {
      return clickMyInteresting(this);
    }
    return orElse();
  }
}

abstract class ClickMyInteresting<T> implements MyPageUiEvent<T> {
  const factory ClickMyInteresting(final String barName) =
      _$ClickMyInterestingImpl<T>;

  String get barName;
  @JsonKey(ignore: true)
  _$$ClickMyInterestingImplCopyWith<T, _$ClickMyInterestingImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutImplCopyWith<T, $Res> {
  factory _$$LogOutImplCopyWith(
          _$LogOutImpl<T> value, $Res Function(_$LogOutImpl<T>) then) =
      __$$LogOutImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LogOutImplCopyWithImpl<T, $Res>
    extends _$MyPageUiEventCopyWithImpl<T, $Res, _$LogOutImpl<T>>
    implements _$$LogOutImplCopyWith<T, $Res> {
  __$$LogOutImplCopyWithImpl(
      _$LogOutImpl<T> _value, $Res Function(_$LogOutImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutImpl<T> with DiagnosticableTreeMixin implements LogOut<T> {
  const _$LogOutImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyPageUiEvent<$T>.logOut()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MyPageUiEvent<$T>.logOut'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageSource imageSource) changeImage,
    required TResult Function(String newName) changeNickName,
    required TResult Function(String barTagName, String regionTagName)
        clickBookmark,
    required TResult Function(String barName) clickMyBoard,
    required TResult Function(String barName) clickMyInteresting,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource imageSource)? changeImage,
    TResult? Function(String newName)? changeNickName,
    TResult? Function(String barTagName, String regionTagName)? clickBookmark,
    TResult? Function(String barName)? clickMyBoard,
    TResult? Function(String barName)? clickMyInteresting,
    TResult? Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource imageSource)? changeImage,
    TResult Function(String newName)? changeNickName,
    TResult Function(String barTagName, String regionTagName)? clickBookmark,
    TResult Function(String barName)? clickMyBoard,
    TResult Function(String barName)? clickMyInteresting,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeImage<T> value) changeImage,
    required TResult Function(ChangeNickName<T> value) changeNickName,
    required TResult Function(ClickBookmark<T> value) clickBookmark,
    required TResult Function(ClickMyBoard<T> value) clickMyBoard,
    required TResult Function(ClickMyInteresting<T> value) clickMyInteresting,
    required TResult Function(LogOut<T> value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeImage<T> value)? changeImage,
    TResult? Function(ChangeNickName<T> value)? changeNickName,
    TResult? Function(ClickBookmark<T> value)? clickBookmark,
    TResult? Function(ClickMyBoard<T> value)? clickMyBoard,
    TResult? Function(ClickMyInteresting<T> value)? clickMyInteresting,
    TResult? Function(LogOut<T> value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeImage<T> value)? changeImage,
    TResult Function(ChangeNickName<T> value)? changeNickName,
    TResult Function(ClickBookmark<T> value)? clickBookmark,
    TResult Function(ClickMyBoard<T> value)? clickMyBoard,
    TResult Function(ClickMyInteresting<T> value)? clickMyInteresting,
    TResult Function(LogOut<T> value)? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class LogOut<T> implements MyPageUiEvent<T> {
  const factory LogOut() = _$LogOutImpl<T>;
}
