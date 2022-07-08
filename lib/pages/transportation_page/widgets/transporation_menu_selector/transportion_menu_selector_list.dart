import 'package:flutter/material.dart';
import 'package:oncf_demo/pages/transportation_page/widgets/transporation_menu_selector/widgets/transport_option_botton.dart';

class TransportationMenuSelectorList extends StatelessWidget {
  const TransportationMenuSelectorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        TransportOptionBotton(
          icon: Icons.local_taxi_outlined,
          label: 'Taxi',
        ),
        TransportOptionBotton(
          icon: Icons.bus_alert_outlined,
          label: 'Bus',
        ),
        TransportOptionBotton(
          icon: Icons.directions_railway_filled_outlined,
          label: 'Tramway',
        ),
      ],
    );
  }
}
