import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/presentation/home_page/area_section/region_section.dart';
import 'package:book_store/presentation/home_page/components/best_board_gesture_detector.dart';
import 'package:book_store/presentation/home_page/components/build_region_button.dart';
import 'package:book_store/presentation/home_page/home_event.dart';
import 'package:book_store/presentation/home_page/home_view_model.dart';
import 'package:book_store/presentation/start_page/splash_view_model.dart';
import 'package:book_store/presentation/store_page/store_view_page/store_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../nav_page/bottom_bar.dart';
import '../store_page/store_view_page/store_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    final customViewModel = context.watch<CustomerInfoViewModel>();
    final storeViewModel = context.watch<StoreViewModel>();
    final splashViewModel = context.watch<SplashViewModel>();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          'Home',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Column(children: [
              const Row(
                children: [
                  Text(
                    '실시간 인기글',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: customViewModel.screenHeight / 2.4,
                child: ListView.builder(
                    itemCount: viewModel.bestBoardList.length,
                    itemBuilder: (context, index) {
                      int boardId = viewModel.bestBoardList[index].id;
                      return BestBoardGestureDetector(index: index, boardId: boardId,);
                    }),
              ),
              //내 주변서점, 화살표 버튼
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '내 주변 서점 : ${storeViewModel.nearByStores.length}',
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  IconButton(
                    onPressed: () async {
                      storeViewModel.isLoading = true;
                      storeViewModel.isNearBy = true;
                      await splashViewModel.getNearByStores(customViewModel);
                      storeViewModel.stores = splashViewModel.nearByList;
                      viewModel.onEvent(
                        HomeEvent.nearbyStore(storeViewModel.stores, context),
                      );
                      storeViewModel.barTagName = '내 주변 서점';
                      storeViewModel.regionTagName = '';
                      storeViewModel.isLoading = false;
                    },
                    icon: const Icon(Icons.arrow_forward),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: customViewModel.screenHeight / 10,
                  ),
                  //지역별 서점 텍스트 자리
                  const Row(
                    children: [
                      Text(
                        '지역별 서점',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  //지역별 서점 구분 컨테이너
                  SizedBox(
                    height: customViewModel.screenHeight / 3,
                    child: Column(
                      children: [
                        //전체서점, 서울/경기/인천
                        Expanded(
                          child: Row(
                            children: [
                              //전체서점
                              Expanded(
                                child: InkWell(
                                  onTap: () async {
                                    storeViewModel.loadSimpleStores('');
                                    storeViewModel.barTagName = '지역별 서점';
                                    storeViewModel.regionTagName = '모든 지역';
                                    storeViewModel.regionName = '';
                                    //클릭하면서, 레포지토리 stores를 받아옴
                                    viewModel.onEvent(const HomeEvent.byRegion(
                                        RegionSection.all()));
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => StoreViewScreen(
                                            simpleStores:
                                                storeViewModel.stores),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        '전체보기',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              //서울,경기,인천 서점
                              const BuildRegionButton(
                                  label: '서울@경기@인천',
                                  regionName: '서울/경기/인천',
                                  regionTagName: '서울/경기/인천',
                                  barTagName: '지역별 서점'),
                            ],
                          ),
                        ),
                        //강원, 충청/대전
                        const Expanded(
                          //강원, 충청/대전 서점
                          child: Row(
                            children: [
                              //강원
                              BuildRegionButton(
                                  label: '강원',
                                  regionName: '강원',
                                  regionTagName: '강원',
                                  barTagName: '지역별 서점'),
                              //충청/대전
                              BuildRegionButton(
                                  label: '충청@대전',
                                  regionName: '충청/대전',
                                  regionTagName: '충청/대전',
                                  barTagName: '지역별 서점'),
                            ],
                          ),
                        ),
                        //경북/대구, 전라/광주
                        const Expanded(
                          child: Row(
                            children: [
                              BuildRegionButton(
                                  label: '경상북도@대구',
                                  regionName: '경북/대구',
                                  regionTagName: '경북/대구',
                                  barTagName: '지역별 서점'),
                              BuildRegionButton(
                                  label: '전라@광주',
                                  regionName: '전라/광주',
                                  regionTagName: '전라/광주',
                                  barTagName: '지역별 서점'),
                            ],
                          ),
                        ),
                        // 부/울/경, 제주
                        const Expanded(
                          child: Row(
                            children: [
                              BuildRegionButton(
                                  label: '부산@울산@경상남도',
                                  regionName: '부산/울산/경남',
                                  regionTagName: '부산/울산/경남',
                                  barTagName: '지역별 서점'),
                              BuildRegionButton(
                                  label: '제주',
                                  regionName: '제주',
                                  regionTagName: '제주',
                                  barTagName: '지역별 서점'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
