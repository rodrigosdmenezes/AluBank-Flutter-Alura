import 'package:alubank/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import '../box_card.dart';
import '../color_dot.dart';
import '../content_division.dart';

class PointsAccount extends StatelessWidget {
  const PointsAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Pontos da conta',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          const Padding(
            padding: const EdgeInsets.all(1.0),
            child: BoxCard(boxContent: _PointsAccount()),
          ),
        ],
      ),
    );
  }
}

class _PointsAccount extends StatelessWidget {
  const _PointsAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Column(
          children: [
            Text(
              'Pontos totais:',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        Text(
          '3000',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: ContentDivision(),
        ),
        const Text(
          'Objetivos:',
          style: const TextStyle(fontSize: 16),
        ),
        Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: ColorDot(
                    color: ThemeColors.recentActivity['ellipse'],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Entrega grátis: 15000pts',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: ColorDot(
                    color: ThemeColors.recentActivity['ellipse2'],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1 mês de streaming: 30000pts',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
