import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:stock_app/domain/repository/stock_repository.dart';
import 'package:stock_app/presentation/company_info/company_info_screen.dart';
import 'package:stock_app/presentation/company_info/company_info_view_model.dart';
import 'package:stock_app/presentation/company_listings/company_listings_action.dart';
import 'package:stock_app/presentation/company_listings/company_listings_view_model.dart';

class CompanyListingsScreen extends StatelessWidget {
  const CompanyListingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CompanyListingsViewModel>();
    final state = viewModel.state;
    return Scaffold(
        //appBar를 안쓰는경우 SafeArea로 감싸 레이아웃설정함
        body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              onChanged: (query) {
                viewModel
                    .onAction(CompanyListingsAction.onSearchQueryChange(query));
              },
              decoration: InputDecoration(
                labelText: '검색...',
                labelStyle: const TextStyle(color: Colors.grey),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary, width: 2),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.primary,
                    width: 2,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
              ),
            ),
          ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                viewModel.onAction(const CompanyListingsAction.refresh());
              },
              child: ListView.builder(
                  itemCount: state.companies.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          title: Text(state.companies[index].name),
                          onTap: () {
                            Navigator.push(
                              context,
                              //Screen()안에 symbol값을 넣어도 되지만, 스크린에 데이터를 넣고싶지않아 프로바이더를 호출
                              // 스크린을 호출할때만 프로바이더를 호출
                              MaterialPageRoute(builder: (context) {
                                /*프로바이더를 통해서 가져오는 것 final repository = context.read<StockRepository>();*/
                                final repository =
                                    GetIt.instance<StockRepository>();
                                final symbol = state.companies[index].symbol;
                                return ChangeNotifierProvider(
                                  //화면이 전환될 때 (ontap이 될때)마다 프로바이더를 새로 생성시킴
                                  create: (_) => CompanyInfoViewModel(
                                    repository,
                                    symbol,
                                  ),
                                  child: const CompanyInfoScreen(),
                                );
                              }),
                            );
                          },
                        ),
                        Divider(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ],
                    );
                  }),
            ),
          )
        ],
      ),
    ));
  }
}
