import 'package:freezed_annotation/freezed_annotation.dart';

part 'test.freezed.dart';

part 'test.g.dart';


class TimestampSerializer implements JsonConverter<DateTime?, dynamic> {
  const TimestampSerializer();

  @override
  DateTime? fromJson(dynamic timestamp) {
    if (timestamp == null) return null;
    return DateTime.parse(timestamp).toLocal();
  }

  @override
  String toJson(DateTime? date) => date.toString();
}

@freezed
class Test with _$Test {
  const factory Test({
    required int id,
    required String title,
    @JsonKey(name: 'done_date') @TimestampSerializer() DateTime? doneDate,
    @JsonKey(name: 'locked_until_date') @TimestampSerializer() DateTime? lockedUntil,
  }) = _Test;

  factory Test.fromJson(Map<String, Object?> json) => _$TestFromJson(json);
}
