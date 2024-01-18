import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class map extends StatelessWidget {
  CameraPosition cameraPosition=const CameraPosition(target: LatLng(36.191369,37.156560),zoom: 14);
  GoogleMapController ? goo;
  late BitmapDescriptor customMarker;
  map({super.key});
  List<Marker> markers=[
    Marker(infoWindow: InfoWindow(title: 'مركز شرطة الصالحين',), markerId: MarkerId("1"),position: LatLng(36.19433478408879, 37.1691571183374)),
    Marker(infoWindow: InfoWindow(title: 'مركز شرطة الشعار',),markerId: MarkerId("2"),position: LatLng(36.205693743062795, 37.17911347766008)),
    Marker(infoWindow: InfoWindow(title: 'مركز شرطة الكلاسة',),markerId: MarkerId("3"),position: LatLng(36.19793658367028, 37.14512452686887)),
    Marker(infoWindow: InfoWindow(title: 'مركز شرطة العزيزية',),markerId: MarkerId("4"),position: LatLng(36.21226841077342, 37.15481758891296)),
    Marker(infoWindow: InfoWindow(title: 'مركز شرطة الجميلية',),markerId: MarkerId("5"),position: LatLng(36.211437393138795, 37.14314461591397)),
    Marker(infoWindow: InfoWindow(title: 'مركز شرطة الجلوم',),markerId: MarkerId("6"),position: LatLng(36.20395783729808, 37.15310097523664)),
    Marker(infoWindow: InfoWindow(title: 'مركز شرطة حلب الجديدة',),markerId: MarkerId("7"),position: LatLng(36.209775331393686, 37.094049464771096)),
    Marker(infoWindow: InfoWindow(title: 'مرطز شرطة باب الحديد',),markerId: MarkerId("8"),position: LatLng(36.20901800462262, 37.16572389098476)),
    Marker(infoWindow: InfoWindow(title: 'مركز شرطة الشهباء',),markerId: MarkerId("9"),position: LatLng(36.21780830279603, 37.11773873350437)),
    Marker(infoWindow: InfoWindow(title: 'مركز شرطة الحمدانية',), markerId: MarkerId("11"),position: LatLng(36.18202818515456, 37.11626416187671)),
    Marker(infoWindow: InfoWindow(title: 'مطار حلب الدولي'),markerId: MarkerId("10"),position: LatLng(36.23592358571466, 37.1439213230012)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil("homepage", (route) => false);
              },
              icon: const Icon(
                Icons.exit_to_app,
                color: Color(0xff107163),
              ))
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(child: GoogleMap(
              markers:markers.toSet (),
              initialCameraPosition: cameraPosition,mapType: MapType.normal,onMapCreated: (mapcontroller){
              goo=mapcontroller;},)
            ),
          ],
        ),
      ),
    );}
}