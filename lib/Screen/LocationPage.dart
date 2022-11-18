import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../Constant/colors.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: mapScreen(),
      ),
    );
  }
}

class mapScreen extends StatefulWidget {
  const mapScreen({Key? key}) : super(key: key);

  @override
  State<mapScreen> createState() => _mapScreenState();
}

class _mapScreenState extends State<mapScreen> {
  static const _initialCamera = CameraPosition(
    target: LatLng(37, -122),
    zoom: 11,
  );

  late GoogleMapController _googleMapController;

  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        initialCameraPosition: _initialCamera,
        onMapCreated: (controller) => _googleMapController = controller,
      ),
      floatingActionButton: SizedBox(
        height: 200,
        child: FloatingActionButton(
            backgroundColor: kIconColor,
            foregroundColor: Colors.black,
            child: Icon(Icons.center_focus_strong),
            onPressed: () => _googleMapController.animateCamera(
                CameraUpdate.newCameraPosition(_initialCamera)),
          ),
      ),
    );
  }
}
