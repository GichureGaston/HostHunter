import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/dns_resolver_entity.dart';
import '../../domain/entities/dns_resource_record_type_entity.dart';
import 'bloc/lookup_bloc.dart';
import 'bloc/lookup_event.dart';
import 'widgets/lookup_app_bar.dart';
import 'widgets/lookup_search_bar.dart';
import 'widgets/record_type_selector.dart';
import 'widgets/resolver_selector.dart';
import 'widgets/result_view.dart';

class LookupScreen extends StatefulWidget {
  const LookupScreen({super.key});

  @override
  State<LookupScreen> createState() => _LookupScreenState();
}

class _LookupScreenState extends State<LookupScreen> {
  final TextEditingController _controller = TextEditingController();

  static const List<DnsResourceRecordTypeEntity> _recordTypes = [
    DnsResourceRecordTypeEntity(name: 'A', value: 1),
    DnsResourceRecordTypeEntity(name: 'AAAA', value: 28),
    DnsResourceRecordTypeEntity(name: 'MX', value: 15),
    DnsResourceRecordTypeEntity(name: 'TXT', value: 16),
    DnsResourceRecordTypeEntity(name: 'CNAME', value: 5),
    DnsResourceRecordTypeEntity(name: 'NS', value: 2),
  ];

  static const List<DnsResolverEntity> _resolvers = [
    DnsResolverEntity(
      id: 1,
      name: 'Google DNS (API)',
      url: 'https://dns.google/resolve',
      type: ResolverType.doh,
    ),
    DnsResolverEntity(
      id: 2,
      name: 'Cloudflare (API)',
      url: 'https://cloudflare-dns.com/query',
      type: ResolverType.doh,
    ),
    DnsResolverEntity(
      id: 3,
      name: 'Cloudflare (DoT — Encrypted UDP)',
      url: '1.1.1.1',
      type: ResolverType.dot,
    ),
    DnsResolverEntity(
      id: 4,
      name: 'Cloudflare (Raw UDP — Unencrypted)',
      url: '1.1.1.1',
      type: ResolverType.udp,
    ),
  ];

  late DnsResourceRecordTypeEntity _selectedType;
  late DnsResolverEntity _selectedResolver;

  @override
  void initState() {
    super.initState();
    _selectedType = _recordTypes[0];
    _selectedResolver = _resolvers[0];
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      body: CustomScrollView(
        slivers: [
          LookupAppBar(activeResolverType: _selectedResolver.type),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LookupSearchBar(
                    controller: _controller,
                    onSearch: _performLookup,
                  ),
                  const SizedBox(height: 24),
                  RecordTypeSelector(
                    types: _recordTypes,
                    selectedType: _selectedType,
                    onSelected: (type) => setState(() => _selectedType = type),
                  ),
                  const SizedBox(height: 24),
                  ResolverSelector(
                    resolvers: _resolvers,
                    selectedResolver: _selectedResolver,
                    onChanged: (resolver) =>
                        setState(() => _selectedResolver = resolver),
                  ),
                  const SizedBox(height: 32),
                  const Divider(color: Colors.white10),
                  const SizedBox(height: 16),
                  ResultView(selectedTypeName: _selectedType.name),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _performLookup() {
    final domain = _controller.text.trim();
    if (domain.isNotEmpty) {
      context.read<LookupBloc>().add(
        LookupStarted(
          domain: domain,
          type: _selectedType,
          resolver: _selectedResolver,
        ),
      );
    }
  }
}
