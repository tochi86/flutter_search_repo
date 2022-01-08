import 'package:mocktail/mocktail.dart';

class Listener<T> extends Mock {
  void call(T? previous, T value);
}

void verifyListener<T>(Listener<T> listener, List<T> stateList) {
  if (stateList.isEmpty) throw ArgumentError();
  verify(() => listener(null, stateList[0])).called(1);

  Map<List<T>, int> stateChanges = {};
  for (var i = 0; i < stateList.length - 1; i++) {
    final count = stateChanges[[stateList[i], stateList[i + 1]]];
    if (count == null) {
      stateChanges[[stateList[i], stateList[i + 1]]] = 1;
    } else {
      stateChanges[[stateList[i], stateList[i + 1]]] = count + 1;
    }
  }

  for (final key in stateChanges.keys) {
    verify(() => listener(key[0], key[1])).called(stateChanges[key]);
  }
  verifyNoMoreInteractions(listener);
}
