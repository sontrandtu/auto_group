import 'package:flutter/material.dart';

import 'car_information_card.dart';

class CarInformation extends StatelessWidget {
  const CarInformation({
    Key? key,
    this.demoDataCarInformation,
  }) : super(key: key);

  final Map<String, String>? demoDataCarInformation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              CarInformationCard(
                title: "Hãng xe: ${demoDataCarInformation!["hangXe"]}",
                icon: Icons.local_taxi_outlined,
              ),
              CarInformationCard(
                title: "Dòng xe: ${demoDataCarInformation!["dongXe"]}",
                icon: Icons.local_offer_outlined,
              ),
              CarInformationCard(
                title: "Phiên bản: ${demoDataCarInformation!["phienBan"]}",
                icon: Icons.collections_bookmark_outlined,
              ),
              CarInformationCard(
                title: "Năm sản xuất: ${demoDataCarInformation!["namSanXuat"]}",
                icon: Icons.access_time,
              ),
              CarInformationCard(
                title: "Tình trạng: ${demoDataCarInformation!["tinhTrang"]}",
                icon: Icons.library_books_outlined,
              ),
              CarInformationCard(
                title: "Hộp số: ${demoDataCarInformation!["hopSo"]}",
                icon: Icons.all_inbox_outlined,
              ),
            ],
          ),
          Column(
            children: [
              CarInformationCard(
                title: "Tỉnh/thành phố: ${demoDataCarInformation!["viTri"]}",
                icon: Icons.location_on_outlined,
              ),
              CarInformationCard(
                title: "Kiểu dáng: ${demoDataCarInformation!["kieuDang"]}",
                icon: Icons.category_outlined,
              ),
              CarInformationCard(
                title: "Nhiên liệu: ${demoDataCarInformation!["nhienLieu"]}",
                icon: Icons.local_gas_station_outlined,
              ),
              CarInformationCard(
                title: "Số ghế: ${demoDataCarInformation!["soGhe"]}",
                icon: Icons.chair_alt_rounded,
              ),
              CarInformationCard(
                title: "Màu: ${demoDataCarInformation!["mau"]}",
                icon: Icons.color_lens_outlined,
              ),
              CarInformationCard(
                title: "Xuất xứ: ${demoDataCarInformation!["xuatXu"]}",
                icon: Icons.directions_car_outlined,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
