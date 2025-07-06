import 'package:flutter/material.dart';

class CProductPriceText extends StatelessWidget {
  const CProductPriceText({
    super.key,
    this.currencySign ='\$',
    required this.price,
    this.isLarger = false,
    this.maxLines = 1,
    this.lineThrough = false,
  });

    final String currencySign, price;
    final int maxLines;
    final bool isLarger;
    final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarger
          ? Theme.of(context).textTheme.headlineMedium!.apply(decoration: lineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.apply(decoration: lineThrough ? TextDecoration.lineThrough : null),
    );
  }
}
