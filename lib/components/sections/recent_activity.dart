import 'package:alubank/components/content_division.dart';
import 'package:alubank/theme/theme_colors.dart';
import 'package:flutter/material.dart';

import '../box_card.dart';
import '../color_dot.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: BoxCard(boxContent: _RecentActivity()),
    );
  }
}

class _RecentActivity extends StatelessWidget {
  const _RecentActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: ColorDot(
                    color: ThemeColors.recentActivity['spent'],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Saída'),
                    Text(
                      '\$9907.97',
                      style: Theme.of(context).textTheme.bodyLarge,
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
                    color: ThemeColors.recentActivity['income'],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Entrada'),
                    Text(
                      '\$9907.97',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
          child: Text('Lime de gastos: \$432.90'),
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: const LinearProgressIndicator(
            value: 0.3,
            minHeight: 8,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: ContentDivision(),
        ),
        const Text(
            'Esse mês você gastou \$1500.00 com jogos. Controle seus custos!'),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Diga-me como',
            style: TextStyle(fontSize: 16),
          ),
        )
      ],
    );
  }
}
