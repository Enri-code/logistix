import 'package:flutter/material.dart';
import 'package:logistix/features/rider/domain/entities/rider.dart';
import 'package:logistix/features/rider/presentation/pages/rider_tracker_page.dart';
import 'package:logistix/features/rider/presentation/widgets/rider_card_small.dart';
import 'package:logistix/features/rider/presentation/widgets/rider_tracker_widget.dart';

class RiderOnTheWayCard extends StatelessWidget {
  const RiderOnTheWayCard({super.key, required this.rider, required this.eta});

  final Rider rider;
  final String eta;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              SizedBox(
                height: 140,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return RiderTrackerPage(rider: rider);
                        },
                      ),
                    );
                  },
                  child: AbsorbPointer(
                    child: RiderTrackerMapWidget(rider: rider),
                  ),
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.black.withAlpha(100),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.navigation,
                          size: 14,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          'Tracking Rider',
                          style: Theme.of(
                            context,
                          ).textTheme.labelSmall?.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Positioned(
              //   bottom: 0,
              //   right: 0,
              //   child: TextButton(
              //     onPressed: () {},
              //     child: Text(
              //       'Open',
              //       // style: TextStyle(
              //       //   color: Theme.of(context).colorScheme.onSurface,
              //       // ),
              //     ),
              //   ),
              // ),
            ],
          ),
          RiderCardSmall(
            rider: rider,
            eta: eta,
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(16),
            ),
          ),
        ],
      ),
    );
  }
}
