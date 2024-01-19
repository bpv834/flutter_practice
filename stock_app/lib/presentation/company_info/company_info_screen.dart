import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_app/domain/model/company_info.dart';
import 'package:stock_app/presentation/company_info/company_info_view_model.dart';

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
            if (state.errorMessage != null)Center(child: Text('${state.errorMessage!}')),
            if(state.isLoading) Center(child: CircularProgressIndicator()),
            if(!state.isLoading && state.errorMessage == null)_buildBody(state.companyInfo!),
          ],
        ),
      ),
    );
  }
}

Widget _buildBody(CompanyInfo companyInfo) {
  return Padding(
    padding: EdgeInsets.all(16),
    child: Center(
      child: Column(
        children: [
          Text(
            companyInfo.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            companyInfo.symbol,
            style: TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
          Divider(),
          Text(
            'industry: ${companyInfo.industry}',
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            'country: ${companyInfo.country}',
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Divider(),
          Text(
            companyInfo.description,
            style: TextStyle(fontSize: 12),
          )

        ],
      ),
    ),
  );
}
