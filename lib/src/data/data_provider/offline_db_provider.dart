import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class OfflineDbProvider {
  late Isar box;
  OfflineDbProvider({required List<CollectionSchema<dynamic>> schemas}) {
    openDb(schemas: schemas);
  }

  void openDb({required List<CollectionSchema<dynamic>> schemas}) async {
    final dir = await getApplicationDocumentsDirectory();
    box = await Isar.open(schemas, directory: dir.path);
  }
}
