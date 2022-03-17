import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hci201/component/reportProblem.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: MapSample());
  }
}

class MapSample extends StatefulWidget {
  const MapSample({Key? key}) : super(key: key);

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  @override
  void initState() {
    super.initState();
  }

  final Completer<GoogleMapController> _controller = Completer();

  static const Marker _kGooglePlexMarker = Marker(
    markerId: MarkerId('_kGooglePlex'),
    infoWindow: InfoWindow(title: 'Vị trí hiện tại'),
    icon: BitmapDescriptor.defaultMarker,
    position: LatLng(11.942191336620807, 108.45337614862895),
  );

  static final Marker _member1 = Marker(
    markerId: const MarkerId('_kmember1'),
    infoWindow: const InfoWindow(title: 'Nguyễn Văn B'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    position: const LatLng(11.940184997889181, 108.4492948836579),
  );

  static final Marker _member2 = Marker(
    markerId: const MarkerId('_kmember2'),
    infoWindow: const InfoWindow(title: 'Nguyễn Thị D'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    position: const LatLng(11.939450227288948, 108.45103295511291),
  );

  static final Marker _member3 = Marker(
    markerId: const MarkerId('_kmember3'),
    infoWindow: const InfoWindow(title: 'Nguyễn Nguyễn'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    position: const LatLng(11.938064654530569, 108.4510865992843),
  );

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(11.942191336620807, 108.45337614862895),
    zoom: 16,
  );

  static const Polyline _m1 = Polyline(
    polylineId: PolylineId('_kM1'),
    points: [
      LatLng(11.942191336620807, 108.45337614862895),
      LatLng(11.940184997889181, 108.4492948836579),
    ],
    width: 2,
  );

  static const Polyline _m2 = Polyline(
    polylineId: PolylineId('_kM2'),
    points: [
      LatLng(11.942191336620807, 108.45337614862895),
      LatLng(11.939450227288948, 108.45103295511291)
    ],
    width: 2,
  );

  static const Polyline _m3 = Polyline(
    polylineId: PolylineId('_kM3'),
    points: [
      LatLng(11.942191336620807, 108.45337614862895),
      LatLng(11.938064654530569, 108.4510865992843),
    ],
    width: 2,
  );

  //11.941635014643564, 108.45421299791225
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          GoogleMap(
            mapType: MapType.terrain,
            markers: {_kGooglePlexMarker, _member1, _member2, _member3},
            // polylines: {_m1, _m2, _m3},
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          buildFloatingSearchBar(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Navigator.push(context, MaterialPageRoute(builder: (context) {
          //   return ChatDetailPage(
          //     "Vịnh Hạ Long",
          //     "assets/images/img.png",
          //     newChat: ChatMessage(
          //         "Tôi đang gặp sự cố, vị trí hiện tại: ", "sender"),
          //     longtitude: "105.6970962607559",
          //     latitude: "9.703045952601762",
          //   );
          // }));
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const ReportProblem();
          }));
        },
        label: const Text('Báo cáo sự cố'),
        icon: const Icon(Icons.warning),
        backgroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget buildFloatingSearchBar() {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return FloatingSearchBar(
      automaticallyImplyBackButton: false,
      hint: 'Search...',
      scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
      transitionDuration: const Duration(milliseconds: 800),
      transitionCurve: Curves.easeInOut,
      physics: const BouncingScrollPhysics(),
      axisAlignment: isPortrait ? 0.0 : -1.0,
      openAxisAlignment: 0.0,
      width: isPortrait ? 600 : 500,
      debounceDelay: const Duration(milliseconds: 500),
      onQueryChanged: (query) {},
      transition: CircularFloatingSearchBarTransition(),
      actions: [
        FloatingSearchBarAction(
          showIfOpened: false,
          child: CircularButton(
            icon: const Icon(Icons.place),
            onPressed: () {},
          ),
        ),
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        ),
      ],
      builder: (context, transition) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Material(
            color: Colors.white,
            elevation: 4.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: Colors.accents.map((color) {
                return Container(height: 112, color: color);
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
