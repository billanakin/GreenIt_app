import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:greenit_app/services/determinePosition.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  Future<Position> getNearestPosts() async {
    var position = determinePosition();
    return position;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return FutureBuilder<Position>(
        future: getNearestPosts(),
        builder: (BuildContext context, AsyncSnapshot<Position> snapshot) {
          if (snapshot.hasData) {
            return buildBodyWithData(context, snapshot.data);
          } else if (snapshot.hasError) {
            return buildBodyWithError(context, snapshot.error);
          } else {
            return buildLoadingBody(context);
          }
        });
  }

  Widget buildBodyWithData(BuildContext context, Position? position) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Latitude: ${position!.latitude}",
          ),
          Text(
            "Longitude: ${position!.longitude}",
          ),
        ],
      ),
    );
  }

  Widget buildBodyWithError(BuildContext context, Object? error) {
    return Center(
      child: Text(
        error!.toString(),
      ),
    );
  }

  Widget buildLoadingBody(BuildContext context) {
    return const Center(
      child: Text(
        'Loading...',
      ),
    );
  }
}
