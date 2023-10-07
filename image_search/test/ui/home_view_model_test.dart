import 'package:flutter_test/flutter_test.dart';
import 'package:image_search/data/photo_api_repository.dart';
import 'package:image_search/model/Photo.dart';
import 'package:image_search/ui/home_view_model.dart';

//테스트케이스 순서
// 1.어떤 테스트를 할 것인지 정하기 (exam: HomeViewModel)
// 2.fakeJson 데이터 만들기
// 3.fakeRepository 만들기 HomeViewModel에 repository가 필요하기 때문에
// 4. main 함수에서 veiwmodel 만들고 veiwmodel.fetch 실행
// 5. expect(Stream데이터와 비교하기. (emits함수 사용))

void main() {
  test('stream이 잘 동작해야한다', () async {
    final viewModel = HomeViewModel(FakePhotoApiRepository());

    await viewModel.fetch('query');

    final List<Photo> result = fakeJson.map((e) => Photo.fromJson(e)).toList();

    expect(viewModel.photos, result);
  });
}

class FakePhotoApiRepository extends PhotoApiRepository {
  @override
  Future<List<Photo>> fetch(String query) async {
    Future.delayed(Duration(milliseconds: 500));
    return fakeJson.map((e) => Photo.fromJson(e)).toList();
  }
}

List<Map<String, dynamic>> fakeJson = [
  //fromJson 하는 순서
  //1. Map형태의 Json만들기 List<Map<String, dynamic>> fakeJson
  //2. List<model> 의 result = fromJson ..(exam : final result= fakeJson.map((e=>Photo.fromJson)).toList();
  {
    "id": 2295434,
    "pageURL":
        "https://pixabay.com/photos/spring-bird-bird-tit-spring-blue-2295434/",
    "type": "photo",
    "tags": "spring bird, bird, tit",
    "previewURL":
        "https://cdn.pixabay.com/photo/2017/05/08/13/15/spring-bird-2295434_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/g9d2ce79fc791e52f37cb13e6fae09e0f9fddbd6bb0d0cb02a58f69e0d94ef8bb2f79b779b9ca24141f4b89b1058d9b7d9719775653308df881e49cb605cfd78e_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL":
        "https://pixabay.com/get/g9a081e678dc7fd85602f255543cef413515a482f44002e62ba822a52324227aa8d682de8cc9be2d7e0d30f67b4ea7bf95b577f8af4fe3c575f5bc7c063935c6c_1280.jpg",
    "imageWidth": 5363,
    "imageHeight": 3575,
    "imageSize": 2938651,
    "views": 827118,
    "downloads": 493894,
    "collections": 2317,
    "likes": 2232,
    "comments": 288,
    "user_id": 334088,
    "user": "JillWellington",
    "userImageURL":
        "https://cdn.pixabay.com/user/2018/06/27/01-23-02-27_250x250.jpg"
  },
  {
    "id": 3063284,
    "pageURL":
        "https://pixabay.com/photos/rose-flower-petal-floral-noble-3063284/",
    "type": "photo",
    "tags": "rose, flower, petal",
    "previewURL":
        "https://cdn.pixabay.com/photo/2018/01/05/16/24/rose-3063284_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/g45bb8222bc0fdd07064c3005df58ccc8435c882d35eb4242151571289ec56f3700841a422efdf453194a239f6aa1596411bd3dfa41d7e16ea29499d1effef712_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL":
        "https://pixabay.com/get/g19d09d4edceaefacf162f55d076004d92d0a0c7656bab86c3a56d9d7b6e886b1888d14b2e76f3710336bc93122878fc2a953ad0a00f9c5b1d74177428f69c751_1280.jpg",
    "imageWidth": 6000,
    "imageHeight": 4000,
    "imageSize": 3574625,
    "views": 1147047,
    "downloads": 747051,
    "collections": 1533,
    "likes": 1660,
    "comments": 342,
    "user_id": 1564471,
    "user": "anncapictures",
    "userImageURL":
        "https://cdn.pixabay.com/user/2015/11/27/06-58-54-609_250x250.jpg"
  },
];
