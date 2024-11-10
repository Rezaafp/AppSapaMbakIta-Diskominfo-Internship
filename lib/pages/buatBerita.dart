import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lapor_mbak_ita/pages/beranda.dart';
import 'package:lapor_mbak_ita/shared/theme_shared.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';


class BuatBerita extends StatefulWidget {
  @override
  _BuatBeritaState createState() => _BuatBeritaState();
}

class _BuatBeritaState extends State<BuatBerita> {
  final _formKey = GlobalKey<FormState>();
  late String _title, _description, _location;
  File? _image;
  double? _latitude, _longitude;

  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

   Future<void> _getLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Memeriksa apakah layanan lokasi diaktifkan
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }
    
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    } 

    // Mendapatkan posisi saat ini
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    
    setState(() {
      _latitude = position.latitude;
      _longitude = position.longitude;
    });
  }

  Future<void> _submitReport() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      if (_image == null) {
        // Tangani jika gambar belum dipilih
        return;
      }
      final uri = Uri.parse('http://192.168.1.12/flutter_auth/add_report.php');
      final request = http.MultipartRequest('POST', uri)
        ..fields['title'] = _title
        ..fields['description'] = _description
        ..fields['location'] = _location
        ..fields['latitude'] = _latitude.toString()
        ..fields['longitude'] = _longitude.toString()
        ..files.add(await http.MultipartFile.fromPath('image', _image!.path));

      final response = await request.send();
      if (response.statusCode == 200) {
        final responseBody = await response.stream.bytesToString();
        final responseData = json.decode(responseBody);
        if (responseData['status'] == 'success') {
          Navigator.pop(context);
        } else {
          // Tangani kesalahan
        }
      } else {
        // Tangani kesalahan
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              floating: true,
              pinned: true,
              snap: true,
              backgroundColor: primaryColor,
              toolbarHeight: 75,
              actions: [
                Container(
                  height: 65, width: 75,
                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Image.asset('assets/Logo.png', fit: BoxFit.fill,),
                ),
              ]
            )
          ];
        },
 
 body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _image == null ? Text('No image selected.') : Image.file(_image!),
                  SizedBox(height: 20),
                  ElevatedButton(onPressed: _pickImage, child: Text('Pick Image')),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset('assets/ambilUlang.png', width: 20, height: 20,
                      color: mutedColor,),
                      SizedBox(width: 5,),
                      Text("Ambil Ulang Gambar", style: primaryTextStyle.copyWith(
                        color: mutedColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500
                      ),)
                    ],
                  ),
                  SizedBox(height: 30,),
                  Text("Judul", style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: bold
                  ),),
                  TextField(decoration: InputDecoration(labelText: 'title'),),
                  SizedBox(height: 30,),
                  Text("Deskripsi", style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: bold
                  ),),
                  TextField(decoration: InputDecoration(labelText: 'description'),),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/lokasi.jpg', height: 25, width: 25,),
                      SizedBox(width: 5,),
                      Text("Lokasi", style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: bold
                      ),)
                    ],
                  ),
                  TextField(decoration: InputDecoration(labelText: 'location'),),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 25,
                        width: 120,
                        child: ElevatedButton(onPressed: (){
                      
                        }, child: Row(
                          children: [
                            Image.asset('assets/gmaps.jpeg', width: 10, height: 15,),
                            SizedBox(width: 10,),
                            Text("Pilih Titik", style: primaryTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: mutedColor
                            ),)
                          ],
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: secondaryColor,
                            side: BorderSide(width: 1, color: mutedColor),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            )
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Text("Keterangan Lokasi", style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: bold
                  ),),
                  TextField(decoration: InputDecoration(labelText: 'detail'),),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade500),
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text("Berita Rahasia", style: primaryTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: mutedColor))
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 35,
                        width: 90,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: darkColor, width: 1)
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                            backgroundColor: secondaryColor,
                          ),
                          onPressed: (){},
                          child: Text('Reset', style: primaryTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: bold,),
                          ),
                          ),
                        )
                      ),
                    ],
                  ),
                  SizedBox(height: 45,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 165,
                        child: Container(
                          child: ElevatedButton(
                          onPressed: _submitReport,
                          child: Text('Buat Berita', style: primaryTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: bold,
                            color: secondaryColor),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            )
                          ),),
                        )
                      ),
                    ],
                  ),
                ],
              ),
            )
          ),
        )));}}