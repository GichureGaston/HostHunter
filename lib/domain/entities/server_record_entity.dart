class ServerRecordEntity {
  const ServerRecordEntity({
    required this.name,
    required this.target,
    required this.port,
    required this.priority,
    required this.weight,
    required this.ttl,
  });

  final String name;
  final String target;
  final int port;
  final int priority;
  final int weight;
  final int ttl;

  @override
  String toString() =>
      'ServerRecordEntity(target=$target, port=$port, priority=$priority, weight=$weight, ttl=$ttl)';
}
