import 'package:freezed_annotation/freezed_annotation.dart';

part 'dentsuquote.freezed.dart';
part 'dentsuquote.g.dart';

@freezed
class DentsuQuote with _$DentsuQuote {
  factory DentsuQuote({
    required String? id,
    String? ageBracket,
    String? createdBy,
    String? createdAt,
    String? email,
    String? firstName,
    String? lastName,
    String? middleName,
    String? numberOfChildren,
    String? leadSource,
    String? inPatientCoverLimit,
    bool? dental,
    bool? inpatient,
    bool? lastExpense,
    bool? maternity,
    bool? noCoPay,
    bool? optical,
    bool? outpatient,
    bool? repatriate,
    String? spouseAgeBracket,
  }) = _DentsuQuote;

  factory DentsuQuote.fromJson(Map<String, dynamic> json) =>
      _$DentsuQuoteFromJson(json);
}

// Fields: ageBracket, createdAt, id, createdBy, dental (bool), email, firstName, inPatientCoverLimit, lastName, inpatient (bool), lastExpense (bool), leadSource, bool maternity, middleName, noCoPay (bool), numberOfChildren (String), optical (bool), outpatient (bool), repatriate (bool), spouseAgeBracket