import 'package:flutter/material.dart';
import 'package:hci201/component/locationCard.dart';
import 'package:hci201/component/occurringTripLocationList.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class AddLocation extends StatefulWidget {
  const AddLocation({Key? key}) : super(key: key);

  @override
  State<AddLocation> createState() => _AddLocationState();
}

class _AddLocationState extends State<AddLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Thêm địa điểm"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 84.0),
            child: ListView.builder(
              itemCount: occurringTripList.length,
              itemBuilder: (BuildContext context, int index) {
                return LocationCard(
                  destination: occurringTripList[index].destination,
                  time: occurringTripList[index].time,
                  date: occurringTripList[index].date,
                  dayOfWeek: occurringTripList[index].dayOfWeek,
                  address: occurringTripList[index].address,
                  picture: occurringTripList[index].picture
                );
              },
            ),
          ),
          buildFloatingSearchBar(),
        ],
      ),
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
        return Container();
      },
    );
  }
}
