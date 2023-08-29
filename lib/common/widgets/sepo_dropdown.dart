import 'package:flutter/material.dart';

class SepoDropdown extends StatelessWidget {
  const SepoDropdown({
    Key? key,
    this.onChanged,
    this.items,
    required this.hint,
    this.errorText,
    this.value
  }) : super(key: key);

  final void Function(dynamic)? onChanged;
  final List<DropdownMenuItem<Object>>? items;
  final String hint;
  final String? errorText;
  final Object? value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 56,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: ButtonTheme(
              alignedDropdown: true,
              child: DropdownButton(
                onChanged: onChanged,
                isExpanded: true,
                borderRadius: BorderRadius.circular(8),
                dropdownColor: Colors.white,
                underline: Container(),
                style: Theme.of(context).textTheme.bodyMedium,
                hint: Text(hint),
                items: items,
                value: value,
              ),
            ),
          ),
        ),
        if (errorText != null) ...[
          const SizedBox(height: 4),
          Text(
            errorText!,
            style: Theme.of(context)
                .textTheme
                .labelSmall
                ?.copyWith(color: Theme.of(context).colorScheme.error),
          ),
          const SizedBox(height: 4),
        ]
      ],
    );
  }
}