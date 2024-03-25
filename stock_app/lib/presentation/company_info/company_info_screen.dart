import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_app/domain/model/company_info.dart';
import 'package:stock_app/presentation/company_info/company_info_state.dart';
import 'package:stock_app/presentation/company_info/company_info_view_model.dart';
import 'package:stock_app/presentation/company_info/components/stock_chart.dart';

class CompanyInfoScreen extends StatelessWidget {
  const CompanyInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CompanyInfoViewModel>();
    final state = viewModel.state;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            if (state.errorMessage != null)
              Center(child: Text('${state.errorMessage!}')),
            if (state.isLoading) Center(child: CircularProgressIndicator()),
            if (!state.isLoading && state.errorMessage == null)
              _buildBody(state),
          ],
        ),
      ),
    );
  }
}

Widget _buildBody(CompanyInfoState state) {
  return Padding(
    padding: EdgeInsets.all(16),
    child: Center(
      child: Column(
        children: [
          Text(
            state.companyInfo!.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            state.companyInfo!.symbol,
            style: TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
          Divider(),
          Text(
            'industry: ${state.companyInfo!.industry}',
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            'country: ${state.companyInfo!.country}',
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Divider(),
          Text(
            state.companyInfo!.description,
            style: TextStyle(fontSize: 12),
          ),
          SizedBox(height: 16),
          const Text(
            '추가 그래프',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          if(state.stockInfos.isNotEmpty) StockChart(infos: state.stockInfos)
        ],
      ),
    ),
  );
}
