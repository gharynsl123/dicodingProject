import 'package:dicoding/detail.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List<String> judulText = [
  "Jerapah",
  "Gajah",
  "Kanguru",
  "Kuda",
  "Tapir",
  "Rusa",
  "Anjing",
  "Monyet",
  "Buaya",
  "Kura-kura",
  "Kucing",
  "Singa",
  "Harimau",
  "Macan",
];

List<String> desc = [
  "Jerapah atau zarafah adalah mamalia berkuku genap endemik Afrika dan merupakan spesies hewan tertinggi yang hidup di darat. ",
  "Gajah adalah mamalia besar dari famili Elephantidae dan ordo Proboscidea. Secara tradisional, terdapat dua spesies yang diakui, yaitu gajah afrika dan gajah asia.",
  "Kanguru adalah hewan mamalia yang memiliki kantung. Hewan ini termasuk hewan khas Australia. Kata kanguru diambil dari bahasa Aborigin gangguru.",
  "Kuda adalah salah satu dari sepuluh spesies modern mamalia dari genus Equus. Hewan ini telah lama merupakan salah satu hewan peliharaan yang penting secara ekonomis dan historis",
  "Tapir adalah binatang herbivora yang memakan dedaunan muda di sepanjang hutan atau pinggiran sungai. ",
  "Rusa, sambar, atau menjangan adalah hewan mamalia pemamah biak yang termasuk famili Cervidae.",
  "Anjing domestik atau anjing adalah hewan mamalia yang telah mengalami domestikasi dari serigala sejak 15.000 tahun yang lalu.",
  "Monyet adalah istilah untuk semua anggota primata yang bukan prosimia atau kera, baik yang tinggal di Dunia Lama maupun Dunia Baru. ",
  "Buaya adalah reptil bertubuh besar yang hidup di air. Secara ilmiah, buaya meliputi seluruh spesies anggota famili Crocodylidae, termasuk pula buaya sepit.",
  "Kura-kura adalah hewan bersisik berkaki empat yang termasuk golongan reptil. Bangsa hewan yang disebut Testudines ini khas dan mudah dikenali dengan adanya ‘rumah’ atau batok yang keras dan kaku.",
  "Kucing disebut juga kucing domestik atau kucing rumah adalah sejenis mamalia karnivora dari keluarga Felidae",
  "Singa adalah spesies hewan dari keluarga felidae atau jenis kucing. Singa berada di benua Afrika dan sebagian di wilayah India.",
  "Harimau adalah spesies kucing terbesar yang masih hidup dari genus Panthera. Harimau memiliki ciri loreng yang khas pada bulunya.",
  "Sama seperti Harimau, Harimau adalah spesies kucing terbesar yang masih hidup dari genus Panthera. Harimau memiliki ciri loreng yang khas pada bulunya, berupa garis-garis vertikal gelap pada bulu oranye, dengan bulu bagian bawah berwarna putih. Harimau adalah pemangsa puncak, mereka terutama memangsa ungulata seperti rusa dan babi celeng",
];

List<String> gambar = [
  "https://asset.kompas.com/crops/cnAUAt0hXQUQ0K3RdlkzkiPbjM0=/0x0:1000x667/750x500/data/photo/2017/09/16/2548005054.JPG",
  "https://gdb.voanews.com/5168E10B-1DE9-46B2-BD06-E5724ACD68ED_cx0_cy7_cw0_w1200_r1.jpg",
  "https://upload.wikimedia.org/wikipedia/commons/0/0d/Kangaroo_and_joey03.jpg",
  "http://news.unair.ac.id/wp-content/uploads/2021/09/Foto-dari-Grid-ID.jpg",
  "https://cdn.betahita.id/6/0/8/2/6082.jpg",
  "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2021/08/28/365971663.jpg",
  "https://asset.kompas.com/crops/Hq1j0QxX7yBDUMRF2zZzsMgvzkU=/0x0:639x426/750x500/data/photo/2021/04/27/60882219d700f.jpg",
  "https://cdn0-production-images-kly.akamaized.net/tI4P1Gim-5rjrEofIPtH77MVG4Q=/1200x900/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3611321/original/014876500_1635061240-monkey-4788331_1280.jpg",
  "https://cdn1-production-images-kly.akamaized.net/Jd7dM-d6f_3C9_xAKsjnnMfl1OE=/1200x675/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/1578139/original/048907600_1493270663-Buaya5.jpg",
  "https://cdn1-production-images-kly.akamaized.net/fJkhUsF1cjDLLCE5jiUMid63O7I=/1200x1200/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3342989/original/089889300_1610015284-stefan-lehner-0AP67CfTJB4-unsplash.jpg",
  "https://asset.kompas.com/crops/SV5q4gPkeD8YJTuzO31BqTr9DEI=/192x128:1728x1152/750x500/data/photo/2021/03/06/60436a28b258b.jpg",
  "https://asset-a.grid.id//crop/0x0:0x0/700x465/photo/bobofoto/original/2158_singa.jpg",
  "https://news.tamansafari.com/Newsportalv22ok/upload/26_Harimau_Sumatera_Full.jpg",
  "https://cdn1-production-images-kly.akamaized.net/DWNQXaa2GLMjE7xxNftXrormPpY=/1200x1200/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2112524/original/081500900_1524464166-swegzrfsdbgv.jpg",
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: judulText.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 7.0,
          mainAxisSpacing: 20.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    judul: judulText[index],
                    deskripsi: desc[index],
                    gambar: gambar[index],
                  ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.white,
                    height: 130,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        gambar[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    judulText[index],
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
