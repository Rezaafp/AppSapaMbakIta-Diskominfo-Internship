import 'package:flutter/material.dart';
import 'package:lapor_mbak_ita/pages/beranda.dart';
import 'package:lapor_mbak_ita/pages/beritaDetail.dart';
import 'package:lapor_mbak_ita/pages/buatBerita.dart';
import 'package:lapor_mbak_ita/pages/callCenter.dart';
import 'package:lapor_mbak_ita/pages/profilePage.dart';
import 'package:lapor_mbak_ita/shared/theme_shared.dart';

class Berita extends StatelessWidget {
  const Berita({super.key});

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
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: ((context) => BeritaDetail())));
              },
              child: Padding(padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 175,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400
                          ),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Rabu, 12 Mei 2024", style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500 
                                ),),
                                Text("14:00 WIB", style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500 
                                ),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text("Lorem Ipsum has been the industry's standard dummy text ever since the  1500s, when an unknown printer took a galley of type and scrambled it to  make a type specimen book.", 
                            style: primaryTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: bold
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.justify,),
                            SizedBox(height: 5,),
                            Text("Lorem Ipsum has been the industry's standard dummy text ever since the  1500s, when an unknown printer took a galley of type and scrambled it to  make a type specimen book.", 
                            style: primaryTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w500
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            textAlign: TextAlign.justify,),
                          ],
                        ),)
                      ],
                    ),
                    SizedBox(height: 15,),
                    Divider(
                      color: mutedColor,
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 175,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400
                          ),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Rabu, 12 Mei 2024", style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500 
                                ),),
                                Text("14:00 WIB", style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500 
                                ),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text("Lorem Ipsum has been the industry's standard dummy text ever since the  1500s, when an unknown printer took a galley of type and scrambled it to  make a type specimen book.", 
                            style: primaryTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: bold
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.justify,),
                            SizedBox(height: 5,),
                            Text("Lorem Ipsum has been the industry's standard dummy text ever since the  1500s, when an unknown printer took a galley of type and scrambled it to  make a type specimen book.", 
                            style: primaryTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w500
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            textAlign: TextAlign.justify,),
                          ],
                        ),)
                      ],
                    ),
                    SizedBox(height: 15,),
                    Divider(
                      color: mutedColor,
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 175,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400
                          ),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Rabu, 12 Mei 2024", style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500 
                                ),),
                                Text("14:00 WIB", style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500 
                                ),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text("Lorem Ipsum has been the industry's standard dummy text ever since the  1500s, when an unknown printer took a galley of type and scrambled it to  make a type specimen book.", 
                            style: primaryTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: bold
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.justify,),
                            SizedBox(height: 5,),
                            Text("Lorem Ipsum has been the industry's standard dummy text ever since the  1500s, when an unknown printer took a galley of type and scrambled it to  make a type specimen book.", 
                            style: primaryTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w500
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            textAlign: TextAlign.justify,),
                          ],
                        ),)
                      ],
                    ),
                    SizedBox(height: 15,),
                    Divider(
                      color: mutedColor,
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 175,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400
                          ),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Rabu, 12 Mei 2024", style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500 
                                ),),
                                Text("14:00 WIB", style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500 
                                ),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text("Lorem Ipsum has been the industry's standard dummy text ever since the  1500s, when an unknown printer took a galley of type and scrambled it to  make a type specimen book.", 
                            style: primaryTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: bold
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.justify,),
                            SizedBox(height: 5,),
                            Text("Lorem Ipsum has been the industry's standard dummy text ever since the  1500s, when an unknown printer took a galley of type and scrambled it to  make a type specimen book.", 
                            style: primaryTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w500
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            textAlign: TextAlign.justify,),
                          ],
                        ),)
                      ],
                    ),
                    SizedBox(height: 15,),
                    Divider(
                      color: mutedColor,
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 175,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400
                          ),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Rabu, 12 Mei 2024", style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500 
                                ),),
                                Text("14:00 WIB", style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500 
                                ),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text("Lorem Ipsum has been the industry's standard dummy text ever since the  1500s, when an unknown printer took a galley of type and scrambled it to  make a type specimen book.", 
                            style: primaryTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: bold
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.justify,),
                            SizedBox(height: 5,),
                            Text("Lorem Ipsum has been the industry's standard dummy text ever since the  1500s, when an unknown printer took a galley of type and scrambled it to  make a type specimen book.", 
                            style: primaryTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w500
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            textAlign: TextAlign.justify,),
                          ],
                        ),)
                      ],
                    ),
                    SizedBox(height: 15,),
                    Divider(
                      color: mutedColor,
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 175,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400
                          ),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Rabu, 12 Mei 2024", style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500 
                                ),),
                                Text("14:00 WIB", style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500 
                                ),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text("Lorem Ipsum has been the industry's standard dummy text ever since the  1500s, when an unknown printer took a galley of type and scrambled it to  make a type specimen book.", 
                            style: primaryTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: bold
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.justify,),
                            SizedBox(height: 5,),
                            Text("Lorem Ipsum has been the industry's standard dummy text ever since the  1500s, when an unknown printer took a galley of type and scrambled it to  make a type specimen book.", 
                            style: primaryTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w500
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            textAlign: TextAlign.justify,),
                          ],
                        ),)
                      ],
                    ),
                    SizedBox(height: 15,),
                    Divider(
                      color: mutedColor,
                      thickness: 1,
                    ),
                  ],
                ),
              ),
            ),
          ) 
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: ((context) => BuatBerita())));
        }, child: Icon(Icons.add, color: secondaryColor,), 
        backgroundColor: primaryColor,
        shape: CircleBorder(),),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: mutedColor, width: 1.0), // Menambahkan border hanya pada bagian atas
          ),
        ),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: IconButton(icon: Icon(Icons.home), color: darkColor,onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: ((context) => Beranda())));
              },),
              label: 'Laporan',
            ),
            BottomNavigationBarItem(
              icon: IconButton(icon: Icon(Icons.newspaper), color: darkColor,onPressed: () {
                
              },),
              label: 'Berita',
            ),
            BottomNavigationBarItem(
              icon: IconButton(icon: Icon(Icons.call), color: darkColor,onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: ((context) => CallCenter())));
              },),
              label: 'Call Center',
            ),
            BottomNavigationBarItem(
              icon: IconButton(icon: Icon(Icons.person), color: darkColor,onPressed: () {
                 Navigator.push(context,MaterialPageRoute(builder: ((context) => Profile())));
              },),
              label: 'Profile',
            ),
          ],
          selectedItemColor: mutedColor,
          backgroundColor: secondaryColor,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
        )
      )
    );
  }
}