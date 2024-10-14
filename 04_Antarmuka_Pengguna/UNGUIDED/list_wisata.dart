import 'package:flutter/material.dart';

class ListWisata extends StatelessWidget {
  const ListWisata({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> listObjekWisata = [
      Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 8,
                offset: Offset(0, 2),
              ),
            ],
          ),
          margin: const EdgeInsets.only(
            top: 16.0,
            bottom: 0,
            right: 16.0,
            left: 16.0,
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: 16.0,
              bottom: 24.0,
              right: 24.0,
              left: 24.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Baturraden',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 185, 38, 28)),
                ),
                const SizedBox(
                  height: 8,
                ),
                Image.network(
                  'https://awsimages.detik.net.id/community/media/visual/2023/09/05/lokawisata-baturraden-1.jpeg?w=800',
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Baturraden adalah sebuah objek wisata alam yang terletak di lereng Gunung Slamet, sekitar 15 kilometer dari pusat kota Purwokerto, Kabupaten Banyumas, Jawa Tengah. Terkenal dengan pemandangan alamnya yang indah dan udara yang sejuk, Baturraden menjadi destinasi favorit wisatawam lokal maupun mancanegara',
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: () {}, child: Text('Lihat Selengkapnya'))
              ],
            ),
          )),
      Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 8,
                offset: Offset(0, 2),
              ),
            ],
          ),
          margin: const EdgeInsets.only(
            top: 12.0,
            bottom: 0,
            right: 16.0,
            left: 16.0,
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: 16.0,
              bottom: 24.0,
              right: 24.0,
              left: 24.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Dreamland Water Park',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 185, 38, 28)),
                ),
                const SizedBox(
                  height: 8,
                ),
                Image.network(
                  'https://pariwisataku.com/wp-content/uploads/2019/08/dreamlandwaterparkajibarang-novi_nophi-1024x1024.jpg',
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Di sini, kita dapat menikmati berbagai rekreasi air bak berada di pantai. Tersedia juga kolam untuk anak-anak loh. Atraksi lain yang dapat dinikmati pengunjung, yakni wahana jetski dan susur danau menggunakan rumah perahu. Tidak hanya sampai di sini  saja, Dreamland juga menyediakan Taman Reptile dan Istana Aquarium sebagai wisata edukasi loh. Terus buat kalian yang pengen hilangin stres dan berelaksasi, objek wisata ini memiliki wahana Flying Fox dan terapi ikan. ',
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: () {}, child: Text('Lihat Selengkapnya'))
              ],
            ),
          )),
      Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 8,
                offset: Offset(0, 2),
              ),
            ],
          ),
          margin: const EdgeInsets.only(
            top: 12.0,
            bottom: 0,
            right: 16.0,
            left: 16.0,
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: 16.0,
              bottom: 24.0,
              right: 24.0,
              left: 24.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Museum BRI',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 185, 38, 28)),
                ),
                const SizedBox(
                  height: 8,
                ),
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/2/20/Bank_BRI_Museum_Purwokerto.jpg',
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Museum ini diresmikan oleh Kamardy Arief, Direktur Utama Bank Rakyat Indonesia pada tanggal 19 Desember 1990. Didirikan di Purwokerto karena di kota inilah cikal bakal BRI didirikan oleh Patih R. Aria Wiriatmadja pada tanggal 16 Desember 1895. Di dalam museum yang terdiri dari dua lantai ini, pengunjung dapat menyaksikan maket kantor pusat BRI di Jakarta dan mendapat gambaran perkembangan Bank Rakyat Indonesia dari yang semula satu kantor bank kecil menjadi salah satu bank besar di Indonesia dengan kantor cabang sampai ke tingkat kecamatan-kecamatan di seluruh Indonesia. ',
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: () {}, child: Text('Lihat Selengkapnya'))
              ],
            ),
          )),
      Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 8,
                offset: Offset(0, 2),
              ),
            ],
          ),
          margin: const EdgeInsets.only(
            top: 12.0,
            bottom: 0,
            right: 16.0,
            left: 16.0,
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: 16.0,
              bottom: 24.0,
              right: 24.0,
              left: 24.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Menara Teratai',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 185, 38, 28)),
                ),
                const SizedBox(
                  height: 8,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4XWKgKG3YSTHmTttXwYrR0Z-_D-jiTbIUhA&s',
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Menara Teratai merupakan daya tarik wisata bari di daerah Banyumas yang dibuka pada tanggal 27 April 2022. Tinggi menara teratai yaitu 114m, terletak di pusat kota Purwokerto. Pengunjung pun dapat menikmati keindahan kota Purwokerto di malam hari.',
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: () {}, child: Text('Lihat Selengkapnya'))
              ],
            ),
          )),
      Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 8,
                offset: Offset(0, 2),
              ),
            ],
          ),
          margin: const EdgeInsets.only(
            top: 12.0,
            bottom: 24.0,
            right: 16.0,
            left: 16.0,
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: 16.0,
              bottom: 24.0,
              right: 24.0,
              left: 24.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Taman Mas Kemambang',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 185, 38, 28),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Image.network(
                  'https://static.republika.co.id/uploads/images/inpicture_slide/pengunjung-mulai-memadati-taman-mas-kemambang-selasa_220503211652-501.jpg',
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Taman Apung Mas Kemambang merupakan objek wisata yang cocok dikunjungi untuk bersantai dan berfoto. Mengapa? Karena tempat ini rindang dan menyajikan cukup banyak tempat untuk duduk. Apa yang unik? Taman ini memiliki arti dari namanya “Bale” yakni bagian depan rumah, lalu “Kemambang” yang artinya terapung di atas air. Tempat ini juga dihiasi kolam ikan dan dilengkapi fasilitas taman bermain anak-anak serta fasilitas pendukung lainnya. Di sini kita juga bisa berfoto dengan view background Gunung Slamet loh, cukup eye catching bukan?',
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: () {}, child: Text('Lihat Selengkapnya'))
              ],
            ),
          )),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Daftar Objek Wisata di Banyumas',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        ),
        backgroundColor: Color.fromARGB(255, 185, 38, 28),
      ),
      body: ListView(
        children: listObjekWisata,
      ),
    );
  }
}
