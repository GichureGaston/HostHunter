import '../../domain/entities/server_record_entity.dart';
import '../models/server_record_model.dart';

class ServerRecordMapper {
  static ServerRecordModel toModel(ServerRecordEntity entity) =>
      ServerRecordModel(
        name: entity.name,
        target: entity.target,
        port: entity.port,
        priority: entity.priority,
        weight: entity.weight,
        ttl: entity.ttl,
      );

  static ServerRecordEntity fromModel(ServerRecordModel model) =>
      ServerRecordEntity(
        name: model.name,
        target: model.target,
        port: model.port,
        priority: model.priority,
        weight: model.weight,
        ttl: model.ttl,
      );
}
