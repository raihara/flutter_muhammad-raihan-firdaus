import 'package:flutter/material.dart';

class ChatData{
  String? nama;
  String? obrolan;
  String? time;
  String? gambar;
  int? jumlahChat;
  bool? read;

  ChatData({
    required this.nama,
    required this.obrolan,
    required this.time,
    required this.gambar,
    required this.read,
    this.jumlahChat,
  });
}

List<ChatData> dataChat = [
  ChatData(
    nama: "Lestari",
    obrolan: "Udh berangkat ke kantor belum?",
    time: "08.00",
    gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJehWjwNvprmVPzJgeI4ZORTfx4gT-xSMr-w&usqp=CAU",
    read: false,
    jumlahChat: 20,
  ),
  ChatData(
    nama: "Ryan",
    obrolan: "Dimana lu? bocah udah gak sabar pen futsal",
    time: "18.00",
    gambar: "https://i.pinimg.com/originals/46/80/c5/4680c57df5b2a0a4db4f40d16d45ba5d.jpg",
    read: false,
    jumlahChat: 2,
  ),
  ChatData(
    nama: "Hamid",
    obrolan: "Nongs skuy",
    time: "17.00",
    gambar: "https://i.pinimg.com/originals/46/80/c5/4680c57df5b2a0a4db4f40d16d45ba5d.jpg",
    read: false,
    jumlahChat: 1,
  ),
  ChatData(
    nama: "Lutfi",
    obrolan: "Jadi daftar MKBM SI ga lu?",
    time: "8 Februari 2022",
    gambar: "https://i.pinimg.com/originals/46/80/c5/4680c57df5b2a0a4db4f40d16d45ba5d.jpg",
    read: true,
  ),
  ChatData(
    nama: "Daniel",
    obrolan: "Jadi daftar MKBM IISMA ga lu?",
    time: "7 Februari 2022",
    gambar: "https://i.pinimg.com/originals/46/80/c5/4680c57df5b2a0a4db4f40d16d45ba5d.jpg",
    read: true,
  ),
  ChatData(
    nama: "Ajax",
    obrolan: "Terimakasih, paket sudah sampai",
    time: "3 Februari 2022",
    gambar: "https://i.pinimg.com/originals/46/80/c5/4680c57df5b2a0a4db4f40d16d45ba5d.jpg",
    read: false,
    jumlahChat: 5,
  ),
  ChatData(
    nama: "Misima",
    obrolan: "Terimakasih, paket sudah sampai",
    time: "3 Februari 2022",
    gambar: "https://i.pinimg.com/originals/46/80/c5/4680c57df5b2a0a4db4f40d16d45ba5d.jpg",
    read: false,
    jumlahChat: 2,
  ),
  ChatData(
    nama: "Sayu",
    obrolan: "Nanti mampir lagi ya",
    time: "2 Februari 2022",
    gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ98g5uYSslXeI88gBZ4_Ok3SP8Y8D0r-vHQ&usqp=CAU",
    read: true,
  ),
  ChatData(
    nama: "Mayu",
    obrolan: "Nanti mampir lagi ya",
    time: "2 Februari 2022",
    gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa0eKpjuzLxjR_N9i-aT9Wb8ZQ_YKYU5DwJA&usqp=CAU",
    read: true,
  ),
];