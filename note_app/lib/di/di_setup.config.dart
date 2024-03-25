// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:note_app/data/data_source/note_db_helper.dart' as _i4;
import 'package:note_app/data/repository/mock_title_repository_impl.dart'
    as _i8;
import 'package:note_app/data/repository/note_repository_impl.dart' as _i6;
import 'package:note_app/data/repository/title_repository_impl.dart' as _i9;
import 'package:note_app/di/app_module.dart' as _i18;
import 'package:note_app/domain/repository/note_repository.dart' as _i5;
import 'package:note_app/domain/repository/title_repository.dart' as _i7;
import 'package:note_app/domain/use_case/add_note_use_case.dart' as _i11;
import 'package:note_app/domain/use_case/delete_note_use_case.dart' as _i12;
import 'package:note_app/domain/use_case/get_note_use_case.dart' as _i13;
import 'package:note_app/domain/use_case/get_notes_use_case.dart' as _i14;
import 'package:note_app/domain/use_case/update_note_use_case.dart' as _i10;
import 'package:note_app/domain/use_case/use_cases.dart' as _i15;
import 'package:note_app/presentation/add_edit_note/add_edit_note_view_model.dart'
    as _i16;
import 'package:note_app/presentation/notes/notes_view_model.dart' as _i17;
import 'package:sqflite/sqflite.dart' as _i3;

const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    await gh.factoryAsync<_i3.Database>(
      () => appModule.db,
      preResolve: true,
    );
    gh.singleton<_i4.NoteDbHelper>(() => _i4.NoteDbHelper(gh<_i3.Database>()));
    gh.singleton<_i5.NoteRepository>(
        () => _i6.NoteRepositoryImpl(gh<_i4.NoteDbHelper>()));
    gh.singleton<_i7.TitleRepository>(
      () => _i8.MockTitleRepositoryImpl(),
      registerFor: {_dev},
    );
    gh.singleton<_i7.TitleRepository>(
      () => _i9.TitleRepositoryImpl(),
      registerFor: {_prod},
    );
    gh.singleton<_i10.UpdateNoteUseCase>(
        () => _i10.UpdateNoteUseCase(gh<_i5.NoteRepository>()));
    gh.singleton<_i11.AddNoteUseCase>(
        () => _i11.AddNoteUseCase(gh<_i5.NoteRepository>()));
    gh.singleton<_i12.DeleteNoteUseCase>(
        () => _i12.DeleteNoteUseCase(gh<_i5.NoteRepository>()));
    gh.singleton<_i13.GetNoteUseCase>(
        () => _i13.GetNoteUseCase(gh<_i5.NoteRepository>()));
    gh.singleton<_i14.GetNotesUseCase>(
        () => _i14.GetNotesUseCase(gh<_i5.NoteRepository>()));
    gh.singleton<_i15.UseCases>(() => _i15.UseCases(
          addNoteUseCase: gh<_i11.AddNoteUseCase>(),
          deleteNoteUseCase: gh<_i12.DeleteNoteUseCase>(),
          getNotesUseCase: gh<_i14.GetNotesUseCase>(),
          getNoteUseCase: gh<_i13.GetNoteUseCase>(),
          updateNoteUseCase: gh<_i10.UpdateNoteUseCase>(),
        ));
    gh.factory<_i16.AddEditNoteViewModel>(
        () => _i16.AddEditNoteViewModel(gh<_i15.UseCases>()));
    gh.factory<_i17.NotesViewModel>(() => _i17.NotesViewModel(
          gh<_i15.UseCases>(),
          gh<_i7.TitleRepository>(),
        ));
    return this;
  }
}

class _$AppModule extends _i18.AppModule {}
