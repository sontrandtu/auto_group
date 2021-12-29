import 'package:auto_group/model/agency_model.dart';
import 'package:auto_group/model/car_news_model.dart';
import 'package:auto_group/model/category_model.dart';
import 'package:auto_group/model/discount_model.dart';
import 'package:auto_group/model/product_model.dart';

class DemoData {
  static List<Category> demoCategories = [
    Category(name: "BMW", pathLogo: "assets/images/logo-bmw.png", id: "1"),
    Category(
        id: "2",
        name: "Mercedes-Benz",
        pathLogo: "assets/images/1200px-Mercedes-Logo.png"),
    Category(
        name: "Bentley", pathLogo: "assets/images/logo_bentley.png", id: "3"),
    Category(name: "Lexus", pathLogo: "assets/images/logo_lexus.png", id: "4"),
    Category(name: "BMW", pathLogo: "assets/images/logo-bmw.png", id: "5"),
  ];
  static List<String> demoDataContentImageHome = [
    'assets/images/car_home_header_1x.png',
    'assets/images/car_home_header_1x.png',
    'assets/images/car_home_header_1x.png',
    'assets/images/car_home_header_1x.png',
  ];
  static List<Map<String, String>> demoDataGrid = [
    {"title": "Tư vấn chọn xe", "image": "assets/images/red_car2x.png"},
    {"title": "Bảo hiểm", "image": "assets/images/white_car2x.png"},
    {"title": "Đăng kí lái thử", "image": "assets/images/black_car2x.png"},
    {"title": "Vay lãi trả góp", "image": "assets/images/red_car2x.png"},
  ];

  static List<ProductDiscount> demoDiscounts = [
    ProductDiscount(
      discountPercent: 10,
      discountPrice: "6 tỷ 999 triệu",
      product: Product(
        id: "1",
        rating: 4.9,
        price: "7 tỷ 999 triệu",
        location: "Hà Nội",
        images: [
          "assets/images/red_car2x.png",
          "assets/images/red_car2x.png",
          "assets/images/red_car2x.png",
          "assets/images/red_car2x.png",
        ],
        listLinkVideo: [
          {
            "videoLength": "15:07",
            "pathImage": "assets/images/white_car2x.png",
            "carName": "Rolls Royce",
            "subTitle": "Ghost 2010",
            "linkVideo": "https://www.youtube.com/watch?v=KaDAFTYtn4s"
          },
          {
            "videoLength": "12:47",
            "pathImage": "assets/images/white_car2x.png",
            "carName": "Rolls Royce",
            "subTitle": "Ghost 2010",
            "linkVideo": "https://www.youtube.com/watch?v=aALx2NTGeLs&t=5s"
          },
          {
            "videoLength": "05:07",
            "pathImage": "assets/images/white_car2x.png",
            "carName": "Rolls Royce",
            "subTitle": "Ghost 2010",
            "linkVideo": "https://www.youtube.com/watch?v=xEHze-I7KfI"
          },
          {
            "videoLength": "05:07",
            "pathImage": "assets/images/white_car2x.png",
            "carName": "Rolls Royce",
            "subTitle": "Ghost 2010",
            "linkVideo": "https://www.youtube.com/watch?v=_ruyhTgEvh0"
          }
        ],
        km: 30000,
        favorite: true,
        descriptionProduct:
            "Porsche Siêu phẩm PORSCHE ANAMERA model 2020 full option",
        productName: "Porsche",
        productInformation: {
          "hangXe": "Mercedes",
          "dongXe": "Benz",
          "phienBan": "2014",
          "namSanXuat": "2021",
          "tinhTrang": "Mới",
          "hopSo": "Tự động",
          "viTri": "Hà Nội",
          "kieuDang": "Thể thao",
          "nhienLieu": "Xăng",
          "soGhe": "4",
          "mau": "Đen - Trắng",
          "xuatXu": "Việt Nam",
        },
        quantityReview: 200,
      ),
    ),
    ProductDiscount(
      discountPercent: 20,
      discountPrice: "6 tỷ 999 triệu",
      product: Product(
        id: "2",
        rating: 3.3,
        price: "7 tỷ 999 triệu",
        location: "Nghệ An",
        images: [
          "assets/images/red_car2x.png",
          "assets/images/red_car2x.png",
          "assets/images/red_car2x.png",
          "assets/images/red_car2x.png",
        ],
        listLinkVideo: [
          {
            "videoLength": "15:07",
            "pathImage": "assets/images/white_car2x.png",
            "carName": "Rolls Royce",
            "subTitle": "Ghost 2010",
            "linkVideo": "https://www.youtube.com/watch?v=KaDAFTYtn4s"
          },
          {
            "videoLength": "12:47",
            "pathImage": "assets/images/white_car2x.png",
            "carName": "Rolls Royce",
            "subTitle": "Ghost 2010",
            "linkVideo": "https://www.youtube.com/watch?v=aALx2NTGeLs&t=5s"
          },
          {
            "videoLength": "05:07",
            "pathImage": "assets/images/white_car2x.png",
            "carName": "Rolls Royce",
            "subTitle": "Ghost 2010",
            "linkVideo": "https://www.youtube.com/watch?v=xEHze-I7KfI"
          },
          {
            "videoLength": "05:07",
            "pathImage": "assets/images/white_car2x.png",
            "carName": "Rolls Royce",
            "subTitle": "Ghost 2010",
            "linkVideo": "https://www.youtube.com/watch?v=_ruyhTgEvh0"
          }
        ],
        km: 30230,
        favorite: true,
        descriptionProduct:
            "Porsche Siêu phẩm PORSCHE ANAMERA model 2020 full option",
        productName: "Porsche",
        productInformation: {
          "hangXe": "Mercedes",
          "dongXe": "Benz",
          "phienBan": "2014",
          "namSanXuat": "2021",
          "tinhTrang": "Mới",
          "hopSo": "Tự động",
          "viTri": "Hà Nội",
          "kieuDang": "Thể thao",
          "nhienLieu": "Xăng",
          "soGhe": "4",
          "mau": "Đen - Trắng",
          "xuatXu": "Việt Nam",
        },
        quantityReview: 200,
      ),
    ),
    ProductDiscount(
      discountPercent: 15,
      discountPrice: "6 tỷ 555 triệu",
      product: Product(
        id: "3",
        rating: 4.9,
        price: "7 tỷ 999 triệu",
        location: "Hà Nội",
        images: [
          "assets/images/red_car2x.png",
          "assets/images/red_car2x.png",
          "assets/images/red_car2x.png",
          "assets/images/red_car2x.png",
        ],
        listLinkVideo: [
          {
            "videoLength": "15:07",
            "pathImage": "assets/images/white_car2x.png",
            "carName": "Rolls Royce",
            "subTitle": "Ghost 2010",
            "linkVideo": "https://www.youtube.com/watch?v=KaDAFTYtn4s"
          },
          {
            "videoLength": "12:47",
            "pathImage": "assets/images/white_car2x.png",
            "carName": "Rolls Royce",
            "subTitle": "Ghost 2010",
            "linkVideo": "https://www.youtube.com/watch?v=aALx2NTGeLs&t=5s"
          },
          {
            "videoLength": "05:07",
            "pathImage": "assets/images/white_car2x.png",
            "carName": "Rolls Royce",
            "subTitle": "Ghost 2010",
            "linkVideo": "https://www.youtube.com/watch?v=xEHze-I7KfI"
          },
          {
            "videoLength": "05:07",
            "pathImage": "assets/images/white_car2x.png",
            "carName": "Rolls Royce",
            "subTitle": "Ghost 2010",
            "linkVideo": "https://www.youtube.com/watch?v=_ruyhTgEvh0"
          }
        ],
        km: 10344,
        favorite: true,
        descriptionProduct:
            "Porsche Siêu phẩm PORSCHE ANAMERA model 2020 full option",
        productName: "Porsche",
        productInformation: {
          "hangXe": "Mercedes",
          "dongXe": "Benz",
          "phienBan": "2014",
          "namSanXuat": "2021",
          "tinhTrang": "Mới",
          "hopSo": "Tự động",
          "viTri": "Hà Nội",
          "kieuDang": "Thể thao",
          "nhienLieu": "Xăng",
          "soGhe": "4",
          "mau": "Đen - Trắng",
          "xuatXu": "Việt Nam",
        },
        quantityReview: 200,
      ),
    ),
    ProductDiscount(
      discountPercent: 8,
      discountPrice: "6 tỷ 999 triệu",
      product: Product(
        id: "4",
        rating: 5,
        price: "7 tỷ 999 triệu",
        location: "Hà Nội",
        images: [
          "assets/images/red_car2x.png",
          "assets/images/red_car2x.png",
          "assets/images/red_car2x.png",
          "assets/images/red_car2x.png",
        ],
        listLinkVideo: [
          {
            "videoLength": "15:07",
            "pathImage": "assets/images/white_car2x.png",
            "carName": "Rolls Royce",
            "subTitle": "Ghost 2010",
            "linkVideo": "https://www.youtube.com/watch?v=KaDAFTYtn4s"
          },
          {
            "videoLength": "12:47",
            "pathImage": "assets/images/white_car2x.png",
            "carName": "Rolls Royce",
            "subTitle": "Ghost 2010",
            "linkVideo": "https://www.youtube.com/watch?v=aALx2NTGeLs&t=5s"
          },
          {
            "videoLength": "05:07",
            "pathImage": "assets/images/white_car2x.png",
            "carName": "Rolls Royce",
            "subTitle": "Ghost 2010",
            "linkVideo": "https://www.youtube.com/watch?v=xEHze-I7KfI"
          },
          {
            "videoLength": "05:07",
            "pathImage": "assets/images/white_car2x.png",
            "carName": "Rolls Royce",
            "subTitle": "Ghost 2010",
            "linkVideo": "https://www.youtube.com/watch?v=_ruyhTgEvh0"
          }
        ],
        km: 2344,
        favorite: true,
        descriptionProduct:
            "Porsche Siêu phẩm PORSCHE ANAMERA model 2020 full option",
        productName: "Porsche",
        productInformation: {
          "hangXe": "Mercedes",
          "dongXe": "Benz",
          "phienBan": "2014",
          "namSanXuat": "2021",
          "tinhTrang": "Mới",
          "hopSo": "Tự động",
          "viTri": "Hà Nội",
          "kieuDang": "Thể thao",
          "nhienLieu": "Xăng",
          "soGhe": "4",
          "mau": "Đen - Trắng",
          "xuatXu": "Việt Nam",
        },
        quantityReview: 120,
      ),
    ),
  ];

  static List<Product> carProducts = [
    Product(
      id: "1",
      productName: "Porsche",
      descriptionProduct: "Siêu phầm PORSCHE PANAMERA model 2020 full option",
      rating: 3,
      favorite: true,
      km: 30000,
      images: [
        "assets/images/white_car2x.png",
        "assets/images/white_car2x.png",
        "assets/images/white_car2x.png",
        "assets/images/white_car2x.png",
      ],
      location: "Hà Nội",
      price: "7 tỷ 999 triệu",
      quantityReview: 234,
      productInformation: {
        "hangXe": "Mercedes",
        "dongXe": "Benz",
        "phienBan": "2014",
        "namSanXuat": "2021",
        "tinhTrang": "Mới",
        "hopSo": "Tự động",
        "viTri": "Hà Nội",
        "kieuDang": "Thể thao",
        "nhienLieu": "Xăng",
        "soGhe": "4",
        "mau": "Đen - Trắng",
        "xuatXu": "Việt Nam",
      },
    ),
    Product(
      id: "2",
      productName: "Porsche",
      descriptionProduct: "Siêu phầm PORSCHE PANAMERA model 2020 full option",
      rating: 3,
      favorite: true,
      km: 30000,
      images: [
        "assets/images/white_car2x.png",
        "assets/images/white_car2x.png",
        "assets/images/white_car2x.png",
        "assets/images/white_car2x.png",
      ],
      location: "Hà Nội",
      price: "7 tỷ 999 triệu",
      quantityReview: 234,
      productInformation: {
        "hangXe": "Mercedes",
        "dongXe": "Benz",
        "phienBan": "2014",
        "namSanXuat": "2021",
        "tinhTrang": "Mới",
        "hopSo": "Tự động",
        "viTri": "Hà Nội",
        "kieuDang": "Thể thao",
        "nhienLieu": "Xăng",
        "soGhe": "4",
        "mau": "Đen - Trắng",
        "xuatXu": "Việt Nam",
      },
    ),
    Product(
      id: "3",
      productName: "Porsche",
      descriptionProduct: "Siêu phầm PORSCHE PANAMERA model 2020 full option",
      rating: 3,
      favorite: true,
      km: 30000,
      images: [
        "assets/images/white_car2x.png",
        "assets/images/white_car2x.png",
        "assets/images/white_car2x.png",
        "assets/images/white_car2x.png",
      ],
      location: "Hà Nội",
      price: "7 tỷ 999 triệu",
      quantityReview: 234,
      productInformation: {
        "hangXe": "Mercedes",
        "dongXe": "Benz",
        "phienBan": "2014",
        "namSanXuat": "2021",
        "tinhTrang": "Mới",
        "hopSo": "Tự động",
        "viTri": "Hà Nội",
        "kieuDang": "Thể thao",
        "nhienLieu": "Xăng",
        "soGhe": "4",
        "mau": "Đen - Trắng",
        "xuatXu": "Việt Nam",
      },
    ),
    Product(
      id: "4",
      productName: "Porsche",
      descriptionProduct: "Siêu phầm PORSCHE PANAMERA model 2020 full option",
      rating: 3,
      favorite: true,
      km: 30000,
      images: [
        "assets/images/white_car2x.png",
        "assets/images/white_car2x.png",
        "assets/images/white_car2x.png",
        "assets/images/white_car2x.png",
      ],
      location: "Hà Nội",
      price: "7 tỷ 999 triệu",
      quantityReview: 234,
      productInformation: {
        "hangXe": "Mercedes",
        "dongXe": "Benz",
        "phienBan": "2014",
        "namSanXuat": "2021",
        "tinhTrang": "Mới",
        "hopSo": "Tự động",
        "viTri": "Hà Nội",
        "kieuDang": "Thể thao",
        "nhienLieu": "Xăng",
        "soGhe": "4",
        "mau": "Đen - Trắng",
        "xuatXu": "Việt Nam",
      },
    ),
    Product(
      id: "5",
      productName: "Porsche",
      descriptionProduct: "Siêu phầm PORSCHE PANAMERA model 2020 full option",
      rating: 3,
      favorite: true,
      km: 30000,
      images: [
        "assets/images/white_car2x.png",
        "assets/images/white_car2x.png",
        "assets/images/white_car2x.png",
        "assets/images/white_car2x.png",
      ],
      location: "Hà Nội",
      price: "7 tỷ 999 triệu",
      quantityReview: 234,
      productInformation: {
        "hangXe": "Mercedes",
        "dongXe": "Benz",
        "phienBan": "2014",
        "namSanXuat": "2021",
        "tinhTrang": "Mới",
        "hopSo": "Tự động",
        "viTri": "Hà Nội",
        "kieuDang": "Thể thao",
        "nhienLieu": "Xăng",
        "soGhe": "4",
        "mau": "Đen - Trắng",
        "xuatXu": "Việt Nam",
      },
    ),
  ];

  static List<Map<String, String>> demoLatestCar = [
    {
      "pathImage": "assets/images/white_car2x.png",
      "carDescription": "Porsche Siêu phẩm PORSCHE .....",
      "price": "7 tỷ 999 triệu",
      "speed": "30.000 Km",
      "location": "Hà Nội",
    },
    {
      "pathImage": "assets/images/white_car2x.png",
      "carDescription": "Porsche Siêu phẩm PORSCHE .....",
      "price": "7 tỷ 999 triệu",
      "speed": "30.000 Km",
      "location": "Hà Nội",
    },
    {
      "pathImage": "assets/images/white_car2x.png",
      "carDescription": "Porsche Siêu phẩm PORSCHE .....",
      "price": "7 tỷ 999 triệu",
      "speed": "30.000 Km",
      "location": "Hà Nội",
    },
    {
      "pathImage": "assets/images/white_car2x.png",
      "carDescription": "Porsche Siêu phẩm PORSCHE .....",
      "price": "7 tỷ 999 triệu",
      "speed": "30.000 Km",
      "location": "Hà Nội",
    },
  ];

  static List<Map<String, String>> demoDistributor = [
    {"title": "Thu Hằng", "pathImage": "assets/images/red_car2x.png"},
    {"title": "Lan Anh", "pathImage": "assets/images/red_car2x.png"},
    {"title": "Hùng Việt", "pathImage": "assets/images/red_car2x.png"},
    {"title": "Hải Nam", "pathImage": "assets/images/red_car2x.png"},
    {
      "title": "Bán xe kèm trách nhiệm",
      "pathImage": "assets/images/red_car2x.png"
    },
  ];

  static List<CarNews> demoCarNews = [
    CarNews(
        id: "1",
        urlImage: "assets/images/car1_news.png",
        rating: 4.9,
        title: "Hướng dẫn kỹ thuật lùi xe song song chuẩn xác và an toàn nhất"),
    CarNews(
        id: "2",
        urlImage: "assets/images/car2_news.png",
        rating: 4.9,
        title: "Hướng dẫn kỹ thuật lùi xe song song chuẩn xác và an toàn nhất"),
    CarNews(
        id: "3",
        urlImage: "assets/images/car3_news.png",
        rating: 4.9,
        title: "Hướng dẫn kỹ thuật lùi xe song song chuẩn xác và an toàn nhất"),
    CarNews(
        id: "4",
        urlImage: "assets/images/car1_news.png",
        rating: 4.9,
        title: "Hướng dẫn kỹ thuật lùi xe song song chuẩn xác và an toàn nhất"),
  ];

  static List<Product> demoListProduct = [
    Product(
      id: "1",
      productName: "Porsche",
      descriptionProduct: "Siêu phầm PORSCHE PANAMERA model 2020 full option",
      rating: 4.9,
      price: "7 tỷ 999 triệu",
      km: 30000,
      images: [
        "assets/images/white_car3x.png",
        "assets/images/white_car3x.png",
        "assets/images/white_car3x.png",
        "assets/images/white_car3x.png",
      ],
      location: "Hà Nội",
      quantityReview: 221,
      productInformation: {
        "hangXe": "Mercedes",
        "dongXe": "Benz",
        "phienBan": "2014",
        "namSanXuat": "2021",
        "tinhTrang": "Mới",
        "hopSo": "Tự động",
        "viTri": "Hà Nội",
        "kieuDang": "Thể thao",
        "nhienLieu": "Xăng",
        "soGhe": "4",
        "mau": "Đen - Trắng",
        "xuatXu": "Việt Nam",
      },
      favorite: true,
    ),
    Product(
      id: "2",
      productName: "Porsche",
      descriptionProduct: "Siêu phầm PORSCHE PANAMERA model 2020 full option",
      rating: 4.9,
      price: "7 tỷ 999 triệu",
      km: 30000,
      images: [
        "assets/images/white_car3x.png",
        "assets/images/white_car3x.png",
        "assets/images/white_car3x.png",
        "assets/images/white_car3x.png",
      ],
      location: "Hà Nội",
      quantityReview: 221,
      productInformation: {
        "hangXe": "Mercedes",
        "dongXe": "Benz",
        "phienBan": "2014",
        "namSanXuat": "2021",
        "tinhTrang": "Mới",
        "hopSo": "Tự động",
        "viTri": "Hà Nội",
        "kieuDang": "Thể thao",
        "nhienLieu": "Xăng",
        "soGhe": "4",
        "mau": "Đen - Trắng",
        "xuatXu": "Việt Nam",
      },
      favorite: true,
    ),
    Product(
      id: "3",
      productName: "Porsche",
      descriptionProduct: "Siêu phầm PORSCHE PANAMERA model 2020 full option",
      rating: 4.9,
      price: "7 tỷ 999 triệu",
      km: 30000,
      images: [
        "assets/images/white_car3x.png",
        "assets/images/white_car3x.png",
        "assets/images/white_car3x.png",
        "assets/images/white_car3x.png",
      ],
      location: "Hà Nội",
      quantityReview: 221,
      productInformation: {
        "hangXe": "Mercedes",
        "dongXe": "Benz",
        "phienBan": "2014",
        "namSanXuat": "2021",
        "tinhTrang": "Mới",
        "hopSo": "Tự động",
        "viTri": "Hà Nội",
        "kieuDang": "Thể thao",
        "nhienLieu": "Xăng",
        "soGhe": "4",
        "mau": "Đen - Trắng",
        "xuatXu": "Việt Nam",
      },
      favorite: true,
    ),
    Product(
      id: "4",
      productName: "Porsche",
      descriptionProduct: "Siêu phầm PORSCHE PANAMERA model 2020 full option",
      rating: 4.9,
      price: "7 tỷ 999 triệu",
      km: 30000,
      images: [
        "assets/images/white_car3x.png",
        "assets/images/white_car3x.png",
        "assets/images/white_car3x.png",
        "assets/images/white_car3x.png",
      ],
      location: "Hà Nội",
      quantityReview: 221,
      productInformation: {
        "hangXe": "Mercedes",
        "dongXe": "Benz",
        "phienBan": "2014",
        "namSanXuat": "2021",
        "tinhTrang": "Mới",
        "hopSo": "Tự động",
        "viTri": "Hà Nội",
        "kieuDang": "Thể thao",
        "nhienLieu": "Xăng",
        "soGhe": "4",
        "mau": "Đen - Trắng",
        "xuatXu": "Việt Nam",
      },
      favorite: true,
    ),
    Product(
      id: "5",
      productName: "Porsche",
      descriptionProduct: "Siêu phầm PORSCHE PANAMERA model 2020 full option",
      rating: 4.9,
      price: "7 tỷ 999 triệu",
      km: 30000,
      images: [
        "assets/images/white_car3x.png",
        "assets/images/white_car3x.png",
        "assets/images/white_car3x.png",
        "assets/images/white_car3x.png",
      ],
      location: "Hà Nội",
      quantityReview: 221,
      productInformation: {
        "hangXe": "Mercedes",
        "dongXe": "Benz",
        "phienBan": "2014",
        "namSanXuat": "2021",
        "tinhTrang": "Mới",
        "hopSo": "Tự động",
        "viTri": "Hà Nội",
        "kieuDang": "Thể thao",
        "nhienLieu": "Xăng",
        "soGhe": "4",
        "mau": "Đen - Trắng",
        "xuatXu": "Việt Nam",
      },
      favorite: true,
    ),
  ];
  static List<int> demoColors = [
    0xFFF7CC28,
    0xFF3D70A0,
    0xFFFD2000,
    0xFF2F2F30
  ];

  static List<Map<String, String>> demoVideo = [
    {
      "videoLength": "05:07",
      "pathImage": "assets/images/white_car2x.png",
      "carName": "Rolls Royce",
      "subTitle": "Ghost 2010",
    },
    {
      "videoLength": "05:07",
      "pathImage": "assets/images/white_car2x.png",
      "carName": "Rolls Royce",
      "subTitle": "Ghost 2010",
    },
    {
      "videoLength": "05:07",
      "pathImage": "assets/images/white_car2x.png",
      "carName": "Rolls Royce",
      "subTitle": "Ghost 2010",
    },
    {
      "videoLength": "05:07",
      "pathImage": "assets/images/white_car2x.png",
      "carName": "Rolls Royce",
      "subTitle": "Ghost 2010",
    },
  ];
  static List<String> demoDataContentImageProduct = [
    "assets/images/white_car3x.png",
    "assets/images/white_car3x.png",
    "assets/images/white_car3x.png",
    "assets/images/white_car3x.png",
  ];
  static List<String> demoImagesProduct = [
    "assets/images/white_car.png",
    "assets/images/white_car.png",
    "assets/images/white_car.png",
    "assets/images/white_car.png",
    "assets/images/white_car.png",
  ];
  static List<String> demoDataProperties = [
    "Thông số cơ bản",
    "Thông số kĩ thuật",
    "Nội thất ngoại thất",
    "An toàn",
    "Ưu đãi bảo hành",
  ];
  static List<String> demoDataImagesFeedback = [
    "assets/images/black_car.png",
    "assets/images/black_car.png",
    "assets/images/black_car.png",
  ];
  static List<Map<String, String>> demoOtherCar = [
    {
      "pathImage": "assets/images/white_car2x.png",
      "carDescription": "Porsche Siêu phẩm PORSCHE .....",
      "price": "7 tỷ 999 triệu",
      "speed": "30.000 Km",
      "location": "Hà Nội",
    },
    {
      "pathImage": "assets/images/white_car2x.png",
      "carDescription": "Porsche Siêu phẩm PORSCHE .....",
      "price": "7 tỷ 999 triệu",
      "speed": "30.000 Km",
      "location": "Hà Nội",
    },
    {
      "pathImage": "assets/images/white_car2x.png",
      "carDescription": "Porsche Siêu phẩm PORSCHE .....",
      "price": "7 tỷ 999 triệu",
      "speed": "30.000 Km",
      "location": "Hà Nội",
    },
    {
      "pathImage": "assets/images/white_car2x.png",
      "carDescription": "Porsche Siêu phẩm PORSCHE .....",
      "price": "7 tỷ 999 triệu",
      "speed": "30.000 Km",
      "location": "Hà Nội",
    },
  ];
  static Agency agency = Agency(
    rating: 4.6,
    feedbackChat: 10,
    nameAgency: "Thu Hằng",
    operationStatus: "10 phút trước",
    quantityProduct: 20,
    urlAvatar: "assets/images/black_car.png",
  );
  static Product product = Product(
    id: "1",
    productName: "Porsche",
    descriptionProduct: "Siêu phầm PORSCHE PANAMERA model 2020 full option",
    rating: 3,
    favorite: true,
    km: 30000,
    images: [
      "assets/images/white_car3x.png",
      "assets/images/white_car3x.png",
      "assets/images/white_car3x.png",
      "assets/images/white_car3x.png",
    ],
    location: "Hà Nội",
    price: "7 tỷ 999 triệu",
    quantityReview: 234,
    productInformation: {
      "hangXe": "Mercedes",
      "dongXe": "Benz",
      "phienBan": "2014",
      "namSanXuat": "2021",
      "tinhTrang": "Mới",
      "hopSo": "Tự động",
      "viTri": "Hà Nội",
      "kieuDang": "Thể thao",
      "nhienLieu": "Xăng",
      "soGhe": "4",
      "mau": "Đen - Trắng",
      "xuatXu": "Việt Nam",
    },
  );
}
