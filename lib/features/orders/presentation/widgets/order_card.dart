import 'package:flutter/material.dart';
import 'package:logistix/features/orders/domain/entities/order.dart';
import 'package:logistix/features/orders/presentation/widgets/order_details_sheet.dart';
import 'package:logistix/features/quick_actions/presentation/widgets/quick_action_widget.dart';
import 'package:logistix/features/rider/presentation/widgets/rider_card_small.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key, required this.order, this.eta});

  final Order order;
  final String? eta;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final rider = order.rider;
    void showDetails() {
      showModalBottomSheet(
        context: context,
        showDragHandle: true,
        isScrollControlled: true,
        builder: (_) => OrderDetailsSheet(order: order),
      );
    }

    return DecoratedBox(
      decoration: ShapeDecoration(
        color: Theme.of(context).colorScheme.surface,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
      child: Column(
        children: [
          InkWell(
            onTap: showDetails,
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ActionIcon(size: 44, action: order.type),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                order.dropOff.formatted,
                                style: theme.textTheme.titleMedium,
                                overflow: TextOverflow.clip,
                                maxLines: 1,
                              ),
                            ),
                            // const SizedBox(width: 12),
                            // Text(
                            //   '₦${order.price.toStringAsFixed(0)}',
                            //   style: theme.textTheme.titleMedium?.copyWith(
                            //     // fontWeight: FontWeight.bold,
                            //   ),
                            // ),
                          ],
                        ),
                        if (order.description != null &&
                            order.description!.isNotEmpty)
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              order.description!,
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: theme.textTheme.bodySmall!.color!
                                    .withAlpha(200),
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              margin: const EdgeInsets.only(right: 6),
                              decoration: ShapeDecoration(
                                color: order.status.color,
                                shape: const CircleBorder(),
                              ),
                            ),
                            Text(
                              order.status.label,
                              style: theme.textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (rider != null) RiderCardSmall(rider: rider, eta: eta),
        ],
      ),
    );
  }
}
