// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(count) =>
      "${count} active filter(s) - showing filtered results";

  static String m1(percent) => "${percent}%";

  static String m2(customerName) =>
      "Are you sure you want to block ${customerName}? They will not be able to access their account until unblocked.";

  static String m3(customerName) => "${customerName} blocked successfully";

  static String m4(customerName) =>
      "Are you sure you want to delete ${customerName}? This action cannot be undone.";

  static String m5(customerName) => "${customerName} deleted successfully";

  static String m6(count) => "${count} customer(s) selected";

  static String m7(count, type) =>
      "${Intl.plural(count, one: '${Intl.select(type, {'week': 'one week', 'month': 'one month', 'day': 'one day', 'other': ''})}', two: '${Intl.select(type, {'week': 'two weeks', 'month': 'two months', 'day': 'two days', 'other': ''})}', few: '${count} ${Intl.select(type, {'week': 'weeks', 'month': 'months', 'day': 'days', 'other': ''})}', other: '${count} ${Intl.select(type, {'week': 'weeks', 'month': 'months', 'day': 'days', 'other': ''})}')}";

  static String m8(count) =>
      "File generated successfully! Exported ${count} customer(s).";

  static String m9(count) => "${count} filter(s) active";

  static String m10(count) => "${count} filter(s) applied";

  static String m11(userName) => "Hello, ${userName}";

  static String m12(userName) => "Welcome, ${userName}";

  static String m13(need) =>
      "${Intl.select(need, {'special': 'Special', 'woman': 'Woman', 'general': 'General', 'other': ''})}";

  static String m14(date, time) => "${date} at ${time}";

  static String m15(time) => "at ${time}";

  static String m16(timer) => "Resend code in ${timer} seconds";

  static String m17(query) => "Searching for: \"${query}\"";

  static String m18(size) =>
      "${Intl.select(size, {'small': 'Small', 'large': 'Large', 'medium': 'Medium', 'other': 'they'})}";

  static String m19(userName) => "Welcome back, ${userName}!";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "Edit": MessageLookupByLibrary.simpleMessage("Edit"),
    "Large": MessageLookupByLibrary.simpleMessage("l"),
    "Medium": MessageLookupByLibrary.simpleMessage("M"),
    "Small": MessageLookupByLibrary.simpleMessage("S"),
    "Vision_mission": MessageLookupByLibrary.simpleMessage(
      "Vision and mission",
    ),
    "aboutUs": MessageLookupByLibrary.simpleMessage("About US"),
    "accidents": MessageLookupByLibrary.simpleMessage("Accidents"),
    "active_filters_showing_results": m0,
    "add_additional_notes": MessageLookupByLibrary.simpleMessage(
      "Add any additional notes about the customer",
    ),
    "add_another_phone": MessageLookupByLibrary.simpleMessage(
      "Add Another Phone",
    ),
    "add_maintenance_parts": MessageLookupByLibrary.simpleMessage(
      "Add Maintenance Parts",
    ),
    "add_new_company": MessageLookupByLibrary.simpleMessage("Add New Company"),
    "add_new_customer": MessageLookupByLibrary.simpleMessage(
      "Add New Customer",
    ),
    "add_new_payment": MessageLookupByLibrary.simpleMessage("Add New Payment"),
    "add_payment_notes_optional": MessageLookupByLibrary.simpleMessage(
      "Add payment notes (optional)",
    ),
    "add_payment_to_contract": MessageLookupByLibrary.simpleMessage(
      "Add Payment to Contract",
    ),
    "additional_cost": MessageLookupByLibrary.simpleMessage("Additional Cost"),
    "additional_images_required": MessageLookupByLibrary.simpleMessage(
      "Additional Images *",
    ),
    "additional_info": MessageLookupByLibrary.simpleMessage("Additional Info"),
    "additional_phone_numbers": MessageLookupByLibrary.simpleMessage(
      "Additional Phone Numbers",
    ),
    "additional_services": MessageLookupByLibrary.simpleMessage(
      "Additional Services",
    ),
    "address": MessageLookupByLibrary.simpleMessage("Address"),
    "address_field": MessageLookupByLibrary.simpleMessage("Address"),
    "address_information": MessageLookupByLibrary.simpleMessage(
      "Address Information",
    ),
    "address_required": MessageLookupByLibrary.simpleMessage("Address *"),
    "age": MessageLookupByLibrary.simpleMessage("Age"),
    "agency": MessageLookupByLibrary.simpleMessage("Agency *"),
    "alert_dialog_otp_body_title": MessageLookupByLibrary.simpleMessage(
      "Verified",
    ),
    "alert_dialog_otp_desc_title": MessageLookupByLibrary.simpleMessage(
      "Your account has been verified successfully",
    ),
    "alert_notification": MessageLookupByLibrary.simpleMessage("Alert"),
    "alert_submit_return": MessageLookupByLibrary.simpleMessage(
      "By confirming to leave this page, you will lose all the data you have entered. Do you wish to proceed with this action?",
    ),
    "alert_title_title": MessageLookupByLibrary.simpleMessage("Alert"),
    "alert_verify_phone_return": MessageLookupByLibrary.simpleMessage(
      "Your phone number has not been verified yet. An activation code has been sent to your registered phone number, and you will be redirected to the activation page.",
    ),
    "all": MessageLookupByLibrary.simpleMessage("All"),
    "alreadyHaveAccount": MessageLookupByLibrary.simpleMessage(
      "Already have account?",
    ),
    "amount": MessageLookupByLibrary.simpleMessage("Amount"),
    "amount_paid": MessageLookupByLibrary.simpleMessage("Amount Paid"),
    "analysis_report": MessageLookupByLibrary.simpleMessage("Analysis Report"),
    "appTitle": MessageLookupByLibrary.simpleMessage("ON"),
    "apply": MessageLookupByLibrary.simpleMessage("Apply"),
    "ar": MessageLookupByLibrary.simpleMessage("Arabic"),
    "arabic": MessageLookupByLibrary.simpleMessage("العربية"),
    "attachAccidentPhotos": MessageLookupByLibrary.simpleMessage(
      "Attatch photos of the accident",
    ),
    "attachCopyOfBankTransfer": MessageLookupByLibrary.simpleMessage(
      "Attach a copy of the bank transfer",
    ),
    "attachLinkToAccidentReport": MessageLookupByLibrary.simpleMessage(
      "Attatch a link to the accident report",
    ),
    "available": MessageLookupByLibrary.simpleMessage("Available"),
    "back": MessageLookupByLibrary.simpleMessage("Back"),
    "bad_certificate_message": MessageLookupByLibrary.simpleMessage(
      "Certificate verification failed. Please make sure you\'re connected to a secure network and try again",
    ),
    "bad_gateway_502_message": MessageLookupByLibrary.simpleMessage(
      "The server acting as a gateway or proxy received an invalid response from the upstream server",
    ),
    "bankTransfers": MessageLookupByLibrary.simpleMessage("Bank Transfers"),
    "bank_transfer_or_wire_payment": MessageLookupByLibrary.simpleMessage(
      "Bank transfer or wire payment",
    ),
    "bestOffers": MessageLookupByLibrary.simpleMessage("Best Offers"),
    "best_car_guarantee": MessageLookupByLibrary.simpleMessage(
      "Best Car Guarantee",
    ),
    "best_car_guarantee_desc": MessageLookupByLibrary.simpleMessage(
      "We guarantee your booking with the prices. If you get a better price, we offer you a discount",
    ),
    "billing_details": MessageLookupByLibrary.simpleMessage("Billing Details"),
    "birth_date": MessageLookupByLibrary.simpleMessage("Birth Date"),
    "blood_group": MessageLookupByLibrary.simpleMessage("Blood Group"),
    "body_type": MessageLookupByLibrary.simpleMessage("Body Type *"),
    "booking": MessageLookupByLibrary.simpleMessage("Booking"),
    "branchPickUp": MessageLookupByLibrary.simpleMessage("Branch Pick Up"),
    "brands": MessageLookupByLibrary.simpleMessage("Brands *"),
    "business_information": MessageLookupByLibrary.simpleMessage(
      "Business Information",
    ),
    "button_accepting_order_title": MessageLookupByLibrary.simpleMessage(
      "Accepting order",
    ),
    "button_activate_title": MessageLookupByLibrary.simpleMessage("Activate"),
    "button_agree_title": MessageLookupByLibrary.simpleMessage("Agree"),
    "button_cancel_title": MessageLookupByLibrary.simpleMessage("Cancel"),
    "button_click_here_title": MessageLookupByLibrary.simpleMessage(
      "Click here",
    ),
    "button_continue_title": MessageLookupByLibrary.simpleMessage("Continue"),
    "button_data_processing_title": MessageLookupByLibrary.simpleMessage(
      "Processing data, please wait...",
    ),
    "button_done_title": MessageLookupByLibrary.simpleMessage("Done"),
    "button_filter_title": MessageLookupByLibrary.simpleMessage("Filter"),
    "button_finish_title": MessageLookupByLibrary.simpleMessage("Finish"),
    "button_next_title": MessageLookupByLibrary.simpleMessage("Next"),
    "button_no_title": MessageLookupByLibrary.simpleMessage("No"),
    "button_please_waite_title": m1,
    "button_preview_title": MessageLookupByLibrary.simpleMessage("Preview all"),
    "button_previous_title": MessageLookupByLibrary.simpleMessage("Previous"),
    "button_request_reviewing_title": MessageLookupByLibrary.simpleMessage(
      "Request for reviewing",
    ),
    "button_reset_title": MessageLookupByLibrary.simpleMessage("Reset all"),
    "button_retry_title": MessageLookupByLibrary.simpleMessage("Retry"),
    "button_review_title": MessageLookupByLibrary.simpleMessage("Review"),
    "button_save_change_title": MessageLookupByLibrary.simpleMessage(
      "Save Change",
    ),
    "button_save_date_title": MessageLookupByLibrary.simpleMessage("Save Data"),
    "button_save_title": MessageLookupByLibrary.simpleMessage("Save"),
    "button_show_details_title": MessageLookupByLibrary.simpleMessage(
      "Details",
    ),
    "button_skip_title": MessageLookupByLibrary.simpleMessage("Skip"),
    "button_submit_title": MessageLookupByLibrary.simpleMessage("Submit"),
    "button_yes_title": MessageLookupByLibrary.simpleMessage("Yes"),
    "camera": MessageLookupByLibrary.simpleMessage("Camera"),
    "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "cancelTrip": MessageLookupByLibrary.simpleMessage("Cancel Trip"),
    "cancel_error_message": MessageLookupByLibrary.simpleMessage(
      "Request has been canceled",
    ),
    "cancel_reason": MessageLookupByLibrary.simpleMessage("Cancel Reason"),
    "cancelled": MessageLookupByLibrary.simpleMessage("Cancelled"),
    "car": MessageLookupByLibrary.simpleMessage("Car"),
    "carDelivery": MessageLookupByLibrary.simpleMessage("Car Delivery"),
    "carForm": MessageLookupByLibrary.simpleMessage("Car Form"),
    "car_condition": MessageLookupByLibrary.simpleMessage("Car Condition *"),
    "car_details": MessageLookupByLibrary.simpleMessage("Car Details"),
    "car_fleet": MessageLookupByLibrary.simpleMessage("Car Fleet"),
    "car_model": MessageLookupByLibrary.simpleMessage("Car Model"),
    "car_notifications": MessageLookupByLibrary.simpleMessage(
      "Car Notifications",
    ),
    "car_rental_price_per": MessageLookupByLibrary.simpleMessage(
      "Car Rental Price Per",
    ),
    "car_types": MessageLookupByLibrary.simpleMessage("Car Types"),
    "card": MessageLookupByLibrary.simpleMessage("card"),
    "card_payment": MessageLookupByLibrary.simpleMessage("Card"),
    "cash": MessageLookupByLibrary.simpleMessage("cash"),
    "cash_payment": MessageLookupByLibrary.simpleMessage("Cash"),
    "categories": MessageLookupByLibrary.simpleMessage("Categories *"),
    "changePassword": MessageLookupByLibrary.simpleMessage("Change Password"),
    "change_password": MessageLookupByLibrary.simpleMessage("Change password"),
    "change_password_button": MessageLookupByLibrary.simpleMessage(
      "change password",
    ),
    "chassis_number": MessageLookupByLibrary.simpleMessage("Chassis Number *"),
    "check": MessageLookupByLibrary.simpleMessage("check"),
    "check_connection_message": MessageLookupByLibrary.simpleMessage(
      "Check your internet connection",
    ),
    "check_payment": MessageLookupByLibrary.simpleMessage("Check"),
    "checklist_cost": MessageLookupByLibrary.simpleMessage("Cost"),
    "checklist_image": MessageLookupByLibrary.simpleMessage("Image"),
    "checklist_note": MessageLookupByLibrary.simpleMessage("Note"),
    "checklist_result": MessageLookupByLibrary.simpleMessage("Result"),
    "checklist_status_fail": MessageLookupByLibrary.simpleMessage("Fail"),
    "checklist_status_pass": MessageLookupByLibrary.simpleMessage("Pass"),
    "checklist_type": MessageLookupByLibrary.simpleMessage("Type"),
    "cheque_number": MessageLookupByLibrary.simpleMessage("Cheque Number"),
    "chooseThePartyResposibleForAccident": MessageLookupByLibrary.simpleMessage(
      "Choose the party responsible for the accident",
    ),
    "chooseTypeOfModification": MessageLookupByLibrary.simpleMessage(
      "Choose type of modification",
    ),
    "choose_file": MessageLookupByLibrary.simpleMessage("Choose File"),
    "choose_file_format": MessageLookupByLibrary.simpleMessage(
      "Choose file format:",
    ),
    "choose_id_back_image": MessageLookupByLibrary.simpleMessage(
      "Choose ID Back Image",
    ),
    "choose_id_front_image": MessageLookupByLibrary.simpleMessage(
      "Choose ID Front Image",
    ),
    "choose_license_back_image": MessageLookupByLibrary.simpleMessage(
      "Choose License Back Image",
    ),
    "choose_license_front_image": MessageLookupByLibrary.simpleMessage(
      "Choose License Front Image",
    ),
    "choose_location_error": MessageLookupByLibrary.simpleMessage(
      "Please choose a location within the designated area to continue",
    ),
    "choose_passport_image": MessageLookupByLibrary.simpleMessage(
      "Choose Passport Image",
    ),
    "choosing_the_package": MessageLookupByLibrary.simpleMessage(
      "Choosing the Package",
    ),
    "citizen": MessageLookupByLibrary.simpleMessage("Citizen"),
    "city": MessageLookupByLibrary.simpleMessage("City *"),
    "civilId": MessageLookupByLibrary.simpleMessage("Civil Id"),
    "clear": MessageLookupByLibrary.simpleMessage("Clear"),
    "clear_all_notifications": MessageLookupByLibrary.simpleMessage(
      "Clear All",
    ),
    "click_to_see_details": MessageLookupByLibrary.simpleMessage(
      "Click to see details",
    ),
    "client_closed_request_499_message": MessageLookupByLibrary.simpleMessage(
      "he client has closed the request before the server could send a response",
    ),
    "code_reading_process": MessageLookupByLibrary.simpleMessage(
      "Code reading process",
    ),
    "code_sent_to": MessageLookupByLibrary.simpleMessage(
      "Code are sent to +966 ****** 00",
    ),
    "collapse_details": MessageLookupByLibrary.simpleMessage(
      "Collapse Details",
    ),
    "company": MessageLookupByLibrary.simpleMessage("Company"),
    "company_information": MessageLookupByLibrary.simpleMessage(
      "Company Information",
    ),
    "company_name": MessageLookupByLibrary.simpleMessage("Company name *"),
    "company_optional": MessageLookupByLibrary.simpleMessage(
      "Company (Optional)",
    ),
    "completed": MessageLookupByLibrary.simpleMessage("Completed"),
    "completed_inspections": MessageLookupByLibrary.simpleMessage("Completed"),
    "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
    "confirmNewPassword": MessageLookupByLibrary.simpleMessage(
      "Confirm New Password",
    ),
    "confirmPassword": MessageLookupByLibrary.simpleMessage("Confirm Password"),
    "confirmPasswordDontMatch": MessageLookupByLibrary.simpleMessage(
      "Confirm Password don\'t match",
    ),
    "confirm_booking": MessageLookupByLibrary.simpleMessage("Confirm Booking"),
    "confirm_password": MessageLookupByLibrary.simpleMessage(
      "Confirm Password",
    ),
    "confirm_password_hint": MessageLookupByLibrary.simpleMessage(
      "Enter the confirm password",
    ),
    "confirmed": MessageLookupByLibrary.simpleMessage("Confirmed"),
    "conflict_409_message": MessageLookupByLibrary.simpleMessage(
      "The request could not be completed due to a conflict with the current state of the resource",
    ),
    "congratulations": MessageLookupByLibrary.simpleMessage("Congratulations"),
    "connect_timeout_message": MessageLookupByLibrary.simpleMessage(
      "Connection timed out. Please check your internet connection and try again",
    ),
    "connection_closed_without_response_444_message":
        MessageLookupByLibrary.simpleMessage(
          "The server has closed the connection without sending any response",
        ),
    "connection_error_message": MessageLookupByLibrary.simpleMessage(
      "Unable to establish a connection. Please try again",
    ),
    "contactUs": MessageLookupByLibrary.simpleMessage("Contact US"),
    "contact_details": MessageLookupByLibrary.simpleMessage("Contact Details"),
    "contact_information": MessageLookupByLibrary.simpleMessage(
      "Contact Information",
    ),
    "contact_us_page_app_bar_title": MessageLookupByLibrary.simpleMessage(
      "Contact Us",
    ),
    "contact_us_page_call": MessageLookupByLibrary.simpleMessage(
      "Contact us by calling",
    ),
    "contact_us_page_send_mail": MessageLookupByLibrary.simpleMessage(
      "You can send us email through",
    ),
    "contact_us_page_send_msg": MessageLookupByLibrary.simpleMessage(
      "Contact us through WhatsApp messages",
    ),
    "contact_us_page_social_media": MessageLookupByLibrary.simpleMessage(
      "Social media accounts for the application",
    ),
    "continue_100_message": MessageLookupByLibrary.simpleMessage(
      "Continue with request",
    ),
    "contract_info": MessageLookupByLibrary.simpleMessage(
      "Contract Information",
    ),
    "contract_information": MessageLookupByLibrary.simpleMessage(
      "Contract Information",
    ),
    "contract_number": MessageLookupByLibrary.simpleMessage("Contract Number"),
    "contract_required": MessageLookupByLibrary.simpleMessage("Contract *"),
    "contracts": MessageLookupByLibrary.simpleMessage("Contracts"),
    "correspondense": MessageLookupByLibrary.simpleMessage("Correspondence"),
    "cost": MessageLookupByLibrary.simpleMessage("Cost"),
    "country": MessageLookupByLibrary.simpleMessage("Country *"),
    "country_field": MessageLookupByLibrary.simpleMessage("Country"),
    "country_not_available": MessageLookupByLibrary.simpleMessage(
      "The search terms do not match the countries available to us.",
    ),
    "createPassword": MessageLookupByLibrary.simpleMessage(
      "Create New Password",
    ),
    "create_account": MessageLookupByLibrary.simpleMessage("Create Account"),
    "create_inspection": MessageLookupByLibrary.simpleMessage(
      "Create Inspection",
    ),
    "create_new_inspection": MessageLookupByLibrary.simpleMessage(
      "Create New Inspection",
    ),
    "credit_or_debit_card_payment": MessageLookupByLibrary.simpleMessage(
      "Credit or debit card payment",
    ),
    "currentTrips": MessageLookupByLibrary.simpleMessage(
      "Current Reservations",
    ),
    "customerVehicleDocuments": MessageLookupByLibrary.simpleMessage(
      "Customer/\'s vehicle documents",
    ),
    "customer_added_successfully": MessageLookupByLibrary.simpleMessage(
      "Customer added successfully",
    ),
    "customer_details": MessageLookupByLibrary.simpleMessage(
      "Customer Details",
    ),
    "customer_name": MessageLookupByLibrary.simpleMessage("Customer Name"),
    "customer_type": MessageLookupByLibrary.simpleMessage("Customer Type"),
    "customer_type_required": MessageLookupByLibrary.simpleMessage(
      "Customer Type *",
    ),
    "customer_updated_successfully": MessageLookupByLibrary.simpleMessage(
      "Customer updated successfully",
    ),
    "customer_widget_block": MessageLookupByLibrary.simpleMessage("Block"),
    "customer_widget_block_confirmation_message": m2,
    "customer_widget_block_confirmation_title":
        MessageLookupByLibrary.simpleMessage("Block Customer"),
    "customer_widget_block_customer": MessageLookupByLibrary.simpleMessage(
      "Block Customer",
    ),
    "customer_widget_block_customer_desc": MessageLookupByLibrary.simpleMessage(
      "Temporarily block customer access",
    ),
    "customer_widget_blocked_successfully": m3,
    "customer_widget_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "customer_widget_delete": MessageLookupByLibrary.simpleMessage("Delete"),
    "customer_widget_delete_confirmation_message": m4,
    "customer_widget_delete_confirmation_title":
        MessageLookupByLibrary.simpleMessage("Delete Customer"),
    "customer_widget_delete_customer": MessageLookupByLibrary.simpleMessage(
      "Delete Customer",
    ),
    "customer_widget_delete_customer_desc":
        MessageLookupByLibrary.simpleMessage("Remove customer permanently"),
    "customer_widget_deleted_successfully": m5,
    "customer_widget_edit": MessageLookupByLibrary.simpleMessage("Edit"),
    "customer_widget_edit_customer": MessageLookupByLibrary.simpleMessage(
      "Edit Customer",
    ),
    "customer_widget_modify_customer_info":
        MessageLookupByLibrary.simpleMessage("Modify customer information"),
    "customer_widget_options": MessageLookupByLibrary.simpleMessage("Options"),
    "customer_widget_unknown_customer": MessageLookupByLibrary.simpleMessage(
      "Unknown Customer",
    ),
    "customer_widget_view": MessageLookupByLibrary.simpleMessage("View"),
    "customer_widget_view_customer_info": MessageLookupByLibrary.simpleMessage(
      "View customer information",
    ),
    "customer_widget_view_details": MessageLookupByLibrary.simpleMessage(
      "View Details",
    ),
    "customers": MessageLookupByLibrary.simpleMessage("Customers"),
    "customers_selected": m6,
    "daily_rate": MessageLookupByLibrary.simpleMessage("Daily Rate *"),
    "damage_description": MessageLookupByLibrary.simpleMessage(
      "Damage Description",
    ),
    "damage_details": MessageLookupByLibrary.simpleMessage("Damage Details"),
    "dashboard": MessageLookupByLibrary.simpleMessage("Dashboard"),
    "data_in_tabular_format": MessageLookupByLibrary.simpleMessage(
      "Data in tabular format",
    ),
    "date_format": MessageLookupByLibrary.simpleMessage("Date"),
    "date_package": m7,
    "day": MessageLookupByLibrary.simpleMessage("Day"),
    "deals": MessageLookupByLibrary.simpleMessage("Deals"),
    "deductible_insurance": MessageLookupByLibrary.simpleMessage(
      "Deductible Insurance",
    ),
    "deductible_insurance_desc": MessageLookupByLibrary.simpleMessage(
      "The customer will be responsible to pay the cost of repairs in case of any damages to the car",
    ),
    "delete": MessageLookupByLibrary.simpleMessage("Delete"),
    "deleteAccount": MessageLookupByLibrary.simpleMessage("Delete Account"),
    "deleteAccountMsg": MessageLookupByLibrary.simpleMessage(
      "Are you sure you want to Delete Account?",
    ),
    "delete_payment": MessageLookupByLibrary.simpleMessage("Delete Payment"),
    "delete_payment_confirmation": MessageLookupByLibrary.simpleMessage(
      "Are you sure you want to delete this payment? This action cannot be undone.",
    ),
    "delivery": MessageLookupByLibrary.simpleMessage("Delivery"),
    "delivery_amount": MessageLookupByLibrary.simpleMessage("Delivery Amount"),
    "delivery_within_2_hours": MessageLookupByLibrary.simpleMessage(
      "Delivery Within 2 Hours",
    ),
    "delivery_within_2_hours_desc": MessageLookupByLibrary.simpleMessage(
      "Receive the car easily at your place and return it to the nearest branch or request the return service",
    ),
    "department": MessageLookupByLibrary.simpleMessage("Department"),
    "describe_the_damage": MessageLookupByLibrary.simpleMessage(
      "Describe the damage",
    ),
    "determineTheCurrentLocation": MessageLookupByLibrary.simpleMessage(
      "Determine the current location",
    ),
    "direct_cash_payment": MessageLookupByLibrary.simpleMessage(
      "Direct cash payment",
    ),
    "discount": MessageLookupByLibrary.simpleMessage("Discount"),
    "disscountCodes": MessageLookupByLibrary.simpleMessage("Disscount Codes"),
    "documents": MessageLookupByLibrary.simpleMessage("Documents"),
    "done": MessageLookupByLibrary.simpleMessage("Done"),
    "dontHaveAnyAccount": MessageLookupByLibrary.simpleMessage(
      "Don\'t have any account?",
    ),
    "download_failed": MessageLookupByLibrary.simpleMessage("Download failed"),
    "download_report": MessageLookupByLibrary.simpleMessage("Download Report"),
    "drop_off_location_and_time": MessageLookupByLibrary.simpleMessage(
      "Drop-off location and time",
    ),
    "edit": MessageLookupByLibrary.simpleMessage("Edit"),
    "editProfile": MessageLookupByLibrary.simpleMessage("Edit Profile"),
    "editTrip": MessageLookupByLibrary.simpleMessage("Edit Trip"),
    "edit_customer": MessageLookupByLibrary.simpleMessage("Edit Customer"),
    "edit_phone_number": MessageLookupByLibrary.simpleMessage(
      "Edit phone Number",
    ),
    "editing_customer": MessageLookupByLibrary.simpleMessage(
      "Editing Customer",
    ),
    "education": MessageLookupByLibrary.simpleMessage("Education"),
    "email": MessageLookupByLibrary.simpleMessage("E-mail"),
    "email_": MessageLookupByLibrary.simpleMessage("Email *"),
    "email_address": MessageLookupByLibrary.simpleMessage("Email Address"),
    "email_address_required": MessageLookupByLibrary.simpleMessage(
      "Email Address *",
    ),
    "email_hint": MessageLookupByLibrary.simpleMessage("Enter the email"),
    "en": MessageLookupByLibrary.simpleMessage("English"),
    "engine_capacity": MessageLookupByLibrary.simpleMessage(
      "Engine Capacity *",
    ),
    "engine_number": MessageLookupByLibrary.simpleMessage("Engine Number *"),
    "engine_number_required": MessageLookupByLibrary.simpleMessage(
      "Engine Number *",
    ),
    "english": MessageLookupByLibrary.simpleMessage("English"),
    "enter": MessageLookupByLibrary.simpleMessage("Enter"),
    "enterValidEmail": MessageLookupByLibrary.simpleMessage(
      "Enter a valid email address",
    ),
    "enterValidPhone": MessageLookupByLibrary.simpleMessage(
      "Enter a valid phone number",
    ),
    "enter_additional_information": MessageLookupByLibrary.simpleMessage(
      "Enter additional information",
    ),
    "enter_cheque_number": MessageLookupByLibrary.simpleMessage(
      "Enter cheque number",
    ),
    "enter_code_vehicle_name": MessageLookupByLibrary.simpleMessage(
      "Enter code vehicle name *",
    ),
    "enter_contact_details": MessageLookupByLibrary.simpleMessage(
      "Enter contact details",
    ),
    "enter_cost": MessageLookupByLibrary.simpleMessage("Enter cost"),
    "enter_customers_address": MessageLookupByLibrary.simpleMessage(
      "Enter customer\'s address",
    ),
    "enter_customers_email": MessageLookupByLibrary.simpleMessage(
      "Enter customer\'s email",
    ),
    "enter_customers_full_name": MessageLookupByLibrary.simpleMessage(
      "Enter customer\'s full name",
    ),
    "enter_data_to_create_account": MessageLookupByLibrary.simpleMessage(
      "Enter your data to create your account",
    ),
    "enter_driving_license_number": MessageLookupByLibrary.simpleMessage(
      "Enter driving license number",
    ),
    "enter_identity_passport_number": MessageLookupByLibrary.simpleMessage(
      "Enter identity/passport number",
    ),
    "enter_kilometer": MessageLookupByLibrary.simpleMessage("Enter Kilometer"),
    "enter_kilometer_required": MessageLookupByLibrary.simpleMessage(
      "Enter Kilometer *",
    ),
    "enter_license_information": MessageLookupByLibrary.simpleMessage(
      "Enter license information",
    ),
    "enter_new_password_info": MessageLookupByLibrary.simpleMessage(
      "Enter a new password, making sure that the password is not your name, email, or phone number",
    ),
    "enter_notes": MessageLookupByLibrary.simpleMessage(
      "Enter inspection notes",
    ),
    "enter_payment_amount": MessageLookupByLibrary.simpleMessage(
      "Enter payment amount",
    ),
    "enter_payment_details_for_contract": MessageLookupByLibrary.simpleMessage(
      "Enter payment details for contract",
    ),
    "enter_personal_information": MessageLookupByLibrary.simpleMessage(
      "Enter personal information",
    ),
    "enter_phone_for_otp": MessageLookupByLibrary.simpleMessage(
      "Enter your phone number so you can receive an OTP Code to reset Password",
    ),
    "enter_place_license_issued": MessageLookupByLibrary.simpleMessage(
      "Enter place where license was issued",
    ),
    "enter_verification_code": MessageLookupByLibrary.simpleMessage(
      "Enter the verification code to change the password!",
    ),
    "error_generating_file": MessageLookupByLibrary.simpleMessage(
      "Error generating file",
    ),
    "error_occurred_while_processing_the_data_received_from_the_server_message":
        MessageLookupByLibrary.simpleMessage(
          "An error occurred while processing the data received from the server, as expected in the application",
        ),
    "excel_spreadsheet": MessageLookupByLibrary.simpleMessage(
      "Excel Spreadsheet",
    ),
    "expand_details": MessageLookupByLibrary.simpleMessage("Expand Details"),
    "expectation_failed_417_message": MessageLookupByLibrary.simpleMessage(
      "The server cannot meet the requirements of the Expect header field",
    ),
    "expenses": MessageLookupByLibrary.simpleMessage("Expenses"),
    "expiry_date": MessageLookupByLibrary.simpleMessage("Expiry Date"),
    "expiry_date_required": MessageLookupByLibrary.simpleMessage(
      "Expiry Date *",
    ),
    "export_customer_data": MessageLookupByLibrary.simpleMessage(
      "Export Customer Data",
    ),
    "export_inspections": MessageLookupByLibrary.simpleMessage(
      "Export Inspections",
    ),
    "exterior_features": MessageLookupByLibrary.simpleMessage(
      "Exterior Features *",
    ),
    "external_color": MessageLookupByLibrary.simpleMessage("External Color *"),
    "extra_day_content": MessageLookupByLibrary.simpleMessage(
      "Extending your rental by an hour after pickup will cost an extra day. ",
    ),
    "extra_day_title": MessageLookupByLibrary.simpleMessage("alert"),
    "eye_color": MessageLookupByLibrary.simpleMessage("Eye Color"),
    "failed": MessageLookupByLibrary.simpleMessage("Failed"),
    "failed_dependency_424_message": MessageLookupByLibrary.simpleMessage(
      "The server encountered a failure while attempting to fulfill the request",
    ),
    "failed_inspections": MessageLookupByLibrary.simpleMessage("Failed"),
    "failed_items": MessageLookupByLibrary.simpleMessage("Failed"),
    "failed_to_generate_file": MessageLookupByLibrary.simpleMessage(
      "Failed to generate file. Please try again.",
    ),
    "fieldCantBeEmpty": MessageLookupByLibrary.simpleMessage(
      "Field can\'t be empty!",
    ),
    "file_generated_successfully": m8,
    "file_saved_successfully": MessageLookupByLibrary.simpleMessage(
      "File saved successfully",
    ),
    "fill_test_data": MessageLookupByLibrary.simpleMessage("Fill Test Data"),
    "fill_with_test_credentials": MessageLookupByLibrary.simpleMessage(
      "Fill with test credentials",
    ),
    "filter_advanced_filter": MessageLookupByLibrary.simpleMessage(
      "Advanced Filter",
    ),
    "filter_apply_filters": MessageLookupByLibrary.simpleMessage(
      "Apply Filters",
    ),
    "filter_available": MessageLookupByLibrary.simpleMessage("Available"),
    "filter_by": MessageLookupByLibrary.simpleMessage("Filter by"),
    "filter_clear_all": MessageLookupByLibrary.simpleMessage("Clear All"),
    "filter_company": MessageLookupByLibrary.simpleMessage("Company"),
    "filter_date_placeholder": MessageLookupByLibrary.simpleMessage(
      "dd/mm/yyyy",
    ),
    "filter_filters_active": m9,
    "filter_from": MessageLookupByLibrary.simpleMessage("From"),
    "filter_gender": MessageLookupByLibrary.simpleMessage("Gender"),
    "filter_inspections": MessageLookupByLibrary.simpleMessage(
      "Filter Inspections",
    ),
    "filter_nationality": MessageLookupByLibrary.simpleMessage("Nationality"),
    "filter_search_company": MessageLookupByLibrary.simpleMessage(
      "Search Company...",
    ),
    "filter_search_gender": MessageLookupByLibrary.simpleMessage(
      "Search Gender...",
    ),
    "filter_search_nationality": MessageLookupByLibrary.simpleMessage(
      "Search Nationality...",
    ),
    "filter_to": MessageLookupByLibrary.simpleMessage("To"),
    "filter_unavailable": MessageLookupByLibrary.simpleMessage("UnAvailable"),
    "filter_whatsapp_status": MessageLookupByLibrary.simpleMessage(
      "WhatsApp Status",
    ),
    "filters_applied": MessageLookupByLibrary.simpleMessage("Filters Applied"),
    "filters_applied_count": m10,
    "filters_cleared": MessageLookupByLibrary.simpleMessage("Filters cleared"),
    "first_immatriculation_year": MessageLookupByLibrary.simpleMessage(
      "Year of First Immatriculation *",
    ),
    "first_name": MessageLookupByLibrary.simpleMessage("First Name"),
    "first_name_hint": MessageLookupByLibrary.simpleMessage(
      "Enter the first name",
    ),
    "forbidden_403_message": MessageLookupByLibrary.simpleMessage(
      "The server refuses to authorize the request",
    ),
    "forgetPassword": MessageLookupByLibrary.simpleMessage("Forget Password!"),
    "forgot_your_password": MessageLookupByLibrary.simpleMessage(
      "Forgot your password?",
    ),
    "found_302_message": MessageLookupByLibrary.simpleMessage(
      "Resource temporarily moved",
    ),
    "frequently_asked_questions": MessageLookupByLibrary.simpleMessage(
      "Frequently Asked Questions",
    ),
    "front": MessageLookupByLibrary.simpleMessage("Front"),
    "fuel_type": MessageLookupByLibrary.simpleMessage("Fuel Type *"),
    "full_name": MessageLookupByLibrary.simpleMessage("Full Name"),
    "full_name_required": MessageLookupByLibrary.simpleMessage("Full Name *"),
    "fully_paid": MessageLookupByLibrary.simpleMessage("Fully Paid"),
    "gallery": MessageLookupByLibrary.simpleMessage("Gallery"),
    "gateway_timeout_504_message": MessageLookupByLibrary.simpleMessage(
      "The server acting as a gateway or proxy timed out waiting for a response from the upstream server",
    ),
    "gender": MessageLookupByLibrary.simpleMessage("Gender"),
    "general": MessageLookupByLibrary.simpleMessage("General"),
    "generate": MessageLookupByLibrary.simpleMessage("Generate"),
    "generating": MessageLookupByLibrary.simpleMessage("Generating..."),
    "generating_pdf": MessageLookupByLibrary.simpleMessage("Generating PDF..."),
    "getDisscountCode": MessageLookupByLibrary.simpleMessage(
      "Get Disscount Code",
    ),
    "gone_410_message": MessageLookupByLibrary.simpleMessage(
      "The requested resource is no longer available and has been permanently removed",
    ),
    "government": MessageLookupByLibrary.simpleMessage("Government *"),
    "guest_body_msg": MessageLookupByLibrary.simpleMessage(
      "Please Sign in first to View this Page",
    ),
    "guest_title_msg": MessageLookupByLibrary.simpleMessage("Please"),
    "hair_color": MessageLookupByLibrary.simpleMessage("Hair Color"),
    "hair_type": MessageLookupByLibrary.simpleMessage("Hair Type"),
    "have_whatsapp_same_number": MessageLookupByLibrary.simpleMessage(
      "Have WhatsApp in same Number?",
    ),
    "height": MessageLookupByLibrary.simpleMessage("Height"),
    "hello_user": m11,
    "help_and_support": MessageLookupByLibrary.simpleMessage("Help & Support"),
    "hintAddress": MessageLookupByLibrary.simpleMessage("Enter your Address"),
    "hintEmail": MessageLookupByLibrary.simpleMessage("Enter your Email"),
    "hintLoginPassword": MessageLookupByLibrary.simpleMessage("Your Password"),
    "hintLoginPhoneNumber": MessageLookupByLibrary.simpleMessage(
      "Phone Number",
    ),
    "hintName": MessageLookupByLibrary.simpleMessage("Your Name"),
    "hint_login_name": MessageLookupByLibrary.simpleMessage("Enter your name"),
    "home": MessageLookupByLibrary.simpleMessage("Home"),
    "home_page_app_bar_title": m12,
    "home_page_correspondence": MessageLookupByLibrary.simpleMessage(
      "Correspondence (car documents - accidents - bank transfers - letters and inquiries).",
    ),
    "home_page_fleet": MessageLookupByLibrary.simpleMessage("Car fleet"),
    "home_page_offer": MessageLookupByLibrary.simpleMessage(
      "Offers and rewards",
    ),
    "home_page_partner": MessageLookupByLibrary.simpleMessage(
      "Join as a Partner",
    ),
    "home_page_reservations": MessageLookupByLibrary.simpleMessage(
      "New Reservation",
    ),
    "how_are_you_today": MessageLookupByLibrary.simpleMessage(
      "How are you today!",
    ),
    "http_version_not_supported_505_message":
        MessageLookupByLibrary.simpleMessage(
          "The requested HTTP version is not supported by the server",
        ),
    "idNumber": MessageLookupByLibrary.simpleMessage("ID Number"),
    "id_card_back": MessageLookupByLibrary.simpleMessage("ID Card (Back Side)"),
    "id_card_back_required": MessageLookupByLibrary.simpleMessage(
      "ID Card (Back) *",
    ),
    "id_card_front": MessageLookupByLibrary.simpleMessage(
      "ID Card (Front Side)",
    ),
    "id_card_front_required": MessageLookupByLibrary.simpleMessage(
      "ID Card (Front) *",
    ),
    "identity_number": MessageLookupByLibrary.simpleMessage("Identity Number"),
    "identity_number_required": MessageLookupByLibrary.simpleMessage(
      "Identity Number *",
    ),
    "image": MessageLookupByLibrary.simpleMessage("Image"),
    "image_png": MessageLookupByLibrary.simpleMessage("Image (PNG)"),
    "in_progress": MessageLookupByLibrary.simpleMessage("In Progress"),
    "income": MessageLookupByLibrary.simpleMessage("Income"),
    "incoming_date": MessageLookupByLibrary.simpleMessage("Incoming Date"),
    "incoming_details": MessageLookupByLibrary.simpleMessage(
      "Incoming Details",
    ),
    "incoming_details_title": MessageLookupByLibrary.simpleMessage(
      "Incoming Details",
    ),
    "info_notification": MessageLookupByLibrary.simpleMessage("Info"),
    "inspected_by": MessageLookupByLibrary.simpleMessage("Inspected By"),
    "inspection": MessageLookupByLibrary.simpleMessage("Inspection"),
    "inspection_by": MessageLookupByLibrary.simpleMessage("Inspection By"),
    "inspection_by_required": MessageLookupByLibrary.simpleMessage(
      "Inspection By *",
    ),
    "inspection_checklist_subtitle": MessageLookupByLibrary.simpleMessage(
      "Check each item and provide details for any issues found",
    ),
    "inspection_checklist_summary": MessageLookupByLibrary.simpleMessage(
      "Inspection Summary",
    ),
    "inspection_completed": MessageLookupByLibrary.simpleMessage(
      "Inspection Completed",
    ),
    "inspection_date": MessageLookupByLibrary.simpleMessage("Inspection Date"),
    "inspection_details": MessageLookupByLibrary.simpleMessage(
      "Inspection Details",
    ),
    "inspection_form": MessageLookupByLibrary.simpleMessage("Inspection Form"),
    "inspection_item": MessageLookupByLibrary.simpleMessage("Inspection Item"),
    "inspection_item_status": MessageLookupByLibrary.simpleMessage("Status"),
    "inspection_list": MessageLookupByLibrary.simpleMessage("Inspection List"),
    "inspection_management": MessageLookupByLibrary.simpleMessage(
      "Inspection Management",
    ),
    "inspection_notes": MessageLookupByLibrary.simpleMessage(
      "Inspection Notes",
    ),
    "inspection_overview": MessageLookupByLibrary.simpleMessage(
      "Inspection Overview",
    ),
    "inspection_performed_by": MessageLookupByLibrary.simpleMessage(
      "Inspection By",
    ),
    "inspection_status": MessageLookupByLibrary.simpleMessage(
      "Inspection Status",
    ),
    "inspection_status_pending": MessageLookupByLibrary.simpleMessage(
      "Pending Review",
    ),
    "inspection_summary": MessageLookupByLibrary.simpleMessage("Summary"),
    "inspections": MessageLookupByLibrary.simpleMessage("Inspections"),
    "inspections_checklist": MessageLookupByLibrary.simpleMessage(
      "Inspections Checklist",
    ),
    "inspections_found": MessageLookupByLibrary.simpleMessage(
      "inspections found",
    ),
    "inspector_info": MessageLookupByLibrary.simpleMessage(
      "Inspector Information",
    ),
    "inspector_information": MessageLookupByLibrary.simpleMessage(
      "Inspector Information",
    ),
    "insufficient_storage_507_message": MessageLookupByLibrary.simpleMessage(
      "The server is unable to store the representation needed to complete the request",
    ),
    "insuranceCertificate": MessageLookupByLibrary.simpleMessage(
      "Insurance Certificate",
    ),
    "insurance_company": MessageLookupByLibrary.simpleMessage(
      "Insurance Company *",
    ),
    "insurance_expiry": MessageLookupByLibrary.simpleMessage(
      "Insurance Expiry",
    ),
    "insurance_expiry_date": MessageLookupByLibrary.simpleMessage(
      "Insurance Expiry Date *",
    ),
    "insurance_type": MessageLookupByLibrary.simpleMessage("Insurance Type"),
    "interior_features": MessageLookupByLibrary.simpleMessage(
      "Interior Features *",
    ),
    "internal_color": MessageLookupByLibrary.simpleMessage("Internal Color *"),
    "internal_server_error_500_message": MessageLookupByLibrary.simpleMessage(
      "The server encountered an error while processing the request",
    ),
    "intial": MessageLookupByLibrary.simpleMessage("Initial"),
    "issue_date": MessageLookupByLibrary.simpleMessage("Issue Date"),
    "issue_date_required": MessageLookupByLibrary.simpleMessage("Issue Date *"),
    "items_checked": MessageLookupByLibrary.simpleMessage("Items Checked"),
    "kilometers": MessageLookupByLibrary.simpleMessage("Kilometers"),
    "km_unit": MessageLookupByLibrary.simpleMessage("Km"),
    "knowMore": MessageLookupByLibrary.simpleMessage("Know More"),
    "language": MessageLookupByLibrary.simpleMessage("Language"),
    "last_month": MessageLookupByLibrary.simpleMessage("Last Month"),
    "last_name": MessageLookupByLibrary.simpleMessage("Last Name"),
    "last_name_hint": MessageLookupByLibrary.simpleMessage(
      "Enter the last name",
    ),
    "learnMore": MessageLookupByLibrary.simpleMessage("Learn More >"),
    "learn_more": MessageLookupByLibrary.simpleMessage("Learn more >"),
    "length_required_411_message": MessageLookupByLibrary.simpleMessage(
      "The request did not specify the length of its content, which is required by the requested resource",
    ),
    "license_back": MessageLookupByLibrary.simpleMessage("License (Back Side)"),
    "license_back_image_required": MessageLookupByLibrary.simpleMessage(
      "License Back Image *",
    ),
    "license_back_required": MessageLookupByLibrary.simpleMessage(
      "License (Back) *",
    ),
    "license_expiry": MessageLookupByLibrary.simpleMessage("License Expiry"),
    "license_front": MessageLookupByLibrary.simpleMessage(
      "License (Front Side)",
    ),
    "license_front_image_required": MessageLookupByLibrary.simpleMessage(
      "License Front Image *",
    ),
    "license_front_required": MessageLookupByLibrary.simpleMessage(
      "License (Front) *",
    ),
    "license_info": MessageLookupByLibrary.simpleMessage("License Info"),
    "license_information": MessageLookupByLibrary.simpleMessage(
      "License Information",
    ),
    "license_number": MessageLookupByLibrary.simpleMessage("License Number"),
    "license_number_required": MessageLookupByLibrary.simpleMessage(
      "License Number *",
    ),
    "license_plate": MessageLookupByLibrary.simpleMessage("License Plate *"),
    "licensesId": MessageLookupByLibrary.simpleMessage("Licenses ID"),
    "linkValidationText": MessageLookupByLibrary.simpleMessage(
      "The links must start with http:// or https://",
    ),
    "loading_inspection_details": MessageLookupByLibrary.simpleMessage(
      "Loading inspection details...",
    ),
    "location_permission_need": MessageLookupByLibrary.simpleMessage(
      "We need permission to access the site. Please go to settings and grant permission, and then click on Activate",
    ),
    "locations": MessageLookupByLibrary.simpleMessage("Locations"),
    "locked_423_message": MessageLookupByLibrary.simpleMessage(
      "The requested resource is locked and may not be modified",
    ),
    "login": MessageLookupByLibrary.simpleMessage("Login"),
    "logout": MessageLookupByLibrary.simpleMessage("Logout"),
    "logout_msg": MessageLookupByLibrary.simpleMessage(
      "Are you sure you want to logout?",
    ),
    "loop_detected_508_message": MessageLookupByLibrary.simpleMessage(
      "The server has detected a loop in the request processing chain, which could indicate a misconfiguration",
    ),
    "loyalityAndRewards": MessageLookupByLibrary.simpleMessage(
      "Loyality And Rewards",
    ),
    "main_image_required": MessageLookupByLibrary.simpleMessage("Main Image *"),
    "maintenance_alerts": MessageLookupByLibrary.simpleMessage(
      "Maintenance alerts",
    ),
    "maintenance_due": MessageLookupByLibrary.simpleMessage("Maintenance Due"),
    "maintenance_parts_required": MessageLookupByLibrary.simpleMessage(
      "Maintenance parts *",
    ),
    "manufacture_year": MessageLookupByLibrary.simpleMessage(
      "Manufacture Year *",
    ),
    "mark_all_as_read": MessageLookupByLibrary.simpleMessage(
      "Mark All As Read",
    ),
    "mark_as_read": MessageLookupByLibrary.simpleMessage("Mark as Read"),
    "menu": MessageLookupByLibrary.simpleMessage("Menu"),
    "message": MessageLookupByLibrary.simpleMessage("Message"),
    "messageTitle": MessageLookupByLibrary.simpleMessage("Message Title"),
    "messagesAndInquiries": MessageLookupByLibrary.simpleMessage(
      "Messages and Inquiries",
    ),
    "meter_reading": MessageLookupByLibrary.simpleMessage("Meter Reading"),
    "meter_reading_km": MessageLookupByLibrary.simpleMessage(
      "Meter Reading (Km)",
    ),
    "method_not_allowed_405_message": MessageLookupByLibrary.simpleMessage(
      "The requested method is not allowed for the specified resource",
    ),
    "misdirected_request_421_message": MessageLookupByLibrary.simpleMessage(
      "The server was unable to resolve the provided hostname",
    ),
    "models": MessageLookupByLibrary.simpleMessage("Models *"),
    "modify_existing_payment_details": MessageLookupByLibrary.simpleMessage(
      "Modify existing payment details",
    ),
    "modify_payment_info": MessageLookupByLibrary.simpleMessage(
      "Modify payment information",
    ),
    "monthly_report": MessageLookupByLibrary.simpleMessage("Monthly Report"),
    "more": MessageLookupByLibrary.simpleMessage("More"),
    "more_options": MessageLookupByLibrary.simpleMessage("More Options"),
    "moved_permanently_301_message": MessageLookupByLibrary.simpleMessage(
      "Resource permanently moved",
    ),
    "multiple_choices_300_message": MessageLookupByLibrary.simpleMessage(
      "Multiple choices available",
    ),
    "my_favorites": MessageLookupByLibrary.simpleMessage("My Favorites"),
    "n_a": MessageLookupByLibrary.simpleMessage("N/A"),
    "name": MessageLookupByLibrary.simpleMessage("Name"),
    "need": m13,
    "network_authentication_required_511_message":
        MessageLookupByLibrary.simpleMessage(
          "The client needs to authenticate to gain network access",
        ),
    "network_connect_timeout_error_599_message":
        MessageLookupByLibrary.simpleMessage(
          "The request has timed out while connecting to the server. Please check your network connection and try again",
        ),
    "newPassword": MessageLookupByLibrary.simpleMessage("New Password"),
    "new_notifications": MessageLookupByLibrary.simpleMessage("New"),
    "next": MessageLookupByLibrary.simpleMessage("Next"),
    "no": MessageLookupByLibrary.simpleMessage("No"),
    "no_cost": MessageLookupByLibrary.simpleMessage("No cost"),
    "no_further_action_required": MessageLookupByLibrary.simpleMessage(
      "No further action required. Test passed.",
    ),
    "no_image": MessageLookupByLibrary.simpleMessage("No image"),
    "no_inspection_data": MessageLookupByLibrary.simpleMessage(
      "No inspection data available",
    ),
    "no_inspections_found": MessageLookupByLibrary.simpleMessage(
      "No inspections found",
    ),
    "no_item_found": MessageLookupByLibrary.simpleMessage("No data available"),
    "no_notes": MessageLookupByLibrary.simpleMessage("No notes"),
    "no_notes_available": MessageLookupByLibrary.simpleMessage(
      "No notes available",
    ),
    "no_notifications": MessageLookupByLibrary.simpleMessage(
      "No notifications found",
    ),
    "no_notifications_available": MessageLookupByLibrary.simpleMessage(
      "No notifications available",
    ),
    "no_phone": MessageLookupByLibrary.simpleMessage("No phone"),
    "not_acceptable_406_message": MessageLookupByLibrary.simpleMessage(
      "The server cannot produce a response matching the list of acceptable values defined in the request\'s headers",
    ),
    "not_extended_510_message": MessageLookupByLibrary.simpleMessage(
      "Further extensions to the request are required for the server to fulfill it",
    ),
    "not_found_404_message": MessageLookupByLibrary.simpleMessage(
      "The requested resource could not be found on the server",
    ),
    "not_implemented_error_501_message": MessageLookupByLibrary.simpleMessage(
      "The server does not support the functionality required to fulfill the request",
    ),
    "not_modified_304_message": MessageLookupByLibrary.simpleMessage(
      "The resource has not been modified since the last request",
    ),
    "not_specified": MessageLookupByLibrary.simpleMessage("Not specified"),
    "not_uploaded": MessageLookupByLibrary.simpleMessage("Not uploaded"),
    "notes": MessageLookupByLibrary.simpleMessage("Notes"),
    "notes_field": MessageLookupByLibrary.simpleMessage("Notes"),
    "notes_optional": MessageLookupByLibrary.simpleMessage("Notes (Optional)"),
    "notification": MessageLookupByLibrary.simpleMessage("Notifications"),
    "notification_date": MessageLookupByLibrary.simpleMessage(
      "Notification Date",
    ),
    "notification_date_format": m14,
    "notification_time_format": m15,
    "notification_type": MessageLookupByLibrary.simpleMessage(
      "Notification Type",
    ),
    "notification_types": MessageLookupByLibrary.simpleMessage(
      "Notification Types",
    ),
    "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
    "notifications_empty_message": MessageLookupByLibrary.simpleMessage(
      "You\'re all caught up! No new notifications.",
    ),
    "notifications_page_app_bar_title": MessageLookupByLibrary.simpleMessage(
      "Notifications",
    ),
    "number_of_cylinders": MessageLookupByLibrary.simpleMessage(
      "Number of Cylinders *",
    ),
    "offersAndRewards": MessageLookupByLibrary.simpleMessage(
      "Offers & Rewards",
    ),
    "okayIUnderstand": MessageLookupByLibrary.simpleMessage(
      "Okay i understand",
    ),
    "oldPassword": MessageLookupByLibrary.simpleMessage("Old Password"),
    "on_boarding_desc_fifth": MessageLookupByLibrary.simpleMessage(
      "With our car rental services, you can experience the ultimate convenience and freedom of exploring your destination at your own pace.",
    ),
    "on_boarding_desc_first": MessageLookupByLibrary.simpleMessage(""),
    "on_boarding_desc_fourth": MessageLookupByLibrary.simpleMessage(""),
    "on_boarding_desc_second": MessageLookupByLibrary.simpleMessage(""),
    "on_boarding_desc_third": MessageLookupByLibrary.simpleMessage(""),
    "on_boarding_title_fifth": MessageLookupByLibrary.simpleMessage(
      "Let\'s Get Started!",
    ),
    "on_boarding_title_first": MessageLookupByLibrary.simpleMessage(
      "Welcome to the App\nLease Car Super Easy here",
    ),
    "on_boarding_title_fourth": MessageLookupByLibrary.simpleMessage(
      "Secure Payments",
    ),
    "on_boarding_title_second": MessageLookupByLibrary.simpleMessage(
      "Effortless Booking",
    ),
    "on_boarding_title_third": MessageLookupByLibrary.simpleMessage(
      "Convenient Pickup and Drop-off",
    ),
    "order_booked_successfully": MessageLookupByLibrary.simpleMessage(
      "Order booked successfully",
    ),
    "order_edit_successfully": MessageLookupByLibrary.simpleMessage(
      "Order Edit successfully",
    ),
    "order_saved_successfully": MessageLookupByLibrary.simpleMessage(
      "Order Saved successfully",
    ),
    "order_status": MessageLookupByLibrary.simpleMessage("Order Status"),
    "otp": MessageLookupByLibrary.simpleMessage("OTP"),
    "otp_field_required": MessageLookupByLibrary.simpleMessage(
      "Enter Your OTP code",
    ),
    "otp_success": MessageLookupByLibrary.simpleMessage(
      "The code is correct. You will be redirected to the password change page.",
    ),
    "ownership_type": MessageLookupByLibrary.simpleMessage("Ownership Type *"),
    "paletteNumber": MessageLookupByLibrary.simpleMessage("Palette Number"),
    "partial_content_206_message": MessageLookupByLibrary.simpleMessage(
      "Partial content provided",
    ),
    "partially_paid": MessageLookupByLibrary.simpleMessage("Partially Paid"),
    "partner_page_branch_number_field": MessageLookupByLibrary.simpleMessage(
      "Number of Branches",
    ),
    "partner_page_car_number_field": MessageLookupByLibrary.simpleMessage(
      "Number of Cars",
    ),
    "partner_page_cars_type_field": MessageLookupByLibrary.simpleMessage(
      "Types of Cars",
    ),
    "partner_page_city_number_field": MessageLookupByLibrary.simpleMessage(
      "Number of Cities",
    ),
    "partner_page_company_name_field": MessageLookupByLibrary.simpleMessage(
      "Company Name",
    ),
    "partner_page_contract_field": MessageLookupByLibrary.simpleMessage(
      "Phone Number",
    ),
    "partner_page_email_field": MessageLookupByLibrary.simpleMessage("Email"),
    "partner_page_license_image_field": MessageLookupByLibrary.simpleMessage(
      "License photo",
    ),
    "partner_page_license_number_field": MessageLookupByLibrary.simpleMessage(
      "Authority license number",
    ),
    "partner_page_msg_success_partner": MessageLookupByLibrary.simpleMessage(
      "Your request has been received and is currently under review. You will be notified of any updates.",
    ),
    "partner_page_official_field": MessageLookupByLibrary.simpleMessage(
      "Administrator Name",
    ),
    "partner_page_partner_type_field": MessageLookupByLibrary.simpleMessage(
      "Type of Partner",
    ),
    "partner_page_register_image_field": MessageLookupByLibrary.simpleMessage(
      "Commercial register photo",
    ),
    "partner_page_register_number_field": MessageLookupByLibrary.simpleMessage(
      "Commercial register",
    ),
    "partner_page_submit_btn": MessageLookupByLibrary.simpleMessage(
      "Submit a request to join",
    ),
    "partner_page_title": MessageLookupByLibrary.simpleMessage(
      "To request to join as a partner in the ON application, please provide us with the following data",
    ),
    "pass": MessageLookupByLibrary.simpleMessage("Pass"),
    "passed": MessageLookupByLibrary.simpleMessage("Passed"),
    "passed_items": MessageLookupByLibrary.simpleMessage("Passed"),
    "passport_image": MessageLookupByLibrary.simpleMessage("Passport Image"),
    "passport_image_optional": MessageLookupByLibrary.simpleMessage(
      "Passport Image (Optional)",
    ),
    "password": MessageLookupByLibrary.simpleMessage("Password"),
    "passwordMustBe": MessageLookupByLibrary.simpleMessage(
      "Password must be at least 8 characters",
    ),
    "password_hint": MessageLookupByLibrary.simpleMessage("Enter the password"),
    "password_recovery": MessageLookupByLibrary.simpleMessage(
      "Password recovery?",
    ),
    "pastTrips": MessageLookupByLibrary.simpleMessage("Past Reservations"),
    "payNow": MessageLookupByLibrary.simpleMessage("Pay Now"),
    "payment_by_check_or_cheque": MessageLookupByLibrary.simpleMessage(
      "Payment by check or cheque",
    ),
    "payment_date": MessageLookupByLibrary.simpleMessage("Payment Date"),
    "payment_management": MessageLookupByLibrary.simpleMessage(
      "Payment Management",
    ),
    "payment_method": MessageLookupByLibrary.simpleMessage("Payment Method"),
    "payment_number": MessageLookupByLibrary.simpleMessage("Payment Number"),
    "payment_required_402_message": MessageLookupByLibrary.simpleMessage(
      "Payment is required to complete this action. Please make sure your payment information is up to date and try again",
    ),
    "payment_status": MessageLookupByLibrary.simpleMessage("Payment Status"),
    "payment_type": MessageLookupByLibrary.simpleMessage("Payment Type"),
    "payments": MessageLookupByLibrary.simpleMessage("Payments"),
    "pdf_document": MessageLookupByLibrary.simpleMessage("PDF Document"),
    "pdf_downloaded": MessageLookupByLibrary.simpleMessage(
      "PDF downloaded successfully",
    ),
    "pdf_shared": MessageLookupByLibrary.simpleMessage(
      "PDF shared successfully",
    ),
    "pending": MessageLookupByLibrary.simpleMessage("Pending"),
    "pending_inspections": MessageLookupByLibrary.simpleMessage("Pending"),
    "permanent_redirect_308_message": MessageLookupByLibrary.simpleMessage(
      "The requested resource has been permanently moved to a different URI",
    ),
    "personal_info": MessageLookupByLibrary.simpleMessage("Personal Info"),
    "personal_information": MessageLookupByLibrary.simpleMessage(
      "Personal Information",
    ),
    "phone": MessageLookupByLibrary.simpleMessage("Phone"),
    "phoneNumber": MessageLookupByLibrary.simpleMessage("Phone Number"),
    "phone_number": MessageLookupByLibrary.simpleMessage("Phone number"),
    "physical_information": MessageLookupByLibrary.simpleMessage(
      "Physical Information",
    ),
    "pick_source": MessageLookupByLibrary.simpleMessage("Pick Source"),
    "pick_source_description": MessageLookupByLibrary.simpleMessage(
      "You can either capture a photo using your device\'s camera or select an existing image from your gallery to use.",
    ),
    "pickup_date": MessageLookupByLibrary.simpleMessage("Pickup Date"),
    "pickup_date_must_be_before_returned_date":
        MessageLookupByLibrary.simpleMessage(
          "Pickup date must be before returned date",
        ),
    "pickup_date_time": MessageLookupByLibrary.simpleMessage(
      "Pickup Date / Time",
    ),
    "pickup_location": MessageLookupByLibrary.simpleMessage("Pickup Location"),
    "pickup_location_and_time": MessageLookupByLibrary.simpleMessage(
      "Pickup location and time",
    ),
    "pickup_time": MessageLookupByLibrary.simpleMessage("Pickup Time"),
    "place_of_issue": MessageLookupByLibrary.simpleMessage("Place of Issue"),
    "place_of_issue_required": MessageLookupByLibrary.simpleMessage(
      "Place of Issue *",
    ),
    "please": MessageLookupByLibrary.simpleMessage("Please"),
    "pleaseSignInToProcess": MessageLookupByLibrary.simpleMessage(
      "Please Sign in to process",
    ),
    "please_provide_cost_and_description": MessageLookupByLibrary.simpleMessage(
      "Please provide cost and damage description.",
    ),
    "please_register_first_to_complete_this_process":
        MessageLookupByLibrary.simpleMessage(
          "Please register first to complete this process",
        ),
    "please_select_customer_to_delete": MessageLookupByLibrary.simpleMessage(
      "Please select a customer to delete",
    ),
    "please_select_customers_to_download": MessageLookupByLibrary.simpleMessage(
      "Please select customers to download",
    ),
    "please_sign_in_to_your_account": MessageLookupByLibrary.simpleMessage(
      "Please sign in to your account",
    ),
    "point_camera_at_user": MessageLookupByLibrary.simpleMessage(
      "Point the camera at the user",
    ),
    "point_camera_or_enter_code": MessageLookupByLibrary.simpleMessage(
      "Point the camera at the user\'s code or enter the code manually.",
    ),
    "postal_code": MessageLookupByLibrary.simpleMessage("Postal Code"),
    "precondition_failed_412_message": MessageLookupByLibrary.simpleMessage(
      "The server does not meet one of the preconditions that the requester put on the request",
    ),
    "precondition_required_428_message": MessageLookupByLibrary.simpleMessage(
      "The server requires the request to be conditional",
    ),
    "previous": MessageLookupByLibrary.simpleMessage("Previous"),
    "primary_phone": MessageLookupByLibrary.simpleMessage("Primary Phone"),
    "privacyAndPolicy": MessageLookupByLibrary.simpleMessage(
      "Privacy And Policy",
    ),
    "privacy_policy": MessageLookupByLibrary.simpleMessage("Privacy Policy"),
    "processing_102_message": MessageLookupByLibrary.simpleMessage(
      "Processing request",
    ),
    "professional_report_format": MessageLookupByLibrary.simpleMessage(
      "Professional report format",
    ),
    "profile": MessageLookupByLibrary.simpleMessage("Profile"),
    "progress_fail_message": MessageLookupByLibrary.simpleMessage(
      "Failed Process",
    ),
    "progress_success_message": MessageLookupByLibrary.simpleMessage(
      "Success Process",
    ),
    "proxy_authentication_required_407_message":
        MessageLookupByLibrary.simpleMessage(
          "The client must first authenticate itself with the proxy",
        ),
    "purchase_price": MessageLookupByLibrary.simpleMessage("Purchase Price"),
    "quick_actions": MessageLookupByLibrary.simpleMessage("Quick Actions"),
    "read_more": MessageLookupByLibrary.simpleMessage("Read More"),
    "ready_to_login": MessageLookupByLibrary.simpleMessage(
      "Ready to login with test credentials",
    ),
    "receipt": MessageLookupByLibrary.simpleMessage("Receipt"),
    "receiptFrom": MessageLookupByLibrary.simpleMessage("Receipt From"),
    "receiptOn": MessageLookupByLibrary.simpleMessage("Receipt On"),
    "receive_timeout_message": MessageLookupByLibrary.simpleMessage(
      "Receiving response timed out. Please try again",
    ),
    "recent_activities": MessageLookupByLibrary.simpleMessage(
      "Recent Activities",
    ),
    "refresh_data": MessageLookupByLibrary.simpleMessage("Refresh Data"),
    "refund_police": MessageLookupByLibrary.simpleMessage("Refund Policy"),
    "regional_specification": MessageLookupByLibrary.simpleMessage(
      "Regional Specification *",
    ),
    "registration": MessageLookupByLibrary.simpleMessage("Registration"),
    "registration_expiry_date": MessageLookupByLibrary.simpleMessage(
      "Registration Expiry Date *",
    ),
    "remaining_amount": MessageLookupByLibrary.simpleMessage(
      "Remaining Amount",
    ),
    "rememberMe": MessageLookupByLibrary.simpleMessage("Remember me"),
    "remember_me": MessageLookupByLibrary.simpleMessage("Remember me"),
    "reminder_notification": MessageLookupByLibrary.simpleMessage("Reminder"),
    "remove_payment_permanently": MessageLookupByLibrary.simpleMessage(
      "Remove payment permanently",
    ),
    "rental_cost_per_day": MessageLookupByLibrary.simpleMessage(
      "Rental Cost Per Day",
    ),
    "rental_days": MessageLookupByLibrary.simpleMessage("Rental Days"),
    "rental_period": MessageLookupByLibrary.simpleMessage("Rental Period"),
    "repair_status": MessageLookupByLibrary.simpleMessage("Repair Status"),
    "reports": MessageLookupByLibrary.simpleMessage("Reports"),
    "requestEntity_tooLarge_413_message": MessageLookupByLibrary.simpleMessage(
      "The request is larger than the server is willing or able to process",
    ),
    "requestUri_tooLong_414_message": MessageLookupByLibrary.simpleMessage(
      "The URI provided in the request is too long for the server to process",
    ),
    "request_header_fields_too_large_431_message":
        MessageLookupByLibrary.simpleMessage(
          "The server is unwilling to process the request because its header fields are too large",
        ),
    "request_timeout_408_message": MessageLookupByLibrary.simpleMessage(
      "The server timed out waiting for the request",
    ),
    "requested_range_not_satisfiable_416_message":
        MessageLookupByLibrary.simpleMessage(
          "The requested range cannot be provided by the server",
        ),
    "required_field": MessageLookupByLibrary.simpleMessage(
      "This field is required",
    ),
    "resend": MessageLookupByLibrary.simpleMessage("Resend"),
    "resendIn": MessageLookupByLibrary.simpleMessage("Resend In"),
    "resendOtp": MessageLookupByLibrary.simpleMessage("Resend OTP"),
    "resend_code_in": m16,
    "reservations_management": MessageLookupByLibrary.simpleMessage(
      "Reservations Management",
    ),
    "reset_content_205_message": MessageLookupByLibrary.simpleMessage(
      "Request successful, document reset",
    ),
    "resident": MessageLookupByLibrary.simpleMessage("Resident"),
    "returned_date": MessageLookupByLibrary.simpleMessage("Returned Date"),
    "returned_date_must_be_after_pickup_date":
        MessageLookupByLibrary.simpleMessage(
          "Returned date must be after pickup date",
        ),
    "returned_date_time": MessageLookupByLibrary.simpleMessage(
      "Returned Date / Time",
    ),
    "returned_location": MessageLookupByLibrary.simpleMessage(
      "Returned Location",
    ),
    "returned_time": MessageLookupByLibrary.simpleMessage("Returned Time"),
    "sar": MessageLookupByLibrary.simpleMessage("SAR"),
    "save": MessageLookupByLibrary.simpleMessage("Save"),
    "save_customer": MessageLookupByLibrary.simpleMessage("Save Customer"),
    "save_failed": MessageLookupByLibrary.simpleMessage("Save failed"),
    "save_report": MessageLookupByLibrary.simpleMessage("Save Report"),
    "save_to_files": MessageLookupByLibrary.simpleMessage("Save to Files"),
    "search_any_city": MessageLookupByLibrary.simpleMessage("Search any city"),
    "search_anything": MessageLookupByLibrary.simpleMessage(
      "Search anything...",
    ),
    "search_customers_placeholder": MessageLookupByLibrary.simpleMessage(
      "Search customers by name, email, phone, company...",
    ),
    "search_inspections": MessageLookupByLibrary.simpleMessage(
      "Search inspections...",
    ),
    "search_placeholder": MessageLookupByLibrary.simpleMessage(
      "Search by name, phone, or email...",
    ),
    "searching_for": m17,
    "seats_count": MessageLookupByLibrary.simpleMessage("Seats Count *"),
    "see_other_303_message": MessageLookupByLibrary.simpleMessage(
      "Response found under different URI",
    ),
    "selectService": MessageLookupByLibrary.simpleMessage("Select Service"),
    "select_associated_company": MessageLookupByLibrary.simpleMessage(
      "Select associated company",
    ),
    "select_contract": MessageLookupByLibrary.simpleMessage(
      "Select the rental contract",
    ),
    "select_country": MessageLookupByLibrary.simpleMessage("Select Country"),
    "select_country_required": MessageLookupByLibrary.simpleMessage(
      "Select Country *",
    ),
    "select_customer_classification": MessageLookupByLibrary.simpleMessage(
      "Select customer classification",
    ),
    "select_gender": MessageLookupByLibrary.simpleMessage("Select Gender"),
    "select_gender_required": MessageLookupByLibrary.simpleMessage(
      "Select Gender *",
    ),
    "select_inspector": MessageLookupByLibrary.simpleMessage(
      "Select the inspector",
    ),
    "select_language": MessageLookupByLibrary.simpleMessage("Select language"),
    "select_license_expiry_date": MessageLookupByLibrary.simpleMessage(
      "Select license expiry date",
    ),
    "select_license_issue_date": MessageLookupByLibrary.simpleMessage(
      "Select license issue date",
    ),
    "select_location": MessageLookupByLibrary.simpleMessage(
      "Please select a location",
    ),
    "select_payment_method": MessageLookupByLibrary.simpleMessage(
      "Select payment method",
    ),
    "select_vehicle": MessageLookupByLibrary.simpleMessage(
      "Select a vehicle for inspection",
    ),
    "select_working_status": MessageLookupByLibrary.simpleMessage(
      "Select working status",
    ),
    "send_timeout_message": MessageLookupByLibrary.simpleMessage(
      " Sending request timed out. Please try again",
    ),
    "service_unavailable_503_message": MessageLookupByLibrary.simpleMessage(
      "The server is currently unavailable",
    ),
    "settings": MessageLookupByLibrary.simpleMessage("Settings"),
    "share": MessageLookupByLibrary.simpleMessage("Sharing"),
    "share_failed": MessageLookupByLibrary.simpleMessage("Share failed"),
    "share_report": MessageLookupByLibrary.simpleMessage("Share Report"),
    "signIn": MessageLookupByLibrary.simpleMessage("Sign In"),
    "signUp": MessageLookupByLibrary.simpleMessage("Sign Up"),
    "sign_in": MessageLookupByLibrary.simpleMessage("Sign In"),
    "size": m18,
    "special": MessageLookupByLibrary.simpleMessage("Special"),
    "staff_management": MessageLookupByLibrary.simpleMessage(
      "Staff Management",
    ),
    "state": MessageLookupByLibrary.simpleMessage("State"),
    "statistics": MessageLookupByLibrary.simpleMessage("Statistics"),
    "status_completed": MessageLookupByLibrary.simpleMessage("Completed"),
    "status_failed": MessageLookupByLibrary.simpleMessage("Failed"),
    "status_in_progress": MessageLookupByLibrary.simpleMessage("In Progress"),
    "status_pending": MessageLookupByLibrary.simpleMessage("Pending"),
    "step": MessageLookupByLibrary.simpleMessage("Step"),
    "steps_completed": MessageLookupByLibrary.simpleMessage("steps completed"),
    "storage_permission_denied": MessageLookupByLibrary.simpleMessage(
      "Storage permission is required to download files",
    ),
    "switching_protocols_101_message": MessageLookupByLibrary.simpleMessage(
      "Switching protocols",
    ),
    "system_notification": MessageLookupByLibrary.simpleMessage("System"),
    "temporary_redirect_307_message": MessageLookupByLibrary.simpleMessage(
      "The requested resource is temporarily available at a different URI",
    ),
    "terms": MessageLookupByLibrary.simpleMessage("Terms & Conditions"),
    "termsAndConditions": MessageLookupByLibrary.simpleMessage(
      "Terms of Service for ths Route",
    ),
    "termsOfServiceForThisRoute": MessageLookupByLibrary.simpleMessage(
      "Terms Of Service For This Route",
    ),
    "terms_of_service_for_the_route": MessageLookupByLibrary.simpleMessage(
      "Terms of Service for ths Route",
    ),
    "test_credentials_filled": MessageLookupByLibrary.simpleMessage(
      "Test credentials filled successfully!",
    ),
    "test_data_loaded": MessageLookupByLibrary.simpleMessage(
      "Test data loaded into form fields",
    ),
    "theContractOrCarNumberInManadatory": MessageLookupByLibrary.simpleMessage(
      "The Contract/Car Number is Mandatory",
    ),
    "theFreeServicesText": MessageLookupByLibrary.simpleMessage(
      "The free services you will get when renting a car:",
    ),
    "this_month": MessageLookupByLibrary.simpleMessage("This Month"),
    "this_year": MessageLookupByLibrary.simpleMessage("This Year"),
    "timingLocationAdditionalServiceas": MessageLookupByLibrary.simpleMessage(
      "Timing - Location - Additional Services",
    ),
    "title": MessageLookupByLibrary.simpleMessage("Title"),
    "today": MessageLookupByLibrary.simpleMessage("Today"),
    "too_many_requests_429_message": MessageLookupByLibrary.simpleMessage(
      "The user has sent too many requests in a given amount of time",
    ),
    "total": MessageLookupByLibrary.simpleMessage("Total"),
    "totalPrice": MessageLookupByLibrary.simpleMessage("Total Price"),
    "total_bookings": MessageLookupByLibrary.simpleMessage("Total Bookings"),
    "total_cost": MessageLookupByLibrary.simpleMessage("Total Cost"),
    "total_drivers": MessageLookupByLibrary.simpleMessage("Total Drivers"),
    "total_expenses": MessageLookupByLibrary.simpleMessage("Total Expenses"),
    "total_income": MessageLookupByLibrary.simpleMessage("Total Income"),
    "total_inspections": MessageLookupByLibrary.simpleMessage(
      "Total Inspections",
    ),
    "tourist": MessageLookupByLibrary.simpleMessage("Tourist"),
    "transfer": MessageLookupByLibrary.simpleMessage("transfer"),
    "transfer_payment": MessageLookupByLibrary.simpleMessage("Transfer"),
    "transmission_types": MessageLookupByLibrary.simpleMessage(
      "Transmission Types *",
    ),
    "trip_details": MessageLookupByLibrary.simpleMessage("Trip Details"),
    "unauthorized_401_message": MessageLookupByLibrary.simpleMessage(
      "The request requires authentication or the user is not authorized to access the resource",
    ),
    "unavailable_for_legal_reasons_451_message":
        MessageLookupByLibrary.simpleMessage(
          "The server is denying access to the resource as a consequence of a legal demand",
        ),
    "university": MessageLookupByLibrary.simpleMessage("University"),
    "unknown_error_message": MessageLookupByLibrary.simpleMessage(
      "An unknown error has occurred. Please try again later",
    ),
    "unprocessable_entity_422_message": MessageLookupByLibrary.simpleMessage(
      "The request was well-formed but was unable to be followed due to semantic errors",
    ),
    "unsupported_media_type_415_message": MessageLookupByLibrary.simpleMessage(
      "The server does not support the media type transmitted in the request",
    ),
    "update": MessageLookupByLibrary.simpleMessage("Update"),
    "update_additional_information": MessageLookupByLibrary.simpleMessage(
      "Update additional information",
    ),
    "update_contact_details": MessageLookupByLibrary.simpleMessage(
      "Update contact details",
    ),
    "update_customer": MessageLookupByLibrary.simpleMessage("Update Customer"),
    "update_documents": MessageLookupByLibrary.simpleMessage(
      "Update documents",
    ),
    "update_id_back_image": MessageLookupByLibrary.simpleMessage(
      "Update ID Back Image",
    ),
    "update_id_front_image": MessageLookupByLibrary.simpleMessage(
      "Update ID Front Image",
    ),
    "update_license_back_image": MessageLookupByLibrary.simpleMessage(
      "Update License Back Image",
    ),
    "update_license_front_image": MessageLookupByLibrary.simpleMessage(
      "Update License Front Image",
    ),
    "update_license_information": MessageLookupByLibrary.simpleMessage(
      "Update license information",
    ),
    "update_passport_image": MessageLookupByLibrary.simpleMessage(
      "Update Passport Image",
    ),
    "update_payment_information": MessageLookupByLibrary.simpleMessage(
      "Update Payment Information",
    ),
    "update_personal_information": MessageLookupByLibrary.simpleMessage(
      "Update personal information",
    ),
    "upgrade_required_426_message": MessageLookupByLibrary.simpleMessage(
      "The client should switch to a different protocol such as TLS/1.0, given in the Upgrade header field",
    ),
    "upload_back_side_id": MessageLookupByLibrary.simpleMessage(
      "Upload back side of ID card",
    ),
    "upload_back_side_license": MessageLookupByLibrary.simpleMessage(
      "Upload back side of license",
    ),
    "upload_documents": MessageLookupByLibrary.simpleMessage(
      "Upload documents",
    ),
    "upload_front_side_id": MessageLookupByLibrary.simpleMessage(
      "Upload front side of ID card",
    ),
    "upload_front_side_license": MessageLookupByLibrary.simpleMessage(
      "Upload front side of license",
    ),
    "upload_passport_if_available": MessageLookupByLibrary.simpleMessage(
      "Upload passport image if available",
    ),
    "upload_resume": MessageLookupByLibrary.simpleMessage(
      "Upload Resume (PDF/DOC/DOCX)",
    ),
    "use_proxy_305_message": MessageLookupByLibrary.simpleMessage(
      "The requested resource must be accessed through the proxy specified in the Location header",
    ),
    "userThisCode": MessageLookupByLibrary.simpleMessage("Use This Code"),
    "username": MessageLookupByLibrary.simpleMessage("Username"),
    "username_hint": MessageLookupByLibrary.simpleMessage("Enter the username"),
    "validator_field_correct_email_title": MessageLookupByLibrary.simpleMessage(
      "Email should be correctly written",
    ),
    "validator_field_length_title": MessageLookupByLibrary.simpleMessage(
      "The field must be at least 8 characters long. Please enter a longer value",
    ),
    "validator_field_numeric_title": MessageLookupByLibrary.simpleMessage(
      "This field should be only numbers",
    ),
    "validator_field_password_not_match_title":
        MessageLookupByLibrary.simpleMessage(
          "Password verification does not match the password you entered",
        ),
    "validator_field_phone_length_title": MessageLookupByLibrary.simpleMessage(
      "It must not be empty, and the number must not start with a zero",
    ),
    "validator_field_phone_title": MessageLookupByLibrary.simpleMessage(
      "Please enter a valid phone number in this field",
    ),
    "validator_field_required_title": MessageLookupByLibrary.simpleMessage(
      "This field should not be empty",
    ),
    "validator_field_terms_title": MessageLookupByLibrary.simpleMessage(
      "Must be agree on terms and conditions",
    ),
    "variant_also_negotiates_506_message": MessageLookupByLibrary.simpleMessage(
      "The server has detected an infinite loop while processing the request",
    ),
    "vat_amount_14_percent": MessageLookupByLibrary.simpleMessage(
      "VAT Amount 15%",
    ),
    "vehicle": MessageLookupByLibrary.simpleMessage("Vehicle"),
    "vehicle_characteristics": MessageLookupByLibrary.simpleMessage(
      "Vehicle characteristics",
    ),
    "vehicle_details": MessageLookupByLibrary.simpleMessage("Vehicle"),
    "vehicle_documents_and_photos": MessageLookupByLibrary.simpleMessage(
      "Vehicle documents and photos",
    ),
    "vehicle_info": MessageLookupByLibrary.simpleMessage("Vehicle Information"),
    "vehicle_information": MessageLookupByLibrary.simpleMessage(
      "Vehicle Information",
    ),
    "vehicle_required": MessageLookupByLibrary.simpleMessage("Vehicle *"),
    "vehicles": MessageLookupByLibrary.simpleMessage("Vehicles"),
    "verifyOtp": MessageLookupByLibrary.simpleMessage("Verify OTP"),
    "view": MessageLookupByLibrary.simpleMessage("View"),
    "view_all": MessageLookupByLibrary.simpleMessage("View All"),
    "view_all_documents": MessageLookupByLibrary.simpleMessage(
      "View All Documents",
    ),
    "view_files": MessageLookupByLibrary.simpleMessage("View Files"),
    "view_image": MessageLookupByLibrary.simpleMessage("View Image"),
    "view_inspection": MessageLookupByLibrary.simpleMessage("View Inspection"),
    "view_inspection_report": MessageLookupByLibrary.simpleMessage(
      "View Inspection Report",
    ),
    "view_payment_details": MessageLookupByLibrary.simpleMessage(
      "View payment information",
    ),
    "view_saved_files": MessageLookupByLibrary.simpleMessage(
      "View Saved Files",
    ),
    "visual_representation": MessageLookupByLibrary.simpleMessage(
      "Visual representation",
    ),
    "voucher_code": MessageLookupByLibrary.simpleMessage("Voucher Code"),
    "voucher_field_hint": MessageLookupByLibrary.simpleMessage("Voucher Code"),
    "weight": MessageLookupByLibrary.simpleMessage("Weight"),
    "welcome_back": MessageLookupByLibrary.simpleMessage("Welcome Back"),
    "welcome_back_user": m19,
    "welcome_get_started": MessageLookupByLibrary.simpleMessage(
      "Welcome! Let\'s get started",
    ),
    "whatsapp": MessageLookupByLibrary.simpleMessage("WhatsApp"),
    "whatsapp_available": MessageLookupByLibrary.simpleMessage(
      "WhatsApp Available",
    ),
    "woman": MessageLookupByLibrary.simpleMessage("Woman"),
    "working_status": MessageLookupByLibrary.simpleMessage("Working Status *"),
    "working_status_required": MessageLookupByLibrary.simpleMessage(
      "Working Status *",
    ),
    "writeTheReasonOfCancellation": MessageLookupByLibrary.simpleMessage(
      "Write the reason of cancellation",
    ),
    "yes": MessageLookupByLibrary.simpleMessage("Yes"),
    "yesterday": MessageLookupByLibrary.simpleMessage("Yesterday"),
    "yourAccountIsReadyToUse": MessageLookupByLibrary.simpleMessage(
      "Your account is ready to use. You will be redirected to the Home page in a few seconds..",
    ),
  };
}
