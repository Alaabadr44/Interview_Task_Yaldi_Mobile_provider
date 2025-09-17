// Project imports:
import '../../data/models/meta_pagination_model.dart';
import '../entities/booking_model.dart';
import '../entities/branch_model.dart';
import '../entities/car_item_model.dart';
import '../entities/city_model.dart';
import '../entities/contact_us_model.dart';
import '../entities/contract_model.dart';
import '../entities/correspondence_model.dart';
import '../entities/customer_model.dart';
import '../entities/date_package_model.dart';
import '../entities/employee_model.dart';
import '../entities/engine_capacitiy.dart';
import '../entities/favorite_res_model.dart';
import '../entities/id_status_name_model.dart';
import '../entities/inspection_details_model.dart';
import '../entities/inspection_model.dart';
import '../entities/location_model.dart';
import '../entities/notification_model.dart';
import '../entities/order_offer_model.dart';
import '../entities/organization_model.dart';
import '../entities/payment_model.dart';
import '../entities/place_autocomplete_model.dart';
import '../entities/place_location_model.dart';
import '../entities/place_suggestion_model.dart';
import '../entities/policy_model.dart';
import '../entities/rewards_model.dart';
import '../entities/service_model.dart';
import '../entities/slider_model.dart';
import '../entities/trip_details_res_model.dart';
import '../entities/user_model.dart';
import '../entities/vehicle_model.dart';

import '../entities/user_reg_model.dart';

import '../entities/user_dash_model.dart';





class ModelType {
  static dynamic getParseData<T>(Object? json) {
    if (json != null) {
      if (json is String || json is int || json is double || json is bool) {
        return json;
      } else if (json is Map<String, dynamic>) {
        var modelFactory = getModel<T>();
        if (modelFactory != null) {
          return modelFactory.call(json);
        }
        return json;
      } else if (json is List) {
        return json;
      }
    }
    return null;
  }

  static Function? getModel<T>() {
    switch (T) {
        case const (UserModel):
          return UserModel.fromJson;
      case const (CityModel):
        return CityModel.fromJson;
      case const (AreaModel):
        return AreaModel.fromJson;
      case const (PlaceAutocompleteModel):
        return PlaceAutocompleteModel.fromJson;
      case const (StructuredFormatting):
        return StructuredFormatting.fromJson;
      case const (PlaceSuggestionModel):
        return PlaceSuggestionModel.fromJson;
      case const (PlaceLocationModel):
        return PlaceLocationModel.fromJson;
      case const (MetaPaginationModel):
        return MetaPaginationModel.fromJson;
      case const (PolicyModel):
        return PolicyModel.fromJson;
      case const (DatePackageModel):
        return DatePackageModel.fromJson;
      case const (BranchModel):
        return BranchModel.fromJson;
      case const (ServiceModel):
        return ServiceModel.fromJson;
      case const (CarItemModel):
        return CarItemModel.fromJson;
      case const (ContactUsModel):
        return ContactUsModel.fromJson;
      case const (OrganizationModel):
        return OrganizationModel.fromJson;
      case const (RewardsModel):
        return RewardsModel.fromJson;
      case const (SliderModel):
        return SliderModel.fromJson;
      case const (FavoriteResModel):
        return FavoriteResModel.fromJson;
      case const (OrderOfferModel):
        return OrderOfferModel.fromJson;
      case const (TripDetailsResModel):
        return TripDetailsResModel.fromJson;
      case const (BookingModel):
        return BookingModel.fromJson;
      case const (CorrespondenceModel):
        return CorrespondenceModel.fromJson;
      case const (NotificationModel):
        return NotificationModel.fromJson;
      case const (IdStatusNameModel):
        return IdStatusNameModel.fromJson;

      case const (EngineCapacitiy):
        return EngineCapacitiy.fromJson;

      case const (VehicleModel):
        return VehicleModel.fromJson;

      case const (CustomerModel):
        return CustomerModel.fromJson;

      case const (PaymentModel):
        return PaymentModel.fromJson;

      case const (LocationModel):
        return LocationModel.fromJson;

      case const (InspectionModel):
        return InspectionModel.fromJson;

      case const (InspectionDetailsModel):
        return InspectionDetailsModel.fromJson;

      case const (ContractModel):
        return ContractModel.fromJson;

      case const (EmployeeModel):
        return EmployeeModel.fromJson;

            case const (UserRegModel):
        return UserRegModel.fromJson;
        
      case const (UserDashModel):
        return UserDashModel.fromJson;
        
default:
        return null;
    }
  }
}
