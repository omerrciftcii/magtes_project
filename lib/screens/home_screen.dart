import 'package:flutter/material.dart';
import 'package:setup_1/models/driller_model.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          GridTile(
            child: Image.network(
              'https://www.alternate.co.uk/p/230x230/9/Makita_DF333DSAE_drill_Keyless_1700_RPM_Black_Blue_1_2_kg__Screw_Driller@@9waeea08.jpg',
              fit: BoxFit.fill,
            ),
            footer: Card(color: Colors.black54,child: Center(child: Text('Matkap', style: TextStyle(color: Colors.white, fontSize: 24),)),),
          ),
           GridTile(
            child: Image.network(
              'https://n11scdn1.akamaized.net/a1/1024/ev-yasam/taslamalar/taslama-bosch-gws-22-180-spiral-makinesi__0947054229185081.png',
              fit: BoxFit.fill,
            ),
            footer: Card(color: Colors.black54,child: Center(child: Text('Spiral', style: TextStyle(color: Colors.white, fontSize: 24),)),),
          ),
           GridTile(
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ16HVN86U2bU2ETn8NORP8HYiG_687aBiekw&usqp=CAU',
              fit: BoxFit.fill,
            ),
            footer: Card(color: Colors.black54,child: Center(child: Text('Boru', style: TextStyle(color: Colors.white, fontSize: 24),)),),
          ),
           GridTile(
            child: Image.network(
              'https://www.akdenizinsaat.com.tr/en/img-page/thumb@s-880-dalyan-akdeniz-construction-cement-dalyan-ortaca.jpg',
              fit: BoxFit.fill,
            ),
            footer: Card(color: Colors.black54,child: Center(child: Text('Çimento', style: TextStyle(color: Colors.white, fontSize: 24),)),),
          ),
           GridTile(
            child: Image.network(
              'https://productimages.hepsiburada.net/s/24/500/10068291452978.jpg',
              fit: BoxFit.fill,
            ),
            footer: Card(color: Colors.black54,child: Center(child: Text('Metre', style: TextStyle(color: Colors.white, fontSize: 24),)),),
          ),
            GridTile(
            child: Image.network(
              'https://productimages.hepsiburada.net/s/32/1500/10378671947826.jpg',
              fit: BoxFit.fill,
            ),
            footer: Card(color: Colors.black54,child: Center(child: Text('Kaynak M.', style: TextStyle(color: Colors.white, fontSize: 24),)),),
          ),

          // Image.network(
          //   '',
          //   fit: BoxFit.fill,
          // ),
          // Positioned(
          //   width: 100,
          //   top: 160,
          //   child: Card(
          //     child: Center(
          //         child: Text(
          //       'Spiral',
          //       style: TextStyle(color: Colors.white, fontSize: 24),
          //     )),
          //     color: Colors.black54,
          //   ),
          // ),
          // Stack(
          //   children: [
          //     Container(
          //       child: Image.network(
          //         '',
          //         fit: BoxFit.fill,
          //       ),
          //     ),
          //     Positioned(
          //       width: 100,
          //       top: 100,
          //       child: Card(
          //         child: Center(
          //             child: Text(
          //           'Boru',
          //           style: TextStyle(color: Colors.white, fontSize: 24),
          //         )),
          //         color: Colors.black54,
          //       ),
          //     ),
          //   ],
          // ),
          // Stack(
          //   children: [
          //     Container(
          //       child: Image.network(
          //         '',
          //         fit: BoxFit.fill,
          //       ),
          //     ),
          //     Positioned(
          //       width: 100,
          //       top: 100,
          //       child: Card(
          //         child: Center(
          //             child: Text(
          //           'Çimento',
          //           style: TextStyle(color: Colors.white, fontSize: 24),
          //         )),
          //         color: Colors.black54,
          //       ),
          //     ),
          //   ],
          // ),
          // Stack(
          //   children: [
          //     Container(
          //       child: Image.network(
          //         '
          //       ),
          //     ),
          //     Positioned(
          //       width: 100,
          //       top: 100,
          //       child: Card(
          //         child: Center(
          //             child: Text(
          //           'Metre',
          //           style: TextStyle(color: Colors.white, fontSize: 24),
          //         )),
          //         color: Colors.black54,
          //       ),
          //     ),
          //   ],
          // ),
          // Stack(
          //   children: [
          //     Container(
          //       child: Image.network(
          //         'https://productimages.hepsiburada.net/s/32/1500/10378671947826.jpg',
          //         fit: BoxFit.fill,
          //       ),
          //     ),
          //     Positioned(
          //       width: 100,
          //       top: 100,
          //       child: Card(
          //         child: Center(
          //             child: Text(
          //           'Kaynak M.',
          //           style: TextStyle(color: Colors.white, fontSize: 24),
          //         )),
          //         color: Colors.black54,
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
