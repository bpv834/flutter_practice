import 'package:flutter_test/flutter_test.dart';
import 'package:image_search_review/data/data_source/result.dart';
import 'package:image_search_review/data/repository/photo_api_repository_impl.dart';
import 'package:image_search_review/domain/model/photo.dart';
import 'package:image_search_review/domain/repository/photo_api_repository.dart';
import 'package:image_search_review/presentation/home/home_veiw_model.dart';

void main() {
  test('Stream이 잘 동작해야 한다.', () async {
    final viewModel = HomeViewModel(repository: FakePhotoApiRepository());

    final result = fakeJson.map((e) => Photo.fromJson(e)).toList();
    await viewModel.fetch('apple');
    expect(
        viewModel.photos,result);
  });
}

class FakePhotoApiRepository extends PhotoApiRepository {
  @override
  Future<Result<List<Photo>>> fetch(String query) async {
    Future.delayed(Duration(milliseconds: 500));

    return Result.Success(fakeJson.map((e) => Photo.fromJson(e)).toList());
  }
}

List<Map<String, dynamic>> fakeJson = [
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
        "https://pixabay.com/get/g5f235365d2d19f0b25d1d0eb2484241b56efe064dbe2748c29d3b54b4d157f9b1b5c1ce8e8edf5311dddbb7da589974069d16fdaf911a6f5c17ce88988fdad9c_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL":
        "https://pixabay.com/get/g21a19a1f54abea56f26bd0659f558c7c83192fbbdfa0c1816e3d389e5e07ed6b611a78a12cdf10e4fa157b00bda380536fca1b295a95c9e2321d39eef8c1b171_1280.jpg",
    "imageWidth": 5363,
    "imageHeight": 3575,
    "imageSize": 2938651,
    "views": 833129,
    "downloads": 498464,
    "collections": 2332,
    "likes": 2250,
    "comments": 291,
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
        "https://pixabay.com/get/g4dd55f6a98f31b5dba5190f47d63b5822e7690f5a319daf9d892fb167579a39a01868441def7c718bf86b0f6202a9508a892fd34500eef5f09de13d4cb23cb69_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL":
        "https://pixabay.com/get/ga2a2665a4b69273aa1f9f49bfae557a5d66aaed754011fd1db01a447b9108b7f3b72925333ebeb74623723b98385d18bd284b9b6f8108da0c4ab0bfc84f1c4b2_1280.jpg",
    "imageWidth": 6000,
    "imageHeight": 4000,
    "imageSize": 3574625,
    "views": 1151851,
    "downloads": 750547,
    "collections": 1538,
    "likes": 1672,
    "comments": 342,
    "user_id": 1564471,
    "user": "anncapictures",
    "userImageURL":
        "https://cdn.pixabay.com/user/2015/11/27/06-58-54-609_250x250.jpg"
  },
];
