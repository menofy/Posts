import 'identifier.dart';

mixin GenerateId<T extends Identifier> {
  int getId(List<T> data) {
    int id = 1;
    if (data.isNotEmpty) {
      for (T ob in data) {
        if (ob.id! >= id) {
          id = ob.id! + 1;
        }
      }
    }
    return id;
  }
}
