import 'package:flutter/material.dart'; // Mengimpor paket material untuk menggunakan widget Material Design

void main() {
  runApp(const MyApp()); // Menjalankan aplikasi dengan widget MyApp
}

class MyApp extends StatelessWidget { // Mendefinisikan kelas MyApp sebagai StatelessWidget
  const MyApp({super.key}); // Konstruktor untuk MyApp, menggunakan key

  @override
  Widget build(BuildContext context) { // Metode untuk membangun UI MyApp
    return MaterialApp( // Menggunakan MaterialApp sebagai root widget
      debugShowCheckedModeBanner: false, // Menyembunyikan banner debug
      title: "Viashop97", // Menetapkan judul aplikasi
      theme: ThemeData( // Menetapkan tema aplikasi
        colorScheme: ColorScheme.fromSeed( // Membuat skema warna berdasarkan seed color
          seedColor: const Color.fromARGB(255, 0, 0, 0), // Warna seed adalah hitam
        ),
        useMaterial3: true, // Menggunakan Material 3
        appBarTheme: AppBarTheme( // Menetapkan tema untuk AppBar
          titleTextStyle: const TextStyle( // Menetapkan gaya teks untuk judul AppBar
            color: Colors.white, // Warna teks putih
            fontSize: 24, // Ukuran font 24
            fontWeight: FontWeight.bold, // Menebalkan teks
            fontFamily: 'Poppins', // Menggunakan font Poppins
          ),
          centerTitle: true, // Memusatkan judul di AppBar
        ),
      ),
      home: const Homepage(title: "Viashop97"), // Menetapkan homepage sebagai widget Homepage
    );
  }
}

class Homepage extends StatefulWidget { // Mendefinisikan kelas Homepage sebagai StatefulWidget
  const Homepage({super.key, required this.title}); // Konstruktor dengan judul yang diperlukan

  final String title; // Variabel untuk menyimpan judul

  @override
  State<Homepage> createState() => _HomepageState(); // Membuat state untuk Homepage
}

class _HomepageState extends State<Homepage> { // Mendefinisikan kelas state untuk Homepage
  // Fungsi untuk menampilkan snackbar
  void _showSnackBar(String message) { // Metode untuk menunjukkan snackbar dengan pesan
    final snackBar = SnackBar( // Membuat snackbar dengan konten
      content: Text(message), // Menetapkan konten snackbar
      duration: const Duration(seconds: 3), // Durasi snackbar selama 3 detik
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar); // Menampilkan snackbar menggunakan ScaffoldMessenger
  }

  @override
  Widget build(BuildContext context) { // Metode untuk membangun UI Homepage
    return Scaffold( // Menggunakan Scaffold sebagai kerangka untuk halaman
      appBar: AppBar( // Membuat AppBar
        backgroundColor: const Color.fromARGB(255, 164, 9, 9), // Warna latar belakang AppBar
        title: Text(widget.title), // Menetapkan judul AppBar dari widget.title
      ),
      body: Center( // Memusatkan konten di dalam tubuh halaman
        child: Column( // Menggunakan Column untuk menyusun tombol secara vertikal
          mainAxisAlignment: MainAxisAlignment.center, // Menyusun anak-anak di tengah kolom
          children: <Widget>[ // Daftar widget anak
            ElevatedButton.icon( // Membuat tombol dengan ikon
              onPressed: () { // Ketika tombol ditekan
                // Snackbar untuk tombol "Lihat Daftar Produk"
                _showSnackBar('Anda telah berhasil menekan tombol Lihat Daftar Produk'); // Menampilkan snackbar
              },
              icon: const Icon(Icons.list), // Menetapkan ikon untuk tombol
              label: const Text('Lihat Daftar Produk'), // Menetapkan label untuk tombol
              style: ElevatedButton.styleFrom( // Mengatur gaya untuk tombol
                backgroundColor: const Color.fromARGB(255, 0, 195, 255), // Warna latar belakang tombol
                minimumSize: const Size(200, 50), // Ukuran minimum tombol
              ),
            ),
            const SizedBox(height: 16.0), // Spasi antara tombol
            ElevatedButton.icon( // Tombol kedua
              onPressed: () { // Ketika tombol ditekan
                // Snackbar untuk tombol "Tambah Produk"
                _showSnackBar('Anda telah berhasil menekan tombol Tambah Produk'); // Menampilkan snackbar
              },
              icon: const Icon(Icons.add), // Menetapkan ikon untuk tombol
              label: const Text('Tambah Produk'), // Menetapkan label untuk tombol
              style: ElevatedButton.styleFrom( // Mengatur gaya untuk tombol
                backgroundColor: const Color.fromARGB(255, 255, 187, 0), // Warna latar belakang tombol
                minimumSize: const Size(200, 50), // Ukuran minimum tombol
              ),
            ),
            const SizedBox(height: 16.0), // Spasi antara tombol
            ElevatedButton.icon( // Tombol ketiga
              onPressed: () { // Ketika tombol ditekan
                // Snackbar untuk tombol "Logout"
                _showSnackBar('Anda telah berhasil menekan tombol Logout'); // Menampilkan snackbar
              },
              icon: const Icon(Icons.logout), // Menetapkan ikon untuk tombol
              label: const Text('Logout'), // Menetapkan label untuk tombol
              style: ElevatedButton.styleFrom( // Mengatur gaya untuk tombol
                backgroundColor: const Color.fromARGB(255, 255, 0, 0), // Warna latar belakang tombol
                minimumSize: const Size(200, 50), // Ukuran minimum tombol
              ),
            ),
          ],
        ),
      ),
    );
  }
}