import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:midnight_suspense/src/data/repositories/videos_repository.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

part 'searchbar_event.dart';
part 'searchbar_state.dart';
part 'searchbar_bloc.freezed.dart';

class SearchbarBloc extends Bloc<SearchbarEvent, SearchbarState> {
  SearchbarBloc(this._videosRepository) : super(SearchbarState.initial()) {
    on<SearchbarEvent>((event, emit) async {
      await event.map(
        search: (event) => _search(event, emit),
      );
    });
  }

  final VideosRepository _videosRepository;

  Future<void> _search(_Search event, Emitter<SearchbarState> emit) async {
    emit(SearchbarState.loading());
    // search for videos
    // emit(SearchbarState.loaded(searchResults: []));
    try {
      final List<Video> searchResults = await _videosRepository.fetchSearchResults(event.query);
      emit(SearchbarState.loaded(searchResults: searchResults));
    } catch (e) {
      emit(SearchbarState.error(message: e.toString()));
    }
  }
}
