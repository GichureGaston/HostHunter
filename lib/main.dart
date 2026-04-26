import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'data/remote/dns_remote_data_source.dart';
import 'data/remote/dns_udp_remote_data_source.dart';
import 'data/remote/dns_tls_remote_data_source.dart';
import 'data/repositories/dns_repository_impl.dart';
import 'domain/usecases/get_dns_records_usecase.dart';
import 'presentation/bloc/lookup_bloc.dart';
import 'presentation/lookup_screen.dart';

void main() {
  final httpClient = http.Client();
  final dohDataSource = DnsRemoteDataSourceImpl(client: httpClient);
  final udpDataSource = DnsUdpRemoteDataSource(serverAddress: '1.1.1.1');
  final tlsDataSource = DnsTlsRemoteDataSource(serverAddress: '1.1.1.1');

  final repository = DnsRepositoryImpl(
    dohDataSource: dohDataSource,
    udpDataSource: udpDataSource,
    tlsDataSource: tlsDataSource,
  );

  final getDnsRecords = GetDnsRecordsUseCase(repository);

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LookupBloc(getDnsRecords: getDnsRecords),
        ),
      ],
      child: const HostHunterApp(),
    ),
  );
}

class HostHunterApp extends StatelessWidget {
  const HostHunterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Host Hunter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF121212),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF0056B3),
          secondary: Color(0xFF00796B),
          surface: Color(0xFF1E1E1E),
          error: Color(0xFFCF6679),
        ),
        dividerColor: Colors.white10,
      ),
      home: const LookupScreen(),
    );
  }
}
