# 23 Flutter Animation

## Resume
Dalam materi ini mempelajari
1. Animation
2. Transition
3. Scale Transition
4. Implicit Animation


### Animation
Animation atau animasi itu untuk membuat aplikasi kita terlihat hidup tidak kaku, pergerakan dari satu widget ke widget lain yang bisa menambah daya tarik.

### Transition
Animasi yang terjadi saat perpindahan halaman, dari halaman A ke halaman B. Dilakukannya di bagian navigator.push().

### Scale Transition
Scale Transition adalah salah satu jenis animasi transition yang dimana halaman tersebut muncul dengan efek berubah ukuran dari tidak penuh menuju tampil  keseluruhan

### Implicit Animation
Maksudnya adalah versi animasi widget yang sudah ada. sudah disediakan oleh flutter


## Task Essay
1. Buatlah halaman dengan spesifikasi berikut!
    a. Menampilkan sebuah gambar kecil diposisi tengah,
    b. Jika gambar di klik, akan membesar.
    c. Jika di klik kembali, akan mengecil (ukuran semula),
    d. Proses perubahan gambar menggunakan animasi.

2. Tambahkan transisi saat perpindahan halaman Contact ke create contact!

file codingan:

Project Flutter Transition adalah project yang didalamnya terdapat 2 task, jadi saat menjalankan tinggal ganti di bagian file mainnya, di baris code home nya

Project With Task 1 (Gambar)


[main.dart](https://github.com/fraihan-dw/flutter_muhammad-raihan-firdaus/blob/main/23_Flutter%20Animation/Praktikum/flutter_transition/lib/main.dart)



Dan ini adalah tampilan default nya dari project animation picture dimana ukuran picture kecil:


![](https://github.com/fraihan-dw/flutter_muhammad-raihan-firdaus/blob/main/23_Flutter%20Animation/Screenshot/flutter_transition_animatedpicture_small.png?raw=true)


Output Task Animation Picture saat ditekan, gambar menjadi besar


![](https://github.com/fraihan-dw/flutter_muhammad-raihan-firdaus/blob/main/23_Flutter%20Animation/Screenshot/flutter_transition_animatedpicture_big.png?raw=true)


Project Transisi Halaman:
Karena di dalam project ini ada 2 task, dan ini default/bekas menjalankan animatedpicture maka saat menjalankan ini kita harus mengganti di file main.dart di bagian code home nya (Ganti 'animatedpicture()' menjadi 'contact()').


[main.dart](https://github.com/fraihan-dw/flutter_muhammad-raihan-firdaus/blob/main/23_Flutter%20Animation/Praktikum/flutter_transition/lib/main.dart)


Dan ini adalah tampilan default nya dari project transition contact, dimana menampilkan beberapa contact:


![](https://github.com/fraihan-dw/flutter_muhammad-raihan-firdaus/blob/main/23_Flutter%20Animation/Screenshot/flutter_transition_contact.png?raw=true)


Output Task Transition Contact, dimana saat kita menekan tombol floatingactionbutton maka akan muncul animasi transisi, disini saya pakai scaletransition.


![](https://github.com/fraihan-dw/flutter_muhammad-raihan-firdaus/blob/main/23_Flutter%20Animation/Screenshot/flutter_transition_newcontact.png?raw=true)