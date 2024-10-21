import 'package:flutter/material.dart';

class ListWisataBms extends StatelessWidget {
  const ListWisataBms({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> listObjekWisata = [
      _buildWisataCard(
        'Baturraden',
        'https://awsimages.detik.net.id/community/media/visual/2023/09/05/lokawisata-baturraden-1.jpeg?w=800',
        'Baturraden adalah sebuah objek wisata alam yang terletak di lereng Gunung Slamet, sekitar 15 kilometer dari pusat kota Purwokerto, Kabupaten Banyumas, Jawa Tengah. Terkenal dengan pemandangan alamnya yang indah dan udara yang sejuk, Baturraden menjadi destinasi favorit wisatawan lokal maupun mancanegara.',
      ),
      _buildWisataCard(
        'Dreamland Water Park',
        'https://pariwisataku.com/wp-content/uploads/2019/08/dreamlandwaterparkajibarang-novi_nophi-1024x1024.jpg',
        'Di sini, kita dapat menikmati berbagai rekreasi air bak berada di pantai. Tersedia juga kolam untuk anak-anak loh. Atraksi lain yang dapat dinikmati pengunjung, yakni wahana jetski dan susur danau menggunakan rumah perahu.',
      ),
      _buildWisataCard(
        'Museum BRI',
        'https://upload.wikimedia.org/wikipedia/commons/2/20/Bank_BRI_Museum_Purwokerto.jpg',
        'Museum ini diresmikan oleh Kamardy Arief, Direktur Utama Bank Rakyat Indonesia pada tanggal 19 Desember 1990. Didirikan di Purwokerto karena di kota inilah cikal bakal BRI didirikan oleh Patih R. Aria Wiriatmadja.',
      ),
      _buildWisataCard(
        'Menara Teratai',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4XWKgKG3YSTHmTttXwYrR0Z-_D-jiTbIUhA&s',
        'Menara Teratai merupakan daya tarik wisata baru di daerah Banyumas yang dibuka pada tanggal 27 April 2022. Tinggi menara teratai yaitu 114m, terletak di pusat kota Purwokerto.',
      ),
      _buildWisataCard(
        'Taman Mas Kemambang',
        'https://static.republika.co.id/uploads/images/inpicture_slide/pengunjung-mulai-memadati-taman-mas-kemambang-selasa_220503211652-501.jpg',
        'Taman Apung Mas Kemambang merupakan objek wisata yang cocok dikunjungi untuk bersantai dan berfoto. Tempat ini rindang dan menyajikan cukup banyak tempat untuk duduk serta dihiasi kolam ikan.',
      ),
    ];
    return Scaffold(
      // appBar: AppBar(
      //   title: const Center(
      //     child: Text('Daftar Objek Wisata di Banyumas',
      //         style:
      //             TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
      //   ),
      //   backgroundColor: Color.fromARGB(255, 185, 38, 28),
      // ),
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            expandedHeight: 120,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Objek Wisata Banyumas',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            backgroundColor: Color.fromARGB(255, 183, 38, 28),
          ),
          SliverList(delegate: SliverChildListDelegate(listObjekWisata))
        ],
      ),
    );
  }

  Widget _buildWisataCard(String judul, String gambar, String deskripsi) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 8,
              offset: const Offset(0, 3),
            )
          ]),
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              judul,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 185, 38, 28),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                gambar,
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                deskripsi,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
