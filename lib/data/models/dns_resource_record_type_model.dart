import 'package:equatable/equatable.dart';

class DnsResourceRecordTypeModel extends Equatable {
  const DnsResourceRecordTypeModel(this.name, this.value);

  final int value;
  final String name;
  static final DnsResourceRecordTypeModel ipv4AddressRecord =
      DnsResourceRecordTypeModel('A', 1);
  static final DnsResourceRecordTypeModel nameServerRecord =
      DnsResourceRecordTypeModel('NS', 2);
  static final DnsResourceRecordTypeModel canonicalNameRecord =
      DnsResourceRecordTypeModel('CNAME', 5);
  static final DnsResourceRecordTypeModel stateOfAuthorityRecord =
      DnsResourceRecordTypeModel('SOA', 6);
  static final DnsResourceRecordTypeModel pointerRecord =
      DnsResourceRecordTypeModel('PTR', 12);
  static final DnsResourceRecordTypeModel mailExchangeRecord =
      DnsResourceRecordTypeModel('MX', 15);
  static final DnsResourceRecordTypeModel textRecord =
      DnsResourceRecordTypeModel('TXT', 16);
  static final DnsResourceRecordTypeModel ipv6AddressRecord =
      DnsResourceRecordTypeModel('AAAA', 28);
  static final DnsResourceRecordTypeModel serviceLocatorRecord =
      DnsResourceRecordTypeModel('SRV', 33);

  @override
  // TODO: implement props
  List<Object?> get props => [name, value];

  @override
  String toString() => 'DnsResourceRecordTypeModel($name, $value)';

  static Map<int, DnsResourceRecordTypeModel> fromValue(int value) => {
    1: ipv4AddressRecord,
    2: nameServerRecord,
    5: canonicalNameRecord,
    6: stateOfAuthorityRecord,
    12: pointerRecord,
    15: mailExchangeRecord,
    16: textRecord,
    28: ipv6AddressRecord,
    33: serviceLocatorRecord,
  };

  static DnsResourceRecordTypeModel? fromName(String name) {
    switch (name.toUpperCase()) {
      case 'A':
        return ipv4AddressRecord;
      case 'NS':
        return nameServerRecord;
      case 'CNAME':
        return canonicalNameRecord;
      case 'SOA':
        return stateOfAuthorityRecord;
      case 'PTR':
        return pointerRecord;
      case 'MX':
        return mailExchangeRecord;
      case 'TXT':
        return textRecord;
      case 'AAAA':
        return ipv6AddressRecord;
      case 'SRV':
        return serviceLocatorRecord;
      default:
        return null;
    }
  }
}
