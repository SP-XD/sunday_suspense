import 'package:midnight_suspense/src/data/models/category_model.dart';
import 'package:midnight_suspense/src/data/repositories/videos_repository.dart';
import 'package:midnight_suspense/src/features/videos/videos.dart';

class VBlocManagerService {
  final Map<String, VideosBloc> _blocs = {};

  VideosBloc getBloc(String categoryId, CategoryType type, VideosRepository videosRepository) {
    if (_blocs.containsKey(categoryId)) {
      return _blocs[categoryId]!;
    } else {
      final bloc = VideosBloc(
        categoryId,
        videosRepository,
      )..add(
          VideosEvent.loadVideos(
            categoryId: categoryId,
            categoryType: type,
          ),
        );
      _blocs[categoryId] = bloc;
      return bloc;
    }
  }

  void disposeAll() {
    _blocs.values.forEach((bloc) => bloc.close());
    _blocs.clear();
  }
}
