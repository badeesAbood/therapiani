import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:therapiani/app/services/theme.dart';
import 'package:therapiani/l10n/l10n.dart';

extension DialogExtension on BuildContext {
  Future<void> showInputDialog({
    required void Function(String value) onValueChanged,
    required String title,
    String? fieldHint,
  }) =>
      showDialog(
        context: this,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              insetPadding: const EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: theme.textTheme.titleLarge,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: fieldHint,
                        border: const UnderlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () => context.maybePop(),
                            child: Text(l10n.cancel)),
                        TextButton(
                            onPressed: () => context.maybePop(),
                            child: Text(l10n.ok)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
}
