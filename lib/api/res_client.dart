import 'dart:convert';
import 'dart:io';

import 'package:auto_group/model/agency_model.dart';
import 'package:auto_group/model/booking_test.dart';
import 'package:auto_group/model/car_news_model.dart';
import 'package:auto_group/model/category_model.dart';
import 'package:auto_group/model/product_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'res_client.g.dart';

const int pageSize = 20;

@RestApi(baseUrl: "https://61bc30dfd8542f0017824600.mockapi.io/api")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  // @GET('/widgets/{slug}')
  // Future<HttpResponse<WidgetModel>> getWidgetsBySlug({
  //   @Path('slug') String? slug,
  // });

  @GET('/categories')
  Future<HttpResponse<List<Category>>> getCategories();
  @GET('/products')
  Future<HttpResponse<List<Product>>> getProducts();
  @GET('/agents')
  Future<HttpResponse<List<Agency>>> getAgents();
  @GET('/news')
  Future<HttpResponse<List<CarNews>>> getNews();
  @GET('/agents/{id}')
  Future<HttpResponse<Agency>> getAgency(@Path('id') String? id);
  @MultiPart()
  @POST('/booking_test')
  Future<HttpResponse<BookingTest>> postBookingTest(
      @Part(name: "fullName") String fullName,
      @Part(name: "dateOfBirth") String dateOfBirth,
      @Part(name: "phoneNumber") String phoneNumber,
      @Part(name: "email") String email,
      @Part(name: "gender") String gender,
      @Part(name: "ownCar") bool ownCar,
      );
//
//   // @GET('/time-slot')
//   // Future<HttpResponse<ListResponse<List<TimeSlotModel>>>> getTimeSlots();
//   //
//   // @MultiPart()
//   // @POST('/login')
//   // Future<HttpResponse<LoginResponse>> login(@Part(name: "phone") String phone);
//   //
//   // @MultiPart()
//   // @POST('/verify-otp')
//   // Future<HttpResponse<UserInfoModel>> verifyOTP(
//   //     @Part(name: "phone") String phone, @Part(name: "otp") String otp);
//   //
//   // @MultiPart()
//   // @POST('/bookings')
//   // Future<HttpResponse<BookingModel>> bookingTreament(
//   //     @Part(name: "username") String username,
//   //     @Part(name: "phone") String phone,
//   //     @Part(name: "birthday") String birthday,
//   //     @Part(name: "type") String type,
//   //     @Part(name: "branch") String branch,
//   //     @Part(name: "doctor") String doctor,
//   //     @Part(name: "appointment_date") String appointment_date,
//   //     @Part(name: "time_slot") String time_slot,
//   //     @Part(name: "reason") String reason);
//   //
//   // @MultiPart()
//   // @POST('/logout')
//   // Future<HttpResponse> logOut();
//   //
//   // @GET('/category-list/{id}')
//   // Future<HttpResponse<ListResponse<List<CategoryModel>>>> getListCategory(@Path('id') int? id);
//   //
//   // @GET('/categories/{id}')
//   // Future<HttpResponse<CategoryModel>> getCategoryDetail(@Path('id') int? id);
//   //
//   // @GET('/categories/{id}/articles')
//   // Future<HttpResponse<ListResponse<List<ArticleModel>>>> getArticleByCategory(@Path('id') int? id, @Query('page') int page, @Query('limit') int limit);
//   //
//   // @GET('/article-type/{type}/articles')
  // Future<HttpResponse<ListResponse<List<ArticleModel>>>> getArticleByType(@Path('type') String type, @Query('page') int page, @Query('limit') int limit);
  //
  // @GET('/articles/{id}')
  // Future<HttpResponse<ArticleModel>> getArticleDetail(@Path('id') int? id);
  //
  // @GET('/doctors')
  // Future<HttpResponse<ListResponse<List<DoctorModel>>>> getListDoctor(
  //     @Query('page') int page, @Query('limit') int limit);
  //
  // @GET('/doctors/{id}')
  // Future<HttpResponse<DoctorModel>> getDoctorDetail(@Path('id') int? id);
  //
  // @GET('/orders')
  // Future<HttpResponse<ListResponse<List<OrderModel>>>> getListOder(
  //   @Query('examination_card_id') int? examinationCardId,
  //   @Query('page') int page,
  //   @Query('limit') int limit
  // );
  //
  // @GET('/examination-card')
  // Future<HttpResponse<ListResponse<List<ExaminationCardModel>>>> getListExaminationCard(@Query('page') int page, @Query('limit') int limit);
  //
  // @GET('/bookings')
  // Future<HttpResponse<ListResponse<List<HistoryModel>>>> getListHistory(
  //   @Query('page') int page,
  //   @Query('limit') int limit
  // );
  //
  // @GET('/accounts')
  // Future<HttpResponse<UserInfoModel>> getUserInfo();
  //
  // @MultiPart()
  // @PUT('/accounts')
  // Future<HttpResponse<UserInfoModel>> updateUserInfo({
  //   @Part(name: "username") String? username,
  //   @Part(name: "phone") String? phone,
  //   @Part(name: "birthday") String? birthday,
  //   @Part(name: "address") String? address,
  //   @Part(name: "gender") String? gender,
  //   @Part(name: "image") String? image,
  // });
}
