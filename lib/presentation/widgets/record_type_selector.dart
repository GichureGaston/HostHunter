import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../domain/entities/dns_resource_record_type_entity.dart';

class RecordTypeSelector extends StatelessWidget {
  final List<DnsResourceRecordTypeEntity> types;
  final DnsResourceRecordTypeEntity selectedType;
  final ValueChanged<DnsResourceRecordTypeEntity> onSelected;

  const RecordTypeSelector({
    super.key,
    required this.types,
    required this.selectedType,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionHeader('RECORD TYPE'),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: types.map((type) {
            final isSelected = selectedType == type;
            return ChoiceChip(
              label: Text(type.name),
              selected: isSelected,
              onSelected: (selected) {
                if (selected) onSelected(type);
              },
              backgroundColor: const Color(0xFF1E293B),
              selectedColor: const Color.fromARGB(255, 51, 190, 214),
              labelStyle: GoogleFonts.inter(
                color: isSelected ? Colors.white : Colors.white70,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: GoogleFonts.inter(
        color: Colors.white54,
        fontSize: 12,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.1,
      ),
    );
  }
}
