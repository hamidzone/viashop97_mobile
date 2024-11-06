Nama: Muhammad Hamid 
NPM: 2306152355

1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
*Stateless widget adalah widget yang tidak memiliki status (state) atau data yang bisa berubah selama aplikasi berjalan. Dengan kata lain, widget ini bersifat tidak berubah setelah dibuat.

*Stateful widget, di sisi lain, adalah widget yang memiliki status (state) yang bisa berubah selama aplikasi berjalan. Artinya, widget ini bisa memperbarui dirinya sendiri berdasarkan perubahan status yang terjadi.

2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
a.MaterialApp
Sebagai widget utama yang mengelilingi seluruh aplikasi. Widget ini Mengatur tema dan pengaturan dasar aplikasi.

b.StatelessWidget (MyApp)
Digunakan untuk UI yang tetap sama setelah dibuat, contohnya MyApp. MyApp berperan sebagai titik masuk aplikasi dan mengatur tampilan dasar menggunakan MaterialApp.

c. StatefulWidget (Homepage)
Untuk UI yang dapat berubah, seperti saat tombol diinteraksi.
Homepage adalah halaman utama yang responsif terhadap interaksi pengguna, misalnya menampilkan pesan snackbar saat tombol ditekan.

d.Scaffold
Sebagai kerangka dasar halaman.Widget ini menyediakan struktur umum, seperti AppBar, body, dan SnackBar, untuk halaman Homepage.

e.AppBar
Menampilkan bilah aplikasi di bagian atas layar.Memuat judul Viashop97 dan warna latar belakang khusus.

f.Center
Mengatur konten di tengah layar.Digunakan untuk memastikan elemen di Homepage berada di tengah.

g. Column
Mengatur widget secara vertikal dalam satu kolom.Digunakan untuk menyusun tombol secara vertikal di tengah layar.

h. ElevatedButton.icon
Tombol dengan ikon dan label teks.Terdapat tiga tombol di Homepage dengan fungsi berbeda: "Lihat Daftar Produk", "Tambah Produk", dan "Logout". Setiap tombol memiliki gaya dan warna khusus serta menampilkan snackbar saat ditekan.

i.Icon
Menampilkan ikon di dalam tombol.Ikon berbeda untuk setiap tombol: list, add, dan logout.

j.Text
Menampilkan teks di layar, seperti label pada tombol dan judul AppBar.

k.SizedBox
Menambahkan spasi di antara tombol.Memberikan jarak antar tombol agar tampilan lebih rapi.

l.SnackBar
Menampilkan pesan singkat di bagian bawah layar. Digunakan untuk memberi tahu pengguna setelah tombol ditekan, dengan durasi tampil selama 3 detik.

3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi setState() dalam Flutter digunakan untuk memperbarui tampilan (UI) pada widget yang berjenis StatefulWidget. Fungsi ini memberi tahu Flutter bahwa ada perubahan data (state) di dalam widget tersebut, sehingga Flutter perlu menggambar ulang (re-render) tampilan dengan nilai terbaru.

4. Jelaskan perbedaan antara const dengan final.
*Const adalah keyword yang digunakan untuk mendefinisikan variabel yang nilainya tidak dapat  berubah. Nilai ini harus ditentukan saat deklarasi variabel. Contoh : const String nama = 'John';

*Final
->Tidak Bisa Diubah Setelah Ditetapkan: Nilai variabel final hanya bisa diatur satu kali. Setelah nilainya diatur, variabel ini tidak dapat diubah.

->Waktu Penetapan Nilai Saat Runtime: Nilai variabel final dapat ditetapkan pada saat runtime, artinya Anda bisa menetapkannya dalam fungsi atau kelas, setelah aplikasi berjalan.

->Digunakan untuk Objek Mutable: Meskipun variabel final tidak bisa diubah, konten objek yang ditetapkan ke variabel final bisa diubah jika objeknya mutable.

5. 
Berikut adalah penjelasan kode Flutter ini secara baris demi baris:
```dart
import 'package:flutter/material.dart'; // Mengimpor paket material untuk menggunakan widget Material Design
```
Mengimpor pustaka `flutter/material.dart`, yang menyediakan widget dan tema Material Design untuk membangun antarmuka pengguna (UI).

```dart
void main() {
  runApp(const MyApp()); // Menjalankan aplikasi dengan widget MyApp
}
```
* `void main()`: Fungsi utama untuk menjalankan aplikasi.
* `runApp(const MyApp())`: Memanggil widget `MyApp` sebagai root dari aplikasi Flutter.

```dart
class MyApp extends StatelessWidget { // Mendefinisikan kelas MyApp sebagai StatelessWidget
  const MyApp({super.key}); // Konstruktor untuk MyApp, menggunakan key
```
* `class MyApp extends StatelessWidget`: Membuat kelas `MyApp` sebagai turunan dari `StatelessWidget`, yang berarti widget ini tidak memiliki state yang berubah.
* `const MyApp({super.key})`: Konstruktor konstanta `MyApp` yang menerima key sebagai parameter opsional.

```dart
  @override
  Widget build(BuildContext context) { // Metode untuk membangun UI MyApp
    return MaterialApp( // Menggunakan MaterialApp sebagai root widget
```
* `@override`: Menandakan bahwa metode `build` ini menimpa metode `build` dari kelas `StatelessWidget`.
* `MaterialApp`: Widget root aplikasi, yang menyediakan struktur dasar aplikasi berbasis Material.

```dart
      debugShowCheckedModeBanner: false, // Menyembunyikan banner debug
      title: "Viashop97", // Menetapkan judul aplikasi
```
* `debugShowCheckedModeBanner: false`: Menyembunyikan banner debug yang muncul di sudut kanan atas saat aplikasi dijalankan dalam mode debug.
* `title: "Viashop97"`: Menentukan judul aplikasi, yang muncul dalam daftar aplikasi terbuka.

```dart
      theme: ThemeData( // Menetapkan tema aplikasi
        colorScheme: ColorScheme.fromSeed( // Membuat skema warna berdasarkan seed color
          seedColor: const Color.fromARGB(255, 0, 0, 0), // Warna seed adalah hitam
        ),
        useMaterial3: true, // Menggunakan Material 3
```
* `theme: ThemeData`: Menetapkan tema dasar untuk aplikasi.
* `colorScheme`: Mengatur skema warna aplikasi berdasarkan warna seed.
* `useMaterial3: true`: Mengaktifkan dukungan untuk desain Material 3.

```dart
        appBarTheme: AppBarTheme( // Menetapkan tema untuk AppBar
          titleTextStyle: const TextStyle( // Menetapkan gaya teks untuk judul AppBar
            color: Colors.white, // Warna teks putih
            fontSize: 24, // Ukuran font 24
            fontWeight: FontWeight.bold, // Menebalkan teks
            fontFamily: 'Poppins', // Menggunakan font Poppins
          ),
          centerTitle: true, // Memusatkan judul di AppBar
        ),
```
* `appBarTheme`: Menetapkan tema khusus untuk `AppBar`.
* `titleTextStyle`: Gaya teks untuk judul `AppBar`.
* `centerTitle: true`: Memusatkan teks judul pada `AppBar`.

```dart
      ),
      home: const Homepage(title: "Viashop97"), // Menetapkan homepage sebagai widget Homepage
    );
  }
}
```
* `home`: Menetapkan halaman pertama (home) aplikasi, yang menggunakan widget `Homepage` dengan judul "Viashop97".

```dart
class Homepage extends StatefulWidget { // Mendefinisikan kelas Homepage sebagai StatefulWidget
  const Homepage({super.key, required this.title}); // Konstruktor dengan judul yang diperlukan

  final String title; // Variabel untuk menyimpan judul

  @override
  State<Homepage> createState() => _HomepageState(); // Membuat state untuk Homepage
}
```
* `class Homepage extends StatefulWidget`: Mendefinisikan `Homepage` sebagai `StatefulWidget`, yang mendukung perubahan state.
* `const Homepage({super.key, required this.title})`: Konstruktor `Homepage` yang menerima `title` sebagai parameter wajib.
* `final String title`: Variabel `title` untuk menyimpan judul halaman.
* `createState()`: Membuat state (`_HomepageState`) untuk mengelola perubahan UI `Homepage`.

```dart
class _HomepageState extends State<Homepage> { // Mendefinisikan kelas state untuk Homepage
  // Fungsi untuk menampilkan snackbar
  void _showSnackBar(String message) { // Metode untuk menunjukkan snackbar dengan pesan
```
* `class _HomepageState extends State<Homepage>`: Membuat kelas `_HomepageState` sebagai state dari `Homepage`.
* `void _showSnackBar(String message)`: Fungsi untuk menampilkan `Snackbar` dengan pesan yang diberikan.

```dart
    final snackBar = SnackBar( // Membuat snackbar dengan konten
      content: Text(message), // Menetapkan konten snackbar
      duration: const Duration(seconds: 3), // Durasi snackbar selama 3 detik
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar); // Menampilkan snackbar menggunakan ScaffoldMessenger
  }
```
* `snackBar`: Membuat snackbar dengan `Text` sebagai kontennya dan durasi 3 detik.
* `ScaffoldMessenger.of(context).showSnackBar(snackBar)`: Menampilkan snackbar pada layar.

```dart
  @override
  Widget build(BuildContext context) { // Metode untuk membangun UI Homepage
    return Scaffold( // Menggunakan Scaffold sebagai kerangka untuk halaman
      appBar: AppBar( // Membuat AppBar
        backgroundColor: const Color.fromARGB(255, 164, 9, 9), // Warna latar belakang AppBar
        title: Text(widget.title), // Menetapkan judul AppBar dari widget.title
      ),
```
* `Scaffold`: Struktur dasar halaman, menyediakan `AppBar`, `body`, dan komponen lain.
* `AppBar`: Membuat AppBar di halaman dengan warna latar belakang merah tua.
* `title: Text(widget.title)`: Mengatur judul `AppBar` sesuai dengan `title` yang diterima.

```dart
      body: Center( // Memusatkan konten di dalam tubuh halaman
        child: Column( // Menggunakan Column untuk menyusun tombol secara vertikal
          mainAxisAlignment: MainAxisAlignment.center, // Menyusun anak-anak di tengah kolom
          children: <Widget>[ // Daftar widget anak
```
* `Center`: Memusatkan konten dalam `Scaffold`.
* `Column`: Menyusun widget secara vertikal.
* `mainAxisAlignment: MainAxisAlignment.center`: Memusatkan widget anak dalam kolom.

```dart
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
```
* `ElevatedButton.icon`: Membuat tombol dengan ikon dan label.
* `onPressed`: Aksi ketika tombol ditekan, yaitu menampilkan snackbar.
* `icon`: Ikon pada tombol (daftar).
* `label`: Teks pada tombol ("Lihat Daftar Produk").
* `style`: Mengatur warna latar belakang dan ukuran tombol.

```dart
            const SizedBox(height: 16.0), // Spasi antara tombol
```
Menyisipkan spasi vertikal 16 piksel antara tombol.

```dart
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
```
Tombol ini serupa dengan tombol pertama, namun untuk "Tambah Produk" dengan ikon dan warna berbeda.

```dart
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
```
Mirip dengan dua tombol sebelumnya, tombol ini digunakan untuk "Logout" dengan ikon logout dan warna latar merah.

Dengan ini, seluruh kode telah dijelaskan secara menyeluruh!