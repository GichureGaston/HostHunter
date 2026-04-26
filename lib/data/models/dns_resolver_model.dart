class DnsResolverModel {
  final String name;
  final Uri url;
  final bool supportsGet;
  final bool isTrusted;

  const DnsResolverModel({
    required this.name,
    required this.url,
    this.supportsGet = false,
    this.isTrusted = true,
  });

  @override
  String toString() => '$name (${url.toString()})';
}
