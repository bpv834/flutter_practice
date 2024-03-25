import 'package:injectable/injectable.dart';
import 'package:note_app/domain/repository/title_repository.dart';
@prod
@Singleton(as: TitleRepository)
class TitleRepositoryImpl implements TitleRepository{
  @override
  String getTitle() {
    return '메모 앱';
  }

}