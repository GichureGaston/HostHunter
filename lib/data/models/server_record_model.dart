import 'dart:math';

class ServerRecordModel {
  const ServerRecordModel({
    required this.name,
    required this.target,
    required this.port,
    required this.priority,
    required this.weight,
    required this.ttl,
  });
  factory ServerRecordModel.fromMap(Map<String, dynamic> map) {
    return ServerRecordModel(
      name: map['name'] ?? '',
      target: map['target'] ?? '',
      port: map['port'] ?? 0,
      priority: map['priority'] ?? 0,
      weight: map['weight'] ?? 0,
      ttl: map['ttl'] ?? 300,
    );
  }

  final String name;
  final String target;
  final int port;
  final int priority;
  final int weight;
  final int ttl;
  Map<String, dynamic> toMap() => {
    'name': name,
    'target': target,
    'port': port,
    'priority': priority,
    'weight': weight,
    'ttl': ttl,
  };
  @override
  String toString() =>
      'SrvRecord(target=$target, port=$port, priority=$priority, weight=$weight, ttl=$ttl)';

  static int compare(ServerRecordModel a, ServerRecordModel b) {
    if (a.priority != b.priority) {
      return a.priority.compareTo(b.priority);
    }
    return b.weight.compareTo(a.weight);
  }
}

class ServerRecordSelector {
  static final _random = Random.secure();
  static List<ServerRecordModel> select(List<ServerRecordModel> records) {
    if (records.isEmpty) {
      return [];
    }
    final grouped = <int, List<ServerRecordModel>>{};
    for (final r in records) {
      grouped.putIfAbsent(r.priority, () => []).add(r);
    }
    final sortedPriorities = grouped.keys.toList()..sort();
    final result = <ServerRecordModel>[];

    for (final priority in sortedPriorities) {
      final group = List<ServerRecordModel>.from(grouped[priority]!);
      result.addAll(_weightedShuffle(group));
    }
    return result;
  }

  static List<ServerRecordModel> _weightedShuffle(
    List<ServerRecordModel> group,
  ) {
    final output = <ServerRecordModel>[];
    final pool = List<ServerRecordModel>.from(group);

    while (pool.isNotEmpty) {
      final totalWeight = pool.fold<int>(0, (sum, r) => sum + r.weight);
      final r = totalWeight > 0 ? _random.nextInt(totalWeight + 1) : 0;

      int cumulative = 0;
      late ServerRecordModel chosen;

      for (final record in pool) {
        cumulative += record.weight;
        if (r <= cumulative) {
          chosen = record;
          break;
        }
      }

      output.add(chosen);
      pool.remove(chosen);
    }

    return output;
  }
}
