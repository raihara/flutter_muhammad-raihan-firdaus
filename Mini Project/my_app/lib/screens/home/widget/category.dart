import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({Key? key}) : super(key: key);
  final list = [
    {
      'icon': Icons.article_rounded,
      'color': Color(0xFF605CF4),
      'title': 'Artikel'
    },
    {
      'icon': Icons.event_available_rounded,
      'color': Color(0xFF605CF4),
      'title': 'Event'
    },
    {
      'icon': Icons.school_outlined,
      'color': Color(0xFF605CF4),
      'title': 'Tsanawiyah'
    },
    {
      'icon': Icons.school_outlined,
      'color': Color(0xFF605CF4),
      'title': 'Mualimien'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF6F8FF),
        borderRadius: (BorderRadius.circular(10)),
      ),
      child: Column(
        children: [
          Container(
            height: 130,
            padding: EdgeInsets.all(20),
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) => Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: list[index]['color'] as Color,
                          ),
                          child: Icon(
                            list[index]['icon'] as IconData,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          list[index]['title'] as String,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 14),
                        )
                      ],
                    ),
                separatorBuilder: (_, index) => SizedBox(
                      width: 33,
                    ),
                itemCount: list.length),
          ),
          _buildTitle("Artikel dan Berita Sekolah"),          
        ],
      ),
    );
  }

  Widget _buildTitle(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      width: double.maxFinite,
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
