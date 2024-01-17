// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dentsuquote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DentsuQuoteImpl _$$DentsuQuoteImplFromJson(Map<String, dynamic> json) =>
    _$DentsuQuoteImpl(
      id: json['id'] as String?,
      ageBracket: json['ageBracket'] as String?,
      createdBy: json['createdBy'] as String?,
      createdAt: json['createdAt'] as String?,
      email: json['email'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      middleName: json['middleName'] as String?,
      numberOfChildren: json['numberOfChildren'] as String?,
      leadSource: json['leadSource'] as String?,
      inPatientCoverLimit: json['inPatientCoverLimit'] as String?,
      dental: json['dental'] as bool?,
      inpatient: json['inpatient'] as bool?,
      lastExpense: json['lastExpense'] as bool?,
      maternity: json['maternity'] as bool?,
      noCoPay: json['noCoPay'] as bool?,
      optical: json['optical'] as bool?,
      outpatient: json['outpatient'] as bool?,
      repatriate: json['repatriate'] as bool?,
      spouseAgeBracket: json['spouseAgeBracket'] as String?,
    );

Map<String, dynamic> _$$DentsuQuoteImplToJson(_$DentsuQuoteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ageBracket': instance.ageBracket,
      'createdBy': instance.createdBy,
      'createdAt': instance.createdAt,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'middleName': instance.middleName,
      'numberOfChildren': instance.numberOfChildren,
      'leadSource': instance.leadSource,
      'inPatientCoverLimit': instance.inPatientCoverLimit,
      'dental': instance.dental,
      'inpatient': instance.inpatient,
      'lastExpense': instance.lastExpense,
      'maternity': instance.maternity,
      'noCoPay': instance.noCoPay,
      'optical': instance.optical,
      'outpatient': instance.outpatient,
      'repatriate': instance.repatriate,
      'spouseAgeBracket': instance.spouseAgeBracket,
    };
