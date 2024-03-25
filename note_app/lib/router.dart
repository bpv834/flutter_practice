import 'dart:convert';

import 'package:go_router/go_router.dart';
import 'package:note_app/di/di_setup.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_screen.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_view_model.dart';
import 'package:note_app/presentation/notes/notes_screen.dart';
import 'package:note_app/presentation/notes/notes_view_model.dart';
import 'package:provider/provider.dart';

import 'data/repository/note_repository_impl.dart';
import 'domain/model/note.dart';
import 'domain/use_case/add_note_use_case.dart';
import 'domain/use_case/delete_note_use_case.dart';
import 'domain/use_case/get_note_use_case.dart';
import 'domain/use_case/get_notes_use_case.dart';
import 'domain/use_case/update_note_use_case.dart';
import 'domain/use_case/use_cases.dart';

final router = GoRouter(initialLocation: '/notes', routes: [
  GoRoute(
    path: '/notes',
    builder: (context, state) {
      return ChangeNotifierProvider(
        create: (_) => getIt<NotesViewModel>(),
        child: const NotesScreen(),
      );
    },
  ),
  GoRoute(
    path: '/add_note',
    builder: (context, state) {
      return ChangeNotifierProvider(
        create: (_) => getIt<AddEditNoteViewModel>(),
        child: const AddEditNoteScreen(),
      );
    },
  ),
  GoRoute(
    path: '/edit_note',
    builder: (context, state) {
      // uri.queryParameters: URI에서 데이터를 전달하는 데 사용됩니다.
      final Note note =
          Note.fromJson(jsonDecode(state.uri.queryParameters['note']!));

      return ChangeNotifierProvider(
          create: (_) => getIt<AddEditNoteViewModel>(), child: AddEditNoteScreen(note: note));
    },
  )
]);
