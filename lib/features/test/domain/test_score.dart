import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_score.freezed.dart';

part 'test_score.g.dart';

@freezed
class TestScore with _$TestScore {
  const factory TestScore({
    int? vas,
    int? womac,
    @JsonKey(name: 'kebutuhan_natrium') int? kebutuhanNatrium,
  }) = _TestScore;

  factory TestScore.fromJson(Map<String, Object?> json) => _$TestScoreFromJson(json);
}