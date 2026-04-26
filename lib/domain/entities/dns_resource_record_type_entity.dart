class DnsResourceRecordTypeEntity {
  const DnsResourceRecordTypeEntity({required this.name, required this.value});

  final int value;
  final String name;

  @override
  String toString() => 'DnsResourceRecordTypeEntity($name, $value)';
}
