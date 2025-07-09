import 'package:cmc_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:cmc_store/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class CPrimaryHeaderContainer extends StatelessWidget {
  const CPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CCurvedEdgeWidget(
      child: Container(
        color: CColors.primary,


        child: Stack(
          children: [

            Positioned(top: -150, right: -250, child: CCirculatorContainer(backgroundColor: CColors.textWhite.withOpacity(0.1))),
            Positioned(top: 100, right: -300, child: CCirculatorContainer(backgroundColor: CColors.textWhite.withOpacity(0.1))),
            child,

          ],
        ),
      )
    );
  }
}
