import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Photo.g.dart';
@JsonSerializable()
class Photo extends Equatable {
  int id;
  String tags;
  @JsonKey(name: 'previewURL') //json key값을 변환 하고자 할때 사용
  String previewUrl;

  @override
  // TODO: implement props
  List<Object?> get props => [id];

  Photo({
    required this.id,
    required this.tags,
    required this.previewUrl,
  });

  factory Photo.fromJson(Map<String, dynamic> json)=> _$PhotoFromJson(json);

  Map<String, dynamic> toJson()=>_$PhotoToJson(this);
}
