import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../bloc/lookup_bloc.dart';
import '../bloc/lookup_state.dart';
import 'result_card.dart';

class ResultView extends StatelessWidget {
  final String selectedTypeName;

  const ResultView({
    super.key,
    required this.selectedTypeName,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LookupBloc, LookupState>(
      builder: (context, state) {
        if (state is LookupInitial) {
          return const _InfoState(
            icon: Icons.radar,
            message: 'Ready to hunt for hosts',
          );
        }
        if (state is LookupLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is LookupError) {
          return _ErrorState(message: state.message);
        }
        if (state is LookupSuccess) {
          final answers = state.record.answer ?? [];
          if (answers.isEmpty) {
            return Center(
              child: Text(
                'No records found',
                style: GoogleFonts.inter(color: Colors.white54),
              ),
            );
          }
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: answers.length,
            itemBuilder: (context, index) => ResultCard(
              answer: answers[index],
              typeName: selectedTypeName,
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}

class _InfoState extends StatelessWidget {
  final IconData icon;
  final String message;

  const _InfoState({required this.icon, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Icon(icon, size: 64, color: Colors.white10),
          const SizedBox(height: 16),
          Text(message, style: GoogleFonts.inter(color: Colors.white24)),
        ],
      ),
    );
  }
}

class _ErrorState extends StatelessWidget {
  final String message;

  const _ErrorState({required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.red.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.red.withValues(alpha: 0.3)),
      ),
      child: Row(
        children: [
          const Icon(Icons.error_outline, color: Colors.red),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              message,
              style: GoogleFonts.inter(color: Colors.redAccent),
            ),
          ),
        ],
      ),
    );
  }
}
