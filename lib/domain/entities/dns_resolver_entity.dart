class DnsResolverEntity {
  const DnsResolverEntity({
    required this.id,
    required this.name,
    required this.url,
    this.supportsGet = false,
    this.isTrusted = true,
  });

  final int id;
  final String name;
  final String url;
  final bool supportsGet;
  final bool isTrusted;

  @override
  String toString() => '$name ($url)';
}
