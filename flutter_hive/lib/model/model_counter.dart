import 'package:hive/hive.dart';
part 'model_counter.g.dart';

@HiveType(typeId: 0)
class ModelCounter {
  @HiveField(0)
  int? value;

  ModelCounter(
    this.value,
  );
}
