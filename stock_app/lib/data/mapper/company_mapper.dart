import 'package:stock_app/data/source/local/company_listing_entity.dart';
import 'package:stock_app/data/source/remote/dto/company_info_dto.dart';
import 'package:stock_app/domain/model/company_info.dart';
import 'package:stock_app/domain/model/company_listing.dart';

extension ToCompanyListing on CompanyListingEntity {
  CompanyListing toCompanyListing() {
    return CompanyListing(
      symbol: symbol,
      name: name,
      exchange: exchange,
    );
  }
}

extension ToCompanyListingEntity on CompanyListing {
  CompanyListingEntity toCompanyListingEntity() {
    return CompanyListingEntity(
      symbol: symbol,
      name: name,
      exchange: exchange,
    );
  }
}

//확장 대상=  on 뒤에 오는 클래스나 타입
// ToCompanyInfo라는 이름의 확장 함수가 CompanyInfoDto 클래스에 추가되었습니다.
//. 이 확장 함수는 CompanyInfoDto 객체를 CompanyInfo 객체로 변환하는데 사용됩니다.
extension ToCompanyInfo on CompanyInfoDto {
  CompanyInfo toCompanyInfo() {
    return CompanyInfo(
      symbol: symbol ?? '',
      description: description ?? '',
      name: name ?? '',
      country: country ?? '',
      industry: industry ?? '',
    );
  }
}
