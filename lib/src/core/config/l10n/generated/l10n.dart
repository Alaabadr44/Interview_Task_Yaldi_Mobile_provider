// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `ON`
  String get appTitle {
    return Intl.message(
      'ON',
      name: 'appTitle',
      desc: 'The title of the application',
      args: [],
    );
  }

  /// `Welcome to the App\nLease Car Super Easy here`
  String get on_boarding_title_first {
    return Intl.message(
      'Welcome to the App\nLease Car Super Easy here',
      name: 'on_boarding_title_first',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get on_boarding_desc_first {
    return Intl.message('', name: 'on_boarding_desc_first', desc: '', args: []);
  }

  /// `Effortless Booking`
  String get on_boarding_title_second {
    return Intl.message(
      'Effortless Booking',
      name: 'on_boarding_title_second',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get on_boarding_desc_second {
    return Intl.message(
      '',
      name: 'on_boarding_desc_second',
      desc: '',
      args: [],
    );
  }

  /// `Convenient Pickup and Drop-off`
  String get on_boarding_title_third {
    return Intl.message(
      'Convenient Pickup and Drop-off',
      name: 'on_boarding_title_third',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get on_boarding_desc_third {
    return Intl.message('', name: 'on_boarding_desc_third', desc: '', args: []);
  }

  /// `Secure Payments`
  String get on_boarding_title_fourth {
    return Intl.message(
      'Secure Payments',
      name: 'on_boarding_title_fourth',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get on_boarding_desc_fourth {
    return Intl.message(
      '',
      name: 'on_boarding_desc_fourth',
      desc: '',
      args: [],
    );
  }

  /// `Let's Get Started!`
  String get on_boarding_title_fifth {
    return Intl.message(
      'Let\'s Get Started!',
      name: 'on_boarding_title_fifth',
      desc: '',
      args: [],
    );
  }

  /// `With our car rental services, you can experience the ultimate convenience and freedom of exploring your destination at your own pace.`
  String get on_boarding_desc_fifth {
    return Intl.message(
      'With our car rental services, you can experience the ultimate convenience and freedom of exploring your destination at your own pace.',
      name: 'on_boarding_desc_fifth',
      desc: '',
      args: [],
    );
  }

  /// `Please Sign in to process`
  String get pleaseSignInToProcess {
    return Intl.message(
      'Please Sign in to process',
      name: 'pleaseSignInToProcess',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signIn {
    return Intl.message('Sign In', name: 'signIn', desc: '', args: []);
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get hintLoginPhoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'hintLoginPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Old Password`
  String get oldPassword {
    return Intl.message(
      'Old Password',
      name: 'oldPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Your Password`
  String get hintLoginPassword {
    return Intl.message(
      'Your Password',
      name: 'hintLoginPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password!`
  String get forgetPassword {
    return Intl.message(
      'Forget Password!',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Don't have any account?`
  String get dontHaveAnyAccount {
    return Intl.message(
      'Don\'t have any account?',
      name: 'dontHaveAnyAccount',
      desc: '',
      args: [],
    );
  }

  /// `Already have account?`
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have account?',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message('Sign Up', name: 'signUp', desc: '', args: []);
  }

  /// `Name`
  String get name {
    return Intl.message('Name', name: 'name', desc: '', args: []);
  }

  /// `Your Name`
  String get hintName {
    return Intl.message('Your Name', name: 'hintName', desc: '', args: []);
  }

  /// `ID Number`
  String get idNumber {
    return Intl.message('ID Number', name: 'idNumber', desc: '', args: []);
  }

  /// `E-mail`
  String get email {
    return Intl.message('E-mail', name: 'email', desc: '', args: []);
  }

  /// `Enter your Email`
  String get hintEmail {
    return Intl.message(
      'Enter your Email',
      name: 'hintEmail',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message('Address', name: 'address', desc: '', args: []);
  }

  /// `Enter your Address`
  String get hintAddress {
    return Intl.message(
      'Enter your Address',
      name: 'hintAddress',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Front`
  String get front {
    return Intl.message('Front', name: 'front', desc: '', args: []);
  }

  /// `Back`
  String get back {
    return Intl.message('Back', name: 'back', desc: '', args: []);
  }

  /// `Civil Id`
  String get civilId {
    return Intl.message('Civil Id', name: 'civilId', desc: '', args: []);
  }

  /// `Licenses ID`
  String get licensesId {
    return Intl.message('Licenses ID', name: 'licensesId', desc: '', args: []);
  }

  /// `Terms Of Service For This Route`
  String get termsOfServiceForThisRoute {
    return Intl.message(
      'Terms Of Service For This Route',
      name: 'termsOfServiceForThisRoute',
      desc: '',
      args: [],
    );
  }

  /// `OTP`
  String get otp {
    return Intl.message('OTP', name: 'otp', desc: '', args: []);
  }

  /// `Verify OTP`
  String get verifyOtp {
    return Intl.message('Verify OTP', name: 'verifyOtp', desc: '', args: []);
  }

  /// `Resend OTP`
  String get resendOtp {
    return Intl.message('Resend OTP', name: 'resendOtp', desc: '', args: []);
  }

  /// `Resend In`
  String get resendIn {
    return Intl.message('Resend In', name: 'resendIn', desc: '', args: []);
  }

  /// `Enter Your OTP code`
  String get otp_field_required {
    return Intl.message(
      'Enter Your OTP code',
      name: 'otp_field_required',
      desc: '',
      args: [],
    );
  }

  /// `The search terms do not match the countries available to us.`
  String get country_not_available {
    return Intl.message(
      'The search terms do not match the countries available to us.',
      name: 'country_not_available',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations`
  String get congratulations {
    return Intl.message(
      'Congratulations',
      name: 'congratulations',
      desc: '',
      args: [],
    );
  }

  /// `Your account is ready to use. You will be redirected to the Home page in a few seconds..`
  String get yourAccountIsReadyToUse {
    return Intl.message(
      'Your account is ready to use. You will be redirected to the Home page in a few seconds..',
      name: 'yourAccountIsReadyToUse',
      desc: '',
      args: [],
    );
  }

  /// `The code is correct. You will be redirected to the password change page.`
  String get otp_success {
    return Intl.message(
      'The code is correct. You will be redirected to the password change page.',
      name: 'otp_success',
      desc: '',
      args: [],
    );
  }

  /// `Create New Password`
  String get createPassword {
    return Intl.message(
      'Create New Password',
      name: 'createPassword',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get newPassword {
    return Intl.message(
      'New Password',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm New Password`
  String get confirmNewPassword {
    return Intl.message(
      'Confirm New Password',
      name: 'confirmNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Know More`
  String get knowMore {
    return Intl.message('Know More', name: 'knowMore', desc: '', args: []);
  }

  /// `Okay i understand`
  String get okayIUnderstand {
    return Intl.message(
      'Okay i understand',
      name: 'okayIUnderstand',
      desc: '',
      args: [],
    );
  }

  /// `Select Service`
  String get selectService {
    return Intl.message(
      'Select Service',
      name: 'selectService',
      desc: '',
      args: [],
    );
  }

  /// `Best Offers`
  String get bestOffers {
    return Intl.message('Best Offers', name: 'bestOffers', desc: '', args: []);
  }

  /// `Deals`
  String get deals {
    return Intl.message('Deals', name: 'deals', desc: '', args: []);
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: 'Home', args: []);
  }

  /// `Booking`
  String get booking {
    return Intl.message('Booking', name: 'booking', desc: '', args: []);
  }

  /// `Profile`
  String get profile {
    return Intl.message('Profile', name: 'profile', desc: '', args: []);
  }

  /// `Edit Profile`
  String get editProfile {
    return Intl.message(
      'Edit Profile',
      name: 'editProfile',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message('More', name: 'more', desc: '', args: []);
  }

  /// `Branch Pick Up`
  String get branchPickUp {
    return Intl.message(
      'Branch Pick Up',
      name: 'branchPickUp',
      desc: '',
      args: [],
    );
  }

  /// `Car Delivery`
  String get carDelivery {
    return Intl.message(
      'Car Delivery',
      name: 'carDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Service for ths Route`
  String get termsAndConditions {
    return Intl.message(
      'Terms of Service for ths Route',
      name: 'termsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Conditions`
  String get terms {
    return Intl.message(
      'Terms & Conditions',
      name: 'terms',
      desc: '',
      args: [],
    );
  }

  /// `Privacy And Policy`
  String get privacyAndPolicy {
    return Intl.message(
      'Privacy And Policy',
      name: 'privacyAndPolicy',
      desc: '',
      args: [],
    );
  }

  /// `About US`
  String get aboutUs {
    return Intl.message('About US', name: 'aboutUs', desc: '', args: []);
  }

  /// `Contact US`
  String get contactUs {
    return Intl.message('Contact US', name: 'contactUs', desc: '', args: []);
  }

  /// `Change Password`
  String get changePassword {
    return Intl.message(
      'Change Password',
      name: 'changePassword',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message('Logout', name: 'logout', desc: '', args: []);
  }

  /// `Are you sure you want to logout?`
  String get logout_msg {
    return Intl.message(
      'Are you sure you want to logout?',
      name: 'logout_msg',
      desc: '',
      args: [],
    );
  }

  /// `Delete Account`
  String get deleteAccount {
    return Intl.message(
      'Delete Account',
      name: 'deleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `Notifications`
  String get notification {
    return Intl.message(
      'Notifications',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `Vision and mission`
  String get Vision_mission {
    return Intl.message(
      'Vision and mission',
      name: 'Vision_mission',
      desc: '',
      args: [],
    );
  }

  /// `Refund Policy`
  String get refund_police {
    return Intl.message(
      'Refund Policy',
      name: 'refund_police',
      desc: '',
      args: [],
    );
  }

  /// `Sharing`
  String get share {
    return Intl.message('Sharing', name: 'share', desc: '', args: []);
  }

  /// `Are you sure you want to Delete Account?`
  String get deleteAccountMsg {
    return Intl.message(
      'Are you sure you want to Delete Account?',
      name: 'deleteAccountMsg',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password don't match`
  String get confirmPasswordDontMatch {
    return Intl.message(
      'Confirm Password don\'t match',
      name: 'confirmPasswordDontMatch',
      desc: '',
      args: [],
    );
  }

  /// `Field can't be empty!`
  String get fieldCantBeEmpty {
    return Intl.message(
      'Field can\'t be empty!',
      name: 'fieldCantBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid email address`
  String get enterValidEmail {
    return Intl.message(
      'Enter a valid email address',
      name: 'enterValidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 8 characters`
  String get passwordMustBe {
    return Intl.message(
      'Password must be at least 8 characters',
      name: 'passwordMustBe',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid phone number`
  String get enterValidPhone {
    return Intl.message(
      'Enter a valid phone number',
      name: 'enterValidPhone',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message('Done', name: 'done', desc: '', args: []);
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Yes`
  String get yes {
    return Intl.message('Yes', name: 'yes', desc: '', args: []);
  }

  /// `No`
  String get no {
    return Intl.message('No', name: 'no', desc: '', args: []);
  }

  /// `Camera`
  String get camera {
    return Intl.message('Camera', name: 'camera', desc: '', args: []);
  }

  /// `Gallery`
  String get gallery {
    return Intl.message('Gallery', name: 'gallery', desc: '', args: []);
  }

  /// `Pick Source`
  String get pick_source {
    return Intl.message('Pick Source', name: 'pick_source', desc: '', args: []);
  }

  /// `You can either capture a photo using your device's camera or select an existing image from your gallery to use.`
  String get pick_source_description {
    return Intl.message(
      'You can either capture a photo using your device\'s camera or select an existing image from your gallery to use.',
      name: 'pick_source_description',
      desc: '',
      args: [],
    );
  }

  /// `This field should not be empty`
  String get validator_field_required_title {
    return Intl.message(
      'This field should not be empty',
      name: 'validator_field_required_title',
      desc: '',
      args: [],
    );
  }

  /// `Email should be correctly written`
  String get validator_field_correct_email_title {
    return Intl.message(
      'Email should be correctly written',
      name: 'validator_field_correct_email_title',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid phone number in this field`
  String get validator_field_phone_title {
    return Intl.message(
      'Please enter a valid phone number in this field',
      name: 'validator_field_phone_title',
      desc: '',
      args: [],
    );
  }

  /// `It must not be empty, and the number must not start with a zero`
  String get validator_field_phone_length_title {
    return Intl.message(
      'It must not be empty, and the number must not start with a zero',
      name: 'validator_field_phone_length_title',
      desc: '',
      args: [],
    );
  }

  /// `This field should be only numbers`
  String get validator_field_numeric_title {
    return Intl.message(
      'This field should be only numbers',
      name: 'validator_field_numeric_title',
      desc: '',
      args: [],
    );
  }

  /// `The field must be at least 8 characters long. Please enter a longer value`
  String get validator_field_length_title {
    return Intl.message(
      'The field must be at least 8 characters long. Please enter a longer value',
      name: 'validator_field_length_title',
      desc: '',
      args: [],
    );
  }

  /// `Password verification does not match the password you entered`
  String get validator_field_password_not_match_title {
    return Intl.message(
      'Password verification does not match the password you entered',
      name: 'validator_field_password_not_match_title',
      desc: '',
      args: [],
    );
  }

  /// `Must be agree on terms and conditions`
  String get validator_field_terms_title {
    return Intl.message(
      'Must be agree on terms and conditions',
      name: 'validator_field_terms_title',
      desc: '',
      args: [],
    );
  }

  /// `Verified`
  String get alert_dialog_otp_body_title {
    return Intl.message(
      'Verified',
      name: 'alert_dialog_otp_body_title',
      desc: '',
      args: [],
    );
  }

  /// `Your account has been verified successfully`
  String get alert_dialog_otp_desc_title {
    return Intl.message(
      'Your account has been verified successfully',
      name: 'alert_dialog_otp_desc_title',
      desc: '',
      args: [],
    );
  }

  /// `Alert`
  String get alert_title_title {
    return Intl.message('Alert', name: 'alert_title_title', desc: '', args: []);
  }

  /// `By confirming to leave this page, you will lose all the data you have entered. Do you wish to proceed with this action?`
  String get alert_submit_return {
    return Intl.message(
      'By confirming to leave this page, you will lose all the data you have entered. Do you wish to proceed with this action?',
      name: 'alert_submit_return',
      desc: '',
      args: [],
    );
  }

  /// `Your phone number has not been verified yet. An activation code has been sent to your registered phone number, and you will be redirected to the activation page.`
  String get alert_verify_phone_return {
    return Intl.message(
      'Your phone number has not been verified yet. An activation code has been sent to your registered phone number, and you will be redirected to the activation page.',
      name: 'alert_verify_phone_return',
      desc: '',
      args: [],
    );
  }

  /// `Save Data`
  String get button_save_date_title {
    return Intl.message(
      'Save Data',
      name: 'button_save_date_title',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get button_done_title {
    return Intl.message('Done', name: 'button_done_title', desc: '', args: []);
  }

  /// `Yes`
  String get button_yes_title {
    return Intl.message('Yes', name: 'button_yes_title', desc: '', args: []);
  }

  /// `No`
  String get button_no_title {
    return Intl.message('No', name: 'button_no_title', desc: '', args: []);
  }

  /// `Skip`
  String get button_skip_title {
    return Intl.message('Skip', name: 'button_skip_title', desc: '', args: []);
  }

  /// `Filter`
  String get button_filter_title {
    return Intl.message(
      'Filter',
      name: 'button_filter_title',
      desc: '',
      args: [],
    );
  }

  /// `Preview all`
  String get button_preview_title {
    return Intl.message(
      'Preview all',
      name: 'button_preview_title',
      desc: '',
      args: [],
    );
  }

  /// `Click here`
  String get button_click_here_title {
    return Intl.message(
      'Click here',
      name: 'button_click_here_title',
      desc: '',
      args: [],
    );
  }

  /// `Save Change`
  String get button_save_change_title {
    return Intl.message(
      'Save Change',
      name: 'button_save_change_title',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get button_submit_title {
    return Intl.message(
      'Submit',
      name: 'button_submit_title',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get button_continue_title {
    return Intl.message(
      'Continue',
      name: 'button_continue_title',
      desc: '',
      args: [],
    );
  }

  /// `Activate`
  String get button_activate_title {
    return Intl.message(
      'Activate',
      name: 'button_activate_title',
      desc: '',
      args: [],
    );
  }

  /// `Finish`
  String get button_finish_title {
    return Intl.message(
      'Finish',
      name: 'button_finish_title',
      desc: '',
      args: [],
    );
  }

  /// `Agree`
  String get button_agree_title {
    return Intl.message(
      'Agree',
      name: 'button_agree_title',
      desc: '',
      args: [],
    );
  }

  /// `Review`
  String get button_review_title {
    return Intl.message(
      'Review',
      name: 'button_review_title',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get button_save_title {
    return Intl.message('Save', name: 'button_save_title', desc: '', args: []);
  }

  /// `Request for reviewing`
  String get button_request_reviewing_title {
    return Intl.message(
      'Request for reviewing',
      name: 'button_request_reviewing_title',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get button_next_title {
    return Intl.message('Next', name: 'button_next_title', desc: '', args: []);
  }

  /// `Previous`
  String get button_previous_title {
    return Intl.message(
      'Previous',
      name: 'button_previous_title',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get button_retry_title {
    return Intl.message(
      'Retry',
      name: 'button_retry_title',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get button_cancel_title {
    return Intl.message(
      'Cancel',
      name: 'button_cancel_title',
      desc: '',
      args: [],
    );
  }

  /// `Reset all`
  String get button_reset_title {
    return Intl.message(
      'Reset all',
      name: 'button_reset_title',
      desc: '',
      args: [],
    );
  }

  /// `Accepting order`
  String get button_accepting_order_title {
    return Intl.message(
      'Accepting order',
      name: 'button_accepting_order_title',
      desc: '',
      args: [],
    );
  }

  /// `Processing data, please wait...`
  String get button_data_processing_title {
    return Intl.message(
      'Processing data, please wait...',
      name: 'button_data_processing_title',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get button_show_details_title {
    return Intl.message(
      'Details',
      name: 'button_show_details_title',
      desc: '',
      args: [],
    );
  }

  /// `{percent}%`
  String button_please_waite_title(int percent) {
    return Intl.message(
      '$percent%',
      name: 'button_please_waite_title',
      desc: 'A message with a single parameter',
      args: [percent],
    );
  }

  /// `Success Process`
  String get progress_success_message {
    return Intl.message(
      'Success Process',
      name: 'progress_success_message',
      desc: '',
      args: [],
    );
  }

  /// `Failed Process`
  String get progress_fail_message {
    return Intl.message(
      'Failed Process',
      name: 'progress_fail_message',
      desc: '',
      args: [],
    );
  }

  /// `No data available`
  String get no_item_found {
    return Intl.message(
      'No data available',
      name: 'no_item_found',
      desc: '',
      args: [],
    );
  }

  /// `Continue with request`
  String get continue_100_message {
    return Intl.message(
      'Continue with request',
      name: 'continue_100_message',
      desc: '',
      args: [],
    );
  }

  /// `Switching protocols`
  String get switching_protocols_101_message {
    return Intl.message(
      'Switching protocols',
      name: 'switching_protocols_101_message',
      desc: '',
      args: [],
    );
  }

  /// `Processing request`
  String get processing_102_message {
    return Intl.message(
      'Processing request',
      name: 'processing_102_message',
      desc: '',
      args: [],
    );
  }

  /// `Request successful, document reset`
  String get reset_content_205_message {
    return Intl.message(
      'Request successful, document reset',
      name: 'reset_content_205_message',
      desc: '',
      args: [],
    );
  }

  /// `Partial content provided`
  String get partial_content_206_message {
    return Intl.message(
      'Partial content provided',
      name: 'partial_content_206_message',
      desc: '',
      args: [],
    );
  }

  /// `Multiple choices available`
  String get multiple_choices_300_message {
    return Intl.message(
      'Multiple choices available',
      name: 'multiple_choices_300_message',
      desc: '',
      args: [],
    );
  }

  /// `Resource permanently moved`
  String get moved_permanently_301_message {
    return Intl.message(
      'Resource permanently moved',
      name: 'moved_permanently_301_message',
      desc: '',
      args: [],
    );
  }

  /// `Resource temporarily moved`
  String get found_302_message {
    return Intl.message(
      'Resource temporarily moved',
      name: 'found_302_message',
      desc: '',
      args: [],
    );
  }

  /// `Response found under different URI`
  String get see_other_303_message {
    return Intl.message(
      'Response found under different URI',
      name: 'see_other_303_message',
      desc: '',
      args: [],
    );
  }

  /// `The resource has not been modified since the last request`
  String get not_modified_304_message {
    return Intl.message(
      'The resource has not been modified since the last request',
      name: 'not_modified_304_message',
      desc: '',
      args: [],
    );
  }

  /// `The requested resource must be accessed through the proxy specified in the Location header`
  String get use_proxy_305_message {
    return Intl.message(
      'The requested resource must be accessed through the proxy specified in the Location header',
      name: 'use_proxy_305_message',
      desc: '',
      args: [],
    );
  }

  /// `The requested resource is temporarily available at a different URI`
  String get temporary_redirect_307_message {
    return Intl.message(
      'The requested resource is temporarily available at a different URI',
      name: 'temporary_redirect_307_message',
      desc: '',
      args: [],
    );
  }

  /// `The requested resource has been permanently moved to a different URI`
  String get permanent_redirect_308_message {
    return Intl.message(
      'The requested resource has been permanently moved to a different URI',
      name: 'permanent_redirect_308_message',
      desc: '',
      args: [],
    );
  }

  /// `The request requires authentication or the user is not authorized to access the resource`
  String get unauthorized_401_message {
    return Intl.message(
      'The request requires authentication or the user is not authorized to access the resource',
      name: 'unauthorized_401_message',
      desc: '',
      args: [],
    );
  }

  /// `Payment is required to complete this action. Please make sure your payment information is up to date and try again`
  String get payment_required_402_message {
    return Intl.message(
      'Payment is required to complete this action. Please make sure your payment information is up to date and try again',
      name: 'payment_required_402_message',
      desc: '',
      args: [],
    );
  }

  /// `The server refuses to authorize the request`
  String get forbidden_403_message {
    return Intl.message(
      'The server refuses to authorize the request',
      name: 'forbidden_403_message',
      desc: '',
      args: [],
    );
  }

  /// `The requested resource could not be found on the server`
  String get not_found_404_message {
    return Intl.message(
      'The requested resource could not be found on the server',
      name: 'not_found_404_message',
      desc: '',
      args: [],
    );
  }

  /// `The requested method is not allowed for the specified resource`
  String get method_not_allowed_405_message {
    return Intl.message(
      'The requested method is not allowed for the specified resource',
      name: 'method_not_allowed_405_message',
      desc: '',
      args: [],
    );
  }

  /// `The server cannot produce a response matching the list of acceptable values defined in the request's headers`
  String get not_acceptable_406_message {
    return Intl.message(
      'The server cannot produce a response matching the list of acceptable values defined in the request\'s headers',
      name: 'not_acceptable_406_message',
      desc: '',
      args: [],
    );
  }

  /// `The client must first authenticate itself with the proxy`
  String get proxy_authentication_required_407_message {
    return Intl.message(
      'The client must first authenticate itself with the proxy',
      name: 'proxy_authentication_required_407_message',
      desc: '',
      args: [],
    );
  }

  /// `The server timed out waiting for the request`
  String get request_timeout_408_message {
    return Intl.message(
      'The server timed out waiting for the request',
      name: 'request_timeout_408_message',
      desc: '',
      args: [],
    );
  }

  /// `The request could not be completed due to a conflict with the current state of the resource`
  String get conflict_409_message {
    return Intl.message(
      'The request could not be completed due to a conflict with the current state of the resource',
      name: 'conflict_409_message',
      desc: '',
      args: [],
    );
  }

  /// `The requested resource is no longer available and has been permanently removed`
  String get gone_410_message {
    return Intl.message(
      'The requested resource is no longer available and has been permanently removed',
      name: 'gone_410_message',
      desc: '',
      args: [],
    );
  }

  /// `The request did not specify the length of its content, which is required by the requested resource`
  String get length_required_411_message {
    return Intl.message(
      'The request did not specify the length of its content, which is required by the requested resource',
      name: 'length_required_411_message',
      desc: '',
      args: [],
    );
  }

  /// `The server does not meet one of the preconditions that the requester put on the request`
  String get precondition_failed_412_message {
    return Intl.message(
      'The server does not meet one of the preconditions that the requester put on the request',
      name: 'precondition_failed_412_message',
      desc: '',
      args: [],
    );
  }

  /// `The request is larger than the server is willing or able to process`
  String get requestEntity_tooLarge_413_message {
    return Intl.message(
      'The request is larger than the server is willing or able to process',
      name: 'requestEntity_tooLarge_413_message',
      desc: '',
      args: [],
    );
  }

  /// `The URI provided in the request is too long for the server to process`
  String get requestUri_tooLong_414_message {
    return Intl.message(
      'The URI provided in the request is too long for the server to process',
      name: 'requestUri_tooLong_414_message',
      desc: '',
      args: [],
    );
  }

  /// `The server does not support the media type transmitted in the request`
  String get unsupported_media_type_415_message {
    return Intl.message(
      'The server does not support the media type transmitted in the request',
      name: 'unsupported_media_type_415_message',
      desc: '',
      args: [],
    );
  }

  /// `The requested range cannot be provided by the server`
  String get requested_range_not_satisfiable_416_message {
    return Intl.message(
      'The requested range cannot be provided by the server',
      name: 'requested_range_not_satisfiable_416_message',
      desc: '',
      args: [],
    );
  }

  /// `The server cannot meet the requirements of the Expect header field`
  String get expectation_failed_417_message {
    return Intl.message(
      'The server cannot meet the requirements of the Expect header field',
      name: 'expectation_failed_417_message',
      desc: '',
      args: [],
    );
  }

  /// `The server was unable to resolve the provided hostname`
  String get misdirected_request_421_message {
    return Intl.message(
      'The server was unable to resolve the provided hostname',
      name: 'misdirected_request_421_message',
      desc: '',
      args: [],
    );
  }

  /// `The request was well-formed but was unable to be followed due to semantic errors`
  String get unprocessable_entity_422_message {
    return Intl.message(
      'The request was well-formed but was unable to be followed due to semantic errors',
      name: 'unprocessable_entity_422_message',
      desc: '',
      args: [],
    );
  }

  /// `The requested resource is locked and may not be modified`
  String get locked_423_message {
    return Intl.message(
      'The requested resource is locked and may not be modified',
      name: 'locked_423_message',
      desc: '',
      args: [],
    );
  }

  /// `The server encountered a failure while attempting to fulfill the request`
  String get failed_dependency_424_message {
    return Intl.message(
      'The server encountered a failure while attempting to fulfill the request',
      name: 'failed_dependency_424_message',
      desc: '',
      args: [],
    );
  }

  /// `The client should switch to a different protocol such as TLS/1.0, given in the Upgrade header field`
  String get upgrade_required_426_message {
    return Intl.message(
      'The client should switch to a different protocol such as TLS/1.0, given in the Upgrade header field',
      name: 'upgrade_required_426_message',
      desc: '',
      args: [],
    );
  }

  /// `The server requires the request to be conditional`
  String get precondition_required_428_message {
    return Intl.message(
      'The server requires the request to be conditional',
      name: 'precondition_required_428_message',
      desc: '',
      args: [],
    );
  }

  /// `The user has sent too many requests in a given amount of time`
  String get too_many_requests_429_message {
    return Intl.message(
      'The user has sent too many requests in a given amount of time',
      name: 'too_many_requests_429_message',
      desc: '',
      args: [],
    );
  }

  /// `The server is unwilling to process the request because its header fields are too large`
  String get request_header_fields_too_large_431_message {
    return Intl.message(
      'The server is unwilling to process the request because its header fields are too large',
      name: 'request_header_fields_too_large_431_message',
      desc: '',
      args: [],
    );
  }

  /// `The server has closed the connection without sending any response`
  String get connection_closed_without_response_444_message {
    return Intl.message(
      'The server has closed the connection without sending any response',
      name: 'connection_closed_without_response_444_message',
      desc: '',
      args: [],
    );
  }

  /// `The server is denying access to the resource as a consequence of a legal demand`
  String get unavailable_for_legal_reasons_451_message {
    return Intl.message(
      'The server is denying access to the resource as a consequence of a legal demand',
      name: 'unavailable_for_legal_reasons_451_message',
      desc: '',
      args: [],
    );
  }

  /// `he client has closed the request before the server could send a response`
  String get client_closed_request_499_message {
    return Intl.message(
      'he client has closed the request before the server could send a response',
      name: 'client_closed_request_499_message',
      desc: '',
      args: [],
    );
  }

  /// `The server encountered an error while processing the request`
  String get internal_server_error_500_message {
    return Intl.message(
      'The server encountered an error while processing the request',
      name: 'internal_server_error_500_message',
      desc: '',
      args: [],
    );
  }

  /// `The server does not support the functionality required to fulfill the request`
  String get not_implemented_error_501_message {
    return Intl.message(
      'The server does not support the functionality required to fulfill the request',
      name: 'not_implemented_error_501_message',
      desc: '',
      args: [],
    );
  }

  /// `The server acting as a gateway or proxy received an invalid response from the upstream server`
  String get bad_gateway_502_message {
    return Intl.message(
      'The server acting as a gateway or proxy received an invalid response from the upstream server',
      name: 'bad_gateway_502_message',
      desc: '',
      args: [],
    );
  }

  /// `The server is currently unavailable`
  String get service_unavailable_503_message {
    return Intl.message(
      'The server is currently unavailable',
      name: 'service_unavailable_503_message',
      desc: '',
      args: [],
    );
  }

  /// `The server acting as a gateway or proxy timed out waiting for a response from the upstream server`
  String get gateway_timeout_504_message {
    return Intl.message(
      'The server acting as a gateway or proxy timed out waiting for a response from the upstream server',
      name: 'gateway_timeout_504_message',
      desc: '',
      args: [],
    );
  }

  /// `The requested HTTP version is not supported by the server`
  String get http_version_not_supported_505_message {
    return Intl.message(
      'The requested HTTP version is not supported by the server',
      name: 'http_version_not_supported_505_message',
      desc: '',
      args: [],
    );
  }

  /// `The server has detected an infinite loop while processing the request`
  String get variant_also_negotiates_506_message {
    return Intl.message(
      'The server has detected an infinite loop while processing the request',
      name: 'variant_also_negotiates_506_message',
      desc: '',
      args: [],
    );
  }

  /// `The server is unable to store the representation needed to complete the request`
  String get insufficient_storage_507_message {
    return Intl.message(
      'The server is unable to store the representation needed to complete the request',
      name: 'insufficient_storage_507_message',
      desc: '',
      args: [],
    );
  }

  /// `The server has detected a loop in the request processing chain, which could indicate a misconfiguration`
  String get loop_detected_508_message {
    return Intl.message(
      'The server has detected a loop in the request processing chain, which could indicate a misconfiguration',
      name: 'loop_detected_508_message',
      desc: '',
      args: [],
    );
  }

  /// `Further extensions to the request are required for the server to fulfill it`
  String get not_extended_510_message {
    return Intl.message(
      'Further extensions to the request are required for the server to fulfill it',
      name: 'not_extended_510_message',
      desc: '',
      args: [],
    );
  }

  /// `The client needs to authenticate to gain network access`
  String get network_authentication_required_511_message {
    return Intl.message(
      'The client needs to authenticate to gain network access',
      name: 'network_authentication_required_511_message',
      desc: '',
      args: [],
    );
  }

  /// `The request has timed out while connecting to the server. Please check your network connection and try again`
  String get network_connect_timeout_error_599_message {
    return Intl.message(
      'The request has timed out while connecting to the server. Please check your network connection and try again',
      name: 'network_connect_timeout_error_599_message',
      desc: '',
      args: [],
    );
  }

  /// `Connection timed out. Please check your internet connection and try again`
  String get connect_timeout_message {
    return Intl.message(
      'Connection timed out. Please check your internet connection and try again',
      name: 'connect_timeout_message',
      desc: '',
      args: [],
    );
  }

  /// ` Sending request timed out. Please try again`
  String get send_timeout_message {
    return Intl.message(
      ' Sending request timed out. Please try again',
      name: 'send_timeout_message',
      desc: '',
      args: [],
    );
  }

  /// `Receiving response timed out. Please try again`
  String get receive_timeout_message {
    return Intl.message(
      'Receiving response timed out. Please try again',
      name: 'receive_timeout_message',
      desc: '',
      args: [],
    );
  }

  /// `Unable to establish a connection. Please try again`
  String get connection_error_message {
    return Intl.message(
      'Unable to establish a connection. Please try again',
      name: 'connection_error_message',
      desc: '',
      args: [],
    );
  }

  /// `Request has been canceled`
  String get cancel_error_message {
    return Intl.message(
      'Request has been canceled',
      name: 'cancel_error_message',
      desc: '',
      args: [],
    );
  }

  /// `An unknown error has occurred. Please try again later`
  String get unknown_error_message {
    return Intl.message(
      'An unknown error has occurred. Please try again later',
      name: 'unknown_error_message',
      desc: '',
      args: [],
    );
  }

  /// `Certificate verification failed. Please make sure you're connected to a secure network and try again`
  String get bad_certificate_message {
    return Intl.message(
      'Certificate verification failed. Please make sure you\'re connected to a secure network and try again',
      name: 'bad_certificate_message',
      desc: '',
      args: [],
    );
  }

  /// `Check your internet connection`
  String get check_connection_message {
    return Intl.message(
      'Check your internet connection',
      name: 'check_connection_message',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred while processing the data received from the server, as expected in the application`
  String
  get error_occurred_while_processing_the_data_received_from_the_server_message {
    return Intl.message(
      'An error occurred while processing the data received from the server, as expected in the application',
      name:
          'error_occurred_while_processing_the_data_received_from_the_server_message',
      desc: '',
      args: [],
    );
  }

  /// `Offers & Rewards`
  String get offersAndRewards {
    return Intl.message(
      'Offers & Rewards',
      name: 'offersAndRewards',
      desc: '',
      args: [],
    );
  }

  /// `Disscount Codes`
  String get disscountCodes {
    return Intl.message(
      'Disscount Codes',
      name: 'disscountCodes',
      desc: '',
      args: [],
    );
  }

  /// `Get Disscount Code`
  String get getDisscountCode {
    return Intl.message(
      'Get Disscount Code',
      name: 'getDisscountCode',
      desc: '',
      args: [],
    );
  }

  /// `Use This Code`
  String get userThisCode {
    return Intl.message(
      'Use This Code',
      name: 'userThisCode',
      desc: '',
      args: [],
    );
  }

  /// `Loyality And Rewards`
  String get loyalityAndRewards {
    return Intl.message(
      'Loyality And Rewards',
      name: 'loyalityAndRewards',
      desc: '',
      args: [],
    );
  }

  /// `To request to join as a partner in the ON application, please provide us with the following data`
  String get partner_page_title {
    return Intl.message(
      'To request to join as a partner in the ON application, please provide us with the following data',
      name: 'partner_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Type of Partner`
  String get partner_page_partner_type_field {
    return Intl.message(
      'Type of Partner',
      name: 'partner_page_partner_type_field',
      desc: '',
      args: [],
    );
  }

  /// `Types of Cars`
  String get partner_page_cars_type_field {
    return Intl.message(
      'Types of Cars',
      name: 'partner_page_cars_type_field',
      desc: '',
      args: [],
    );
  }

  /// `Company Name`
  String get partner_page_company_name_field {
    return Intl.message(
      'Company Name',
      name: 'partner_page_company_name_field',
      desc: '',
      args: [],
    );
  }

  /// `Administrator Name`
  String get partner_page_official_field {
    return Intl.message(
      'Administrator Name',
      name: 'partner_page_official_field',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get partner_page_contract_field {
    return Intl.message(
      'Phone Number',
      name: 'partner_page_contract_field',
      desc: '',
      args: [],
    );
  }

  /// `Number of Cars`
  String get partner_page_car_number_field {
    return Intl.message(
      'Number of Cars',
      name: 'partner_page_car_number_field',
      desc: '',
      args: [],
    );
  }

  /// `Number of Branches`
  String get partner_page_branch_number_field {
    return Intl.message(
      'Number of Branches',
      name: 'partner_page_branch_number_field',
      desc: '',
      args: [],
    );
  }

  /// `Number of Cities`
  String get partner_page_city_number_field {
    return Intl.message(
      'Number of Cities',
      name: 'partner_page_city_number_field',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get partner_page_email_field {
    return Intl.message(
      'Email',
      name: 'partner_page_email_field',
      desc: '',
      args: [],
    );
  }

  /// `Commercial register`
  String get partner_page_register_number_field {
    return Intl.message(
      'Commercial register',
      name: 'partner_page_register_number_field',
      desc: '',
      args: [],
    );
  }

  /// `Commercial register photo`
  String get partner_page_register_image_field {
    return Intl.message(
      'Commercial register photo',
      name: 'partner_page_register_image_field',
      desc: '',
      args: [],
    );
  }

  /// `Authority license number`
  String get partner_page_license_number_field {
    return Intl.message(
      'Authority license number',
      name: 'partner_page_license_number_field',
      desc: '',
      args: [],
    );
  }

  /// `License photo`
  String get partner_page_license_image_field {
    return Intl.message(
      'License photo',
      name: 'partner_page_license_image_field',
      desc: '',
      args: [],
    );
  }

  /// `Submit a request to join`
  String get partner_page_submit_btn {
    return Intl.message(
      'Submit a request to join',
      name: 'partner_page_submit_btn',
      desc: '',
      args: [],
    );
  }

  /// `Your request has been received and is currently under review. You will be notified of any updates.`
  String get partner_page_msg_success_partner {
    return Intl.message(
      'Your request has been received and is currently under review. You will be notified of any updates.',
      name: 'partner_page_msg_success_partner',
      desc: '',
      args: [],
    );
  }

  /// `Please`
  String get guest_title_msg {
    return Intl.message('Please', name: 'guest_title_msg', desc: '', args: []);
  }

  /// `Please Sign in first to View this Page`
  String get guest_body_msg {
    return Intl.message(
      'Please Sign in first to View this Page',
      name: 'guest_body_msg',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications_page_app_bar_title {
    return Intl.message(
      'Notifications',
      name: 'notifications_page_app_bar_title',
      desc: '',
      args: [],
    );
  }

  /// `Welcome, {userName}`
  String home_page_app_bar_title(String userName) {
    return Intl.message(
      'Welcome, $userName',
      name: 'home_page_app_bar_title',
      desc: 'A message with a single parameter',
      args: [userName],
    );
  }

  /// `New Reservation`
  String get home_page_reservations {
    return Intl.message(
      'New Reservation',
      name: 'home_page_reservations',
      desc: '',
      args: [],
    );
  }

  /// `Car fleet`
  String get home_page_fleet {
    return Intl.message(
      'Car fleet',
      name: 'home_page_fleet',
      desc: '',
      args: [],
    );
  }

  /// `Offers and rewards`
  String get home_page_offer {
    return Intl.message(
      'Offers and rewards',
      name: 'home_page_offer',
      desc: '',
      args: [],
    );
  }

  /// `Correspondence (car documents - accidents - bank transfers - letters and inquiries).`
  String get home_page_correspondence {
    return Intl.message(
      'Correspondence (car documents - accidents - bank transfers - letters and inquiries).',
      name: 'home_page_correspondence',
      desc: '',
      args: [],
    );
  }

  /// `Join as a Partner`
  String get home_page_partner {
    return Intl.message(
      'Join as a Partner',
      name: 'home_page_partner',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get contact_us_page_app_bar_title {
    return Intl.message(
      'Contact Us',
      name: 'contact_us_page_app_bar_title',
      desc: '',
      args: [],
    );
  }

  /// `Contact us by calling`
  String get contact_us_page_call {
    return Intl.message(
      'Contact us by calling',
      name: 'contact_us_page_call',
      desc: '',
      args: [],
    );
  }

  /// `You can send us email through`
  String get contact_us_page_send_mail {
    return Intl.message(
      'You can send us email through',
      name: 'contact_us_page_send_mail',
      desc: '',
      args: [],
    );
  }

  /// `Contact us through WhatsApp messages`
  String get contact_us_page_send_msg {
    return Intl.message(
      'Contact us through WhatsApp messages',
      name: 'contact_us_page_send_msg',
      desc: '',
      args: [],
    );
  }

  /// `Social media accounts for the application`
  String get contact_us_page_social_media {
    return Intl.message(
      'Social media accounts for the application',
      name: 'contact_us_page_social_media',
      desc: '',
      args: [],
    );
  }

  /// `Correspondence`
  String get correspondense {
    return Intl.message(
      'Correspondence',
      name: 'correspondense',
      desc: '',
      args: [],
    );
  }

  /// `Customer/'s vehicle documents`
  String get customerVehicleDocuments {
    return Intl.message(
      'Customer/\'s vehicle documents',
      name: 'customerVehicleDocuments',
      desc: '',
      args: [],
    );
  }

  /// `Car Form`
  String get carForm {
    return Intl.message('Car Form', name: 'carForm', desc: '', args: []);
  }

  /// `Insurance Certificate`
  String get insuranceCertificate {
    return Intl.message(
      'Insurance Certificate',
      name: 'insuranceCertificate',
      desc: '',
      args: [],
    );
  }

  /// `Accidents`
  String get accidents {
    return Intl.message('Accidents', name: 'accidents', desc: '', args: []);
  }

  /// `Palette Number`
  String get paletteNumber {
    return Intl.message(
      'Palette Number',
      name: 'paletteNumber',
      desc: '',
      args: [],
    );
  }

  /// `Attatch photos of the accident`
  String get attachAccidentPhotos {
    return Intl.message(
      'Attatch photos of the accident',
      name: 'attachAccidentPhotos',
      desc: '',
      args: [],
    );
  }

  /// `Choose the party responsible for the accident`
  String get chooseThePartyResposibleForAccident {
    return Intl.message(
      'Choose the party responsible for the accident',
      name: 'chooseThePartyResposibleForAccident',
      desc: '',
      args: [],
    );
  }

  /// `Attatch a link to the accident report`
  String get attachLinkToAccidentReport {
    return Intl.message(
      'Attatch a link to the accident report',
      name: 'attachLinkToAccidentReport',
      desc: '',
      args: [],
    );
  }

  /// `Bank Transfers`
  String get bankTransfers {
    return Intl.message(
      'Bank Transfers',
      name: 'bankTransfers',
      desc: '',
      args: [],
    );
  }

  /// `Attach a copy of the bank transfer`
  String get attachCopyOfBankTransfer {
    return Intl.message(
      'Attach a copy of the bank transfer',
      name: 'attachCopyOfBankTransfer',
      desc: '',
      args: [],
    );
  }

  /// `The Contract/Car Number is Mandatory`
  String get theContractOrCarNumberInManadatory {
    return Intl.message(
      'The Contract/Car Number is Mandatory',
      name: 'theContractOrCarNumberInManadatory',
      desc: '',
      args: [],
    );
  }

  /// `Messages and Inquiries`
  String get messagesAndInquiries {
    return Intl.message(
      'Messages and Inquiries',
      name: 'messagesAndInquiries',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get message {
    return Intl.message('Message', name: 'message', desc: '', args: []);
  }

  /// `Message Title`
  String get messageTitle {
    return Intl.message(
      'Message Title',
      name: 'messageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Learn More >`
  String get learnMore {
    return Intl.message('Learn More >', name: 'learnMore', desc: '', args: []);
  }

  /// `Determine the current location`
  String get determineTheCurrentLocation {
    return Intl.message(
      'Determine the current location',
      name: 'determineTheCurrentLocation',
      desc: '',
      args: [],
    );
  }

  /// `Initial`
  String get intial {
    return Intl.message('Initial', name: 'intial', desc: '', args: []);
  }

  /// `Pending`
  String get pending {
    return Intl.message('Pending', name: 'pending', desc: '', args: []);
  }

  /// `Confirmed`
  String get confirmed {
    return Intl.message('Confirmed', name: 'confirmed', desc: '', args: []);
  }

  /// `In Progress`
  String get in_progress {
    return Intl.message('In Progress', name: 'in_progress', desc: '', args: []);
  }

  /// `Completed`
  String get completed {
    return Intl.message('Completed', name: 'completed', desc: '', args: []);
  }

  /// `Cancelled`
  String get cancelled {
    return Intl.message('Cancelled', name: 'cancelled', desc: '', args: []);
  }

  /// `Phone`
  String get phone {
    return Intl.message('Phone', name: 'phone', desc: '', args: []);
  }

  /// `Pickup Date / Time`
  String get pickup_date_time {
    return Intl.message(
      'Pickup Date / Time',
      name: 'pickup_date_time',
      desc: '',
      args: [],
    );
  }

  /// `Returned Date / Time`
  String get returned_date_time {
    return Intl.message(
      'Returned Date / Time',
      name: 'returned_date_time',
      desc: '',
      args: [],
    );
  }

  /// `Pickup Location`
  String get pickup_location {
    return Intl.message(
      'Pickup Location',
      name: 'pickup_location',
      desc: '',
      args: [],
    );
  }

  /// `Returned Location`
  String get returned_location {
    return Intl.message(
      'Returned Location',
      name: 'returned_location',
      desc: '',
      args: [],
    );
  }

  /// `Car Model`
  String get car_model {
    return Intl.message('Car Model', name: 'car_model', desc: '', args: []);
  }

  /// `Rental Period`
  String get rental_period {
    return Intl.message(
      'Rental Period',
      name: 'rental_period',
      desc: '',
      args: [],
    );
  }

  /// `Reservations Management`
  String get reservations_management {
    return Intl.message(
      'Reservations Management',
      name: 'reservations_management',
      desc: '',
      args: [],
    );
  }

  /// `Choosing the Package`
  String get choosing_the_package {
    return Intl.message(
      'Choosing the Package',
      name: 'choosing_the_package',
      desc: '',
      args: [],
    );
  }

  /// `Additional Services`
  String get additional_services {
    return Intl.message(
      'Additional Services',
      name: 'additional_services',
      desc: '',
      args: [],
    );
  }

  /// `Receipt`
  String get receipt {
    return Intl.message('Receipt', name: 'receipt', desc: '', args: []);
  }

  /// `Pickup Date`
  String get pickup_date {
    return Intl.message('Pickup Date', name: 'pickup_date', desc: '', args: []);
  }

  /// `Pickup Time`
  String get pickup_time {
    return Intl.message('Pickup Time', name: 'pickup_time', desc: '', args: []);
  }

  /// `Returned Date`
  String get returned_date {
    return Intl.message(
      'Returned Date',
      name: 'returned_date',
      desc: '',
      args: [],
    );
  }

  /// `Returned Time`
  String get returned_time {
    return Intl.message(
      'Returned Time',
      name: 'returned_time',
      desc: '',
      args: [],
    );
  }

  /// `Delivery`
  String get delivery {
    return Intl.message('Delivery', name: 'delivery', desc: '', args: []);
  }

  /// `Delivery Within 2 Hours`
  String get delivery_within_2_hours {
    return Intl.message(
      'Delivery Within 2 Hours',
      name: 'delivery_within_2_hours',
      desc: '',
      args: [],
    );
  }

  /// `Receive the car easily at your place and return it to the nearest branch or request the return service`
  String get delivery_within_2_hours_desc {
    return Intl.message(
      'Receive the car easily at your place and return it to the nearest branch or request the return service',
      name: 'delivery_within_2_hours_desc',
      desc: '',
      args: [],
    );
  }

  /// `Best Car Guarantee`
  String get best_car_guarantee {
    return Intl.message(
      'Best Car Guarantee',
      name: 'best_car_guarantee',
      desc: '',
      args: [],
    );
  }

  /// `We guarantee your booking with the prices. If you get a better price, we offer you a discount`
  String get best_car_guarantee_desc {
    return Intl.message(
      'We guarantee your booking with the prices. If you get a better price, we offer you a discount',
      name: 'best_car_guarantee_desc',
      desc: '',
      args: [],
    );
  }

  /// `Learn more >`
  String get learn_more {
    return Intl.message('Learn more >', name: 'learn_more', desc: '', args: []);
  }

  /// `Insurance Type`
  String get insurance_type {
    return Intl.message(
      'Insurance Type',
      name: 'insurance_type',
      desc: '',
      args: [],
    );
  }

  /// `Deductible Insurance`
  String get deductible_insurance {
    return Intl.message(
      'Deductible Insurance',
      name: 'deductible_insurance',
      desc: '',
      args: [],
    );
  }

  /// `The customer will be responsible to pay the cost of repairs in case of any damages to the car`
  String get deductible_insurance_desc {
    return Intl.message(
      'The customer will be responsible to pay the cost of repairs in case of any damages to the car',
      name: 'deductible_insurance_desc',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Booking`
  String get confirm_booking {
    return Intl.message(
      'Confirm Booking',
      name: 'confirm_booking',
      desc: '',
      args: [],
    );
  }

  /// `Day`
  String get day {
    return Intl.message('Day', name: 'day', desc: '', args: []);
  }

  /// `Special`
  String get special {
    return Intl.message('Special', name: 'special', desc: '', args: []);
  }

  /// `Woman`
  String get woman {
    return Intl.message('Woman', name: 'woman', desc: '', args: []);
  }

  /// `General`
  String get general {
    return Intl.message('General', name: 'general', desc: '', args: []);
  }

  /// `{size, select, small{Small} large{Large} medium{Medium} other{they}}`
  String size(String size) {
    return Intl.select(
      size,
      {'small': 'Small', 'large': 'Large', 'medium': 'Medium', 'other': 'they'},
      name: 'size',
      desc: 'A gendered message',
      args: [size],
    );
  }

  /// `{need, select, special{Special} woman{Woman} general{General} other{}}`
  String need(String need) {
    return Intl.select(
      need,
      {
        'special': 'Special',
        'woman': 'Woman',
        'general': 'General',
        'other': '',
      },
      name: 'need',
      desc: 'A gendered message',
      args: [need],
    );
  }

  /// `{count, plural, =1{{type, select, week{one week} month{one month} day{one day} other{}}} =2{{type, select, week{two weeks} month{two months} day{two days} other{}}} few{{count} {type, select, week{weeks} month{months} day{days} other{}}} other{{count} {type, select, week{weeks} month{months} day{days} other{}}}}`
  String date_package(num count, String type) {
    return Intl.plural(
      count,
      one:
          '{type, select, week{one week} month{one month} day{one day} other{}}',
      two:
          '{type, select, week{two weeks} month{two months} day{two days} other{}}',
      few:
          '{count} {type, select, week{weeks} month{months} day{days} other{}}',
      other:
          '{count} {type, select, week{weeks} month{months} day{days} other{}}',
      name: 'date_package',
      desc: 'A plural message with gendered pronouns',
      args: [count, type],
    );
  }

  /// `Car Details`
  String get car_details {
    return Intl.message('Car Details', name: 'car_details', desc: '', args: []);
  }

  /// `Car Fleet`
  String get car_fleet {
    return Intl.message('Car Fleet', name: 'car_fleet', desc: '', args: []);
  }

  /// `My Favorites`
  String get my_favorites {
    return Intl.message(
      'My Favorites',
      name: 'my_favorites',
      desc: '',
      args: [],
    );
  }

  /// `Voucher Code`
  String get voucher_code {
    return Intl.message(
      'Voucher Code',
      name: 'voucher_code',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get apply {
    return Intl.message('Apply', name: 'apply', desc: '', args: []);
  }

  /// `Discount`
  String get discount {
    return Intl.message('Discount', name: 'discount', desc: '', args: []);
  }

  /// `Total`
  String get total {
    return Intl.message('Total', name: 'total', desc: '', args: []);
  }

  /// `Payment Type`
  String get payment_type {
    return Intl.message(
      'Payment Type',
      name: 'payment_type',
      desc: '',
      args: [],
    );
  }

  /// `Billing Details`
  String get billing_details {
    return Intl.message(
      'Billing Details',
      name: 'billing_details',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Service for ths Route`
  String get terms_of_service_for_the_route {
    return Intl.message(
      'Terms of Service for ths Route',
      name: 'terms_of_service_for_the_route',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message('Edit', name: 'edit', desc: '', args: []);
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Receipt From`
  String get receiptFrom {
    return Intl.message(
      'Receipt From',
      name: 'receiptFrom',
      desc: '',
      args: [],
    );
  }

  /// `Receipt On`
  String get receiptOn {
    return Intl.message('Receipt On', name: 'receiptOn', desc: '', args: []);
  }

  /// `Total Price`
  String get totalPrice {
    return Intl.message('Total Price', name: 'totalPrice', desc: '', args: []);
  }

  /// `SAR`
  String get sar {
    return Intl.message('SAR', name: 'sar', desc: '', args: []);
  }

  /// `Current Reservations`
  String get currentTrips {
    return Intl.message(
      'Current Reservations',
      name: 'currentTrips',
      desc: '',
      args: [],
    );
  }

  /// `Past Reservations`
  String get pastTrips {
    return Intl.message(
      'Past Reservations',
      name: 'pastTrips',
      desc: '',
      args: [],
    );
  }

  /// `Cancel Trip`
  String get cancelTrip {
    return Intl.message('Cancel Trip', name: 'cancelTrip', desc: '', args: []);
  }

  /// `Write the reason of cancellation`
  String get writeTheReasonOfCancellation {
    return Intl.message(
      'Write the reason of cancellation',
      name: 'writeTheReasonOfCancellation',
      desc: '',
      args: [],
    );
  }

  /// `Edit Trip`
  String get editTrip {
    return Intl.message('Edit Trip', name: 'editTrip', desc: '', args: []);
  }

  /// `Choose type of modification`
  String get chooseTypeOfModification {
    return Intl.message(
      'Choose type of modification',
      name: 'chooseTypeOfModification',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message('All', name: 'all', desc: '', args: []);
  }

  /// `Car`
  String get car {
    return Intl.message('Car', name: 'car', desc: '', args: []);
  }

  /// `Timing - Location - Additional Services`
  String get timingLocationAdditionalServiceas {
    return Intl.message(
      'Timing - Location - Additional Services',
      name: 'timingLocationAdditionalServiceas',
      desc: '',
      args: [],
    );
  }

  /// `Voucher Code`
  String get voucher_field_hint {
    return Intl.message(
      'Voucher Code',
      name: 'voucher_field_hint',
      desc: '',
      args: [],
    );
  }

  /// `VAT Amount 15%`
  String get vat_amount_14_percent {
    return Intl.message(
      'VAT Amount 15%',
      name: 'vat_amount_14_percent',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Amount`
  String get delivery_amount {
    return Intl.message(
      'Delivery Amount',
      name: 'delivery_amount',
      desc: '',
      args: [],
    );
  }

  /// `Car Rental Price Per`
  String get car_rental_price_per {
    return Intl.message(
      'Car Rental Price Per',
      name: 'car_rental_price_per',
      desc: '',
      args: [],
    );
  }

  /// `Trip Details`
  String get trip_details {
    return Intl.message(
      'Trip Details',
      name: 'trip_details',
      desc: '',
      args: [],
    );
  }

  /// `Please`
  String get please {
    return Intl.message('Please', name: 'please', desc: '', args: []);
  }

  /// `Please register first to complete this process`
  String get please_register_first_to_complete_this_process {
    return Intl.message(
      'Please register first to complete this process',
      name: 'please_register_first_to_complete_this_process',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get sign_in {
    return Intl.message('Sign In', name: 'sign_in', desc: '', args: []);
  }

  /// `Returned date must be after pickup date`
  String get returned_date_must_be_after_pickup_date {
    return Intl.message(
      'Returned date must be after pickup date',
      name: 'returned_date_must_be_after_pickup_date',
      desc: '',
      args: [],
    );
  }

  /// `Pickup date must be before returned date`
  String get pickup_date_must_be_before_returned_date {
    return Intl.message(
      'Pickup date must be before returned date',
      name: 'pickup_date_must_be_before_returned_date',
      desc: '',
      args: [],
    );
  }

  /// `Order Status`
  String get order_status {
    return Intl.message(
      'Order Status',
      name: 'order_status',
      desc: '',
      args: [],
    );
  }

  /// `Cancel Reason`
  String get cancel_reason {
    return Intl.message(
      'Cancel Reason',
      name: 'cancel_reason',
      desc: '',
      args: [],
    );
  }

  /// `Pay Now`
  String get payNow {
    return Intl.message('Pay Now', name: 'payNow', desc: '', args: []);
  }

  /// `The free services you will get when renting a car:`
  String get theFreeServicesText {
    return Intl.message(
      'The free services you will get when renting a car:',
      name: 'theFreeServicesText',
      desc: '',
      args: [],
    );
  }

  /// `Please choose a location within the designated area to continue`
  String get choose_location_error {
    return Intl.message(
      'Please choose a location within the designated area to continue',
      name: 'choose_location_error',
      desc: '',
      args: [],
    );
  }

  /// `Please select a location`
  String get select_location {
    return Intl.message(
      'Please select a location',
      name: 'select_location',
      desc: '',
      args: [],
    );
  }

  /// `We need permission to access the site. Please go to settings and grant permission, and then click on Activate`
  String get location_permission_need {
    return Intl.message(
      'We need permission to access the site. Please go to settings and grant permission, and then click on Activate',
      name: 'location_permission_need',
      desc: '',
      args: [],
    );
  }

  /// `Search any city`
  String get search_any_city {
    return Intl.message(
      'Search any city',
      name: 'search_any_city',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get Edit {
    return Intl.message('Edit', name: 'Edit', desc: '', args: []);
  }

  /// `S`
  String get Small {
    return Intl.message('S', name: 'Small', desc: '', args: []);
  }

  /// `M`
  String get Medium {
    return Intl.message('M', name: 'Medium', desc: '', args: []);
  }

  /// `l`
  String get Large {
    return Intl.message('l', name: 'Large', desc: '', args: []);
  }

  /// `The links must start with http:// or https://`
  String get linkValidationText {
    return Intl.message(
      'The links must start with http:// or https://',
      name: 'linkValidationText',
      desc: '',
      args: [],
    );
  }

  /// `Order Saved successfully`
  String get order_saved_successfully {
    return Intl.message(
      'Order Saved successfully',
      name: 'order_saved_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Order booked successfully`
  String get order_booked_successfully {
    return Intl.message(
      'Order booked successfully',
      name: 'order_booked_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Order Edit successfully`
  String get order_edit_successfully {
    return Intl.message(
      'Order Edit successfully',
      name: 'order_edit_successfully',
      desc: '',
      args: [],
    );
  }

  /// `alert`
  String get extra_day_title {
    return Intl.message('alert', name: 'extra_day_title', desc: '', args: []);
  }

  /// `Extending your rental by an hour after pickup will cost an extra day. `
  String get extra_day_content {
    return Intl.message(
      'Extending your rental by an hour after pickup will cost an extra day. ',
      name: 'extra_day_content',
      desc: '',
      args: [],
    );
  }

  /// `Pickup location and time`
  String get pickup_location_and_time {
    return Intl.message(
      'Pickup location and time',
      name: 'pickup_location_and_time',
      desc: '',
      args: [],
    );
  }

  /// `Drop-off location and time`
  String get drop_off_location_and_time {
    return Intl.message(
      'Drop-off location and time',
      name: 'drop_off_location_and_time',
      desc: '',
      args: [],
    );
  }

  /// `Select language`
  String get select_language {
    return Intl.message(
      'Select language',
      name: 'select_language',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back`
  String get welcome_back {
    return Intl.message(
      'Welcome Back',
      name: 'welcome_back',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phone_number {
    return Intl.message(
      'Phone number',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your password?`
  String get forgot_your_password {
    return Intl.message(
      'Forgot your password?',
      name: 'forgot_your_password',
      desc: '',
      args: [],
    );
  }

  /// `Password recovery?`
  String get password_recovery {
    return Intl.message(
      'Password recovery?',
      name: 'password_recovery',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone number so you can receive an OTP Code to reset Password`
  String get enter_phone_for_otp {
    return Intl.message(
      'Enter your phone number so you can receive an OTP Code to reset Password',
      name: 'enter_phone_for_otp',
      desc: '',
      args: [],
    );
  }

  /// `Enter the verification code to change the password!`
  String get enter_verification_code {
    return Intl.message(
      'Enter the verification code to change the password!',
      name: 'enter_verification_code',
      desc: '',
      args: [],
    );
  }

  /// `Code are sent to +966 ****** 00`
  String get code_sent_to {
    return Intl.message(
      'Code are sent to +966 ****** 00',
      name: 'code_sent_to',
      desc: '',
      args: [],
    );
  }

  /// `Edit phone Number`
  String get edit_phone_number {
    return Intl.message(
      'Edit phone Number',
      name: 'edit_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message('Confirm', name: 'confirm', desc: '', args: []);
  }

  /// `Resend code in {timer} seconds`
  String resend_code_in(String timer) {
    return Intl.message(
      'Resend code in $timer seconds',
      name: 'resend_code_in',
      desc: 'Resend code message with timer',
      args: [timer],
    );
  }

  /// `Resend`
  String get resend {
    return Intl.message('Resend', name: 'resend', desc: '', args: []);
  }

  /// `Code reading process`
  String get code_reading_process {
    return Intl.message(
      'Code reading process',
      name: 'code_reading_process',
      desc: '',
      args: [],
    );
  }

  /// `Point the camera at the user`
  String get point_camera_at_user {
    return Intl.message(
      'Point the camera at the user',
      name: 'point_camera_at_user',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get create_account {
    return Intl.message(
      'Create Account',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `Change password`
  String get change_password {
    return Intl.message(
      'Change password',
      name: 'change_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter a new password, making sure that the password is not your name, email, or phone number`
  String get enter_new_password_info {
    return Intl.message(
      'Enter a new password, making sure that the password is not your name, email, or phone number',
      name: 'enter_new_password_info',
      desc: '',
      args: [],
    );
  }

  /// `change password`
  String get change_password_button {
    return Intl.message(
      'change password',
      name: 'change_password_button',
      desc: '',
      args: [],
    );
  }

  /// `Welcome! Let's get started`
  String get welcome_get_started {
    return Intl.message(
      'Welcome! Let\'s get started',
      name: 'welcome_get_started',
      desc: '',
      args: [],
    );
  }

  /// `Enter your data to create your account`
  String get enter_data_to_create_account {
    return Intl.message(
      'Enter your data to create your account',
      name: 'enter_data_to_create_account',
      desc: '',
      args: [],
    );
  }

  /// `Point the camera at the user's code or enter the code manually.`
  String get point_camera_or_enter_code {
    return Intl.message(
      'Point the camera at the user\'s code or enter the code manually.',
      name: 'point_camera_or_enter_code',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get ar {
    return Intl.message('Arabic', name: 'ar', desc: '', args: []);
  }

  /// `English`
  String get en {
    return Intl.message('English', name: 'en', desc: '', args: []);
  }

  /// `Email *`
  String get email_ {
    return Intl.message('Email *', name: 'email_', desc: '', args: []);
  }

  /// `Company name *`
  String get company_name {
    return Intl.message(
      'Company name *',
      name: 'company_name',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get full_name {
    return Intl.message('Full Name', name: 'full_name', desc: '', args: []);
  }

  /// `Country *`
  String get country {
    return Intl.message('Country *', name: 'country', desc: '', args: []);
  }

  /// `Government *`
  String get government {
    return Intl.message('Government *', name: 'government', desc: '', args: []);
  }

  /// `City *`
  String get city {
    return Intl.message('City *', name: 'city', desc: '', args: []);
  }

  /// `Remember me`
  String get rememberMe {
    return Intl.message('Remember me', name: 'rememberMe', desc: '', args: []);
  }

  /// `Add Maintenance Parts`
  String get add_maintenance_parts {
    return Intl.message(
      'Add Maintenance Parts',
      name: 'add_maintenance_parts',
      desc: '',
      args: [],
    );
  }

  /// `Maintenance parts *`
  String get maintenance_parts_required {
    return Intl.message(
      'Maintenance parts *',
      name: 'maintenance_parts_required',
      desc: '',
      args: [],
    );
  }

  /// `Enter Kilometer`
  String get enter_kilometer {
    return Intl.message(
      'Enter Kilometer',
      name: 'enter_kilometer',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message('Delete', name: 'delete', desc: '', args: []);
  }

  /// `Choose File`
  String get choose_file {
    return Intl.message('Choose File', name: 'choose_file', desc: '', args: []);
  }

  /// `License Front Image *`
  String get license_front_image_required {
    return Intl.message(
      'License Front Image *',
      name: 'license_front_image_required',
      desc: '',
      args: [],
    );
  }

  /// `License Back Image *`
  String get license_back_image_required {
    return Intl.message(
      'License Back Image *',
      name: 'license_back_image_required',
      desc: '',
      args: [],
    );
  }

  /// `Upload Resume (PDF/DOC/DOCX)`
  String get upload_resume {
    return Intl.message(
      'Upload Resume (PDF/DOC/DOCX)',
      name: 'upload_resume',
      desc: '',
      args: [],
    );
  }

  /// `Main Image *`
  String get main_image_required {
    return Intl.message(
      'Main Image *',
      name: 'main_image_required',
      desc: '',
      args: [],
    );
  }

  /// `Additional Images *`
  String get additional_images_required {
    return Intl.message(
      'Additional Images *',
      name: 'additional_images_required',
      desc: '',
      args: [],
    );
  }

  /// `Enter code vehicle name *`
  String get enter_code_vehicle_name {
    return Intl.message(
      'Enter code vehicle name *',
      name: 'enter_code_vehicle_name',
      desc: '',
      args: [],
    );
  }

  /// `Brands *`
  String get brands {
    return Intl.message('Brands *', name: 'brands', desc: '', args: []);
  }

  /// `Models *`
  String get models {
    return Intl.message('Models *', name: 'models', desc: '', args: []);
  }

  /// `Categories *`
  String get categories {
    return Intl.message('Categories *', name: 'categories', desc: '', args: []);
  }

  /// `Manufacture Year *`
  String get manufacture_year {
    return Intl.message(
      'Manufacture Year *',
      name: 'manufacture_year',
      desc: '',
      args: [],
    );
  }

  /// `Regional Specification *`
  String get regional_specification {
    return Intl.message(
      'Regional Specification *',
      name: 'regional_specification',
      desc: '',
      args: [],
    );
  }

  /// `Transmission Types *`
  String get transmission_types {
    return Intl.message(
      'Transmission Types *',
      name: 'transmission_types',
      desc: '',
      args: [],
    );
  }

  /// `Fuel Type *`
  String get fuel_type {
    return Intl.message('Fuel Type *', name: 'fuel_type', desc: '', args: []);
  }

  /// `Engine Capacity *`
  String get engine_capacity {
    return Intl.message(
      'Engine Capacity *',
      name: 'engine_capacity',
      desc: '',
      args: [],
    );
  }

  /// `Internal Color *`
  String get internal_color {
    return Intl.message(
      'Internal Color *',
      name: 'internal_color',
      desc: '',
      args: [],
    );
  }

  /// `External Color *`
  String get external_color {
    return Intl.message(
      'External Color *',
      name: 'external_color',
      desc: '',
      args: [],
    );
  }

  /// `Interior Features *`
  String get interior_features {
    return Intl.message(
      'Interior Features *',
      name: 'interior_features',
      desc: '',
      args: [],
    );
  }

  /// `Exterior Features *`
  String get exterior_features {
    return Intl.message(
      'Exterior Features *',
      name: 'exterior_features',
      desc: '',
      args: [],
    );
  }

  /// `Body Type *`
  String get body_type {
    return Intl.message('Body Type *', name: 'body_type', desc: '', args: []);
  }

  /// `Seats Count *`
  String get seats_count {
    return Intl.message(
      'Seats Count *',
      name: 'seats_count',
      desc: '',
      args: [],
    );
  }

  /// `Number of Cylinders *`
  String get number_of_cylinders {
    return Intl.message(
      'Number of Cylinders *',
      name: 'number_of_cylinders',
      desc: '',
      args: [],
    );
  }

  /// `Working Status *`
  String get working_status {
    return Intl.message(
      'Working Status *',
      name: 'working_status',
      desc: '',
      args: [],
    );
  }

  /// `Car Condition *`
  String get car_condition {
    return Intl.message(
      'Car Condition *',
      name: 'car_condition',
      desc: '',
      args: [],
    );
  }

  /// `Enter Kilometer *`
  String get enter_kilometer_required {
    return Intl.message(
      'Enter Kilometer *',
      name: 'enter_kilometer_required',
      desc: '',
      args: [],
    );
  }

  /// `Insurance Company *`
  String get insurance_company {
    return Intl.message(
      'Insurance Company *',
      name: 'insurance_company',
      desc: '',
      args: [],
    );
  }

  /// `Insurance Expiry Date *`
  String get insurance_expiry_date {
    return Intl.message(
      'Insurance Expiry Date *',
      name: 'insurance_expiry_date',
      desc: '',
      args: [],
    );
  }

  /// `Daily Rate *`
  String get daily_rate {
    return Intl.message('Daily Rate *', name: 'daily_rate', desc: '', args: []);
  }

  /// `License Plate *`
  String get license_plate {
    return Intl.message(
      'License Plate *',
      name: 'license_plate',
      desc: '',
      args: [],
    );
  }

  /// `Year of First Immatriculation *`
  String get first_immatriculation_year {
    return Intl.message(
      'Year of First Immatriculation *',
      name: 'first_immatriculation_year',
      desc: '',
      args: [],
    );
  }

  /// `Engine Number *`
  String get engine_number {
    return Intl.message(
      'Engine Number *',
      name: 'engine_number',
      desc: '',
      args: [],
    );
  }

  /// `Chassis Number *`
  String get chassis_number {
    return Intl.message(
      'Chassis Number *',
      name: 'chassis_number',
      desc: '',
      args: [],
    );
  }

  /// `Registration Expiry Date *`
  String get registration_expiry_date {
    return Intl.message(
      'Registration Expiry Date *',
      name: 'registration_expiry_date',
      desc: '',
      args: [],
    );
  }

  /// `Ownership Type *`
  String get ownership_type {
    return Intl.message(
      'Ownership Type *',
      name: 'ownership_type',
      desc: '',
      args: [],
    );
  }

  /// `Agency *`
  String get agency {
    return Intl.message('Agency *', name: 'agency', desc: '', args: []);
  }

  /// `Rental Days`
  String get rental_days {
    return Intl.message('Rental Days', name: 'rental_days', desc: '', args: []);
  }

  /// `Rental Cost Per Day`
  String get rental_cost_per_day {
    return Intl.message(
      'Rental Cost Per Day',
      name: 'rental_cost_per_day',
      desc: '',
      args: [],
    );
  }

  /// `Purchase Price`
  String get purchase_price {
    return Intl.message(
      'Purchase Price',
      name: 'purchase_price',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get remember_me {
    return Intl.message('Remember me', name: 'remember_me', desc: '', args: []);
  }

  /// `Vehicle characteristics`
  String get vehicle_characteristics {
    return Intl.message(
      'Vehicle characteristics',
      name: 'vehicle_characteristics',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle Information`
  String get vehicle_information {
    return Intl.message(
      'Vehicle Information',
      name: 'vehicle_information',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle documents and photos`
  String get vehicle_documents_and_photos {
    return Intl.message(
      'Vehicle documents and photos',
      name: 'vehicle_documents_and_photos',
      desc: '',
      args: [],
    );
  }

  /// `Maintenance alerts`
  String get maintenance_alerts {
    return Intl.message(
      'Maintenance alerts',
      name: 'maintenance_alerts',
      desc: '',
      args: [],
    );
  }

  /// `Engine Number *`
  String get engine_number_required {
    return Intl.message(
      'Engine Number *',
      name: 'engine_number_required',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get notes {
    return Intl.message('Notes', name: 'notes', desc: '', args: []);
  }

  /// `Contracts`
  String get contracts {
    return Intl.message('Contracts', name: 'contracts', desc: '', args: []);
  }

  /// `Payments`
  String get payments {
    return Intl.message('Payments', name: 'payments', desc: '', args: []);
  }

  /// `Locations`
  String get locations {
    return Intl.message('Locations', name: 'locations', desc: '', args: []);
  }

  /// `Customer Details`
  String get customer_details {
    return Intl.message(
      'Customer Details',
      name: 'customer_details',
      desc: '',
      args: [],
    );
  }

  /// `Personal Information`
  String get personal_information {
    return Intl.message(
      'Personal Information',
      name: 'personal_information',
      desc: '',
      args: [],
    );
  }

  /// `Contact Information`
  String get contact_information {
    return Intl.message(
      'Contact Information',
      name: 'contact_information',
      desc: '',
      args: [],
    );
  }

  /// `License Information`
  String get license_information {
    return Intl.message(
      'License Information',
      name: 'license_information',
      desc: '',
      args: [],
    );
  }

  /// `Business Information`
  String get business_information {
    return Intl.message(
      'Business Information',
      name: 'business_information',
      desc: '',
      args: [],
    );
  }

  /// `Documents`
  String get documents {
    return Intl.message('Documents', name: 'documents', desc: '', args: []);
  }

  /// `Gender`
  String get gender {
    return Intl.message('Gender', name: 'gender', desc: '', args: []);
  }

  /// `Email Address`
  String get email_address {
    return Intl.message(
      'Email Address',
      name: 'email_address',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address_field {
    return Intl.message('Address', name: 'address_field', desc: '', args: []);
  }

  /// `Country`
  String get country_field {
    return Intl.message('Country', name: 'country_field', desc: '', args: []);
  }

  /// `Identity Number`
  String get identity_number {
    return Intl.message(
      'Identity Number',
      name: 'identity_number',
      desc: '',
      args: [],
    );
  }

  /// `Primary Phone`
  String get primary_phone {
    return Intl.message(
      'Primary Phone',
      name: 'primary_phone',
      desc: '',
      args: [],
    );
  }

  /// `WhatsApp Available`
  String get whatsapp_available {
    return Intl.message(
      'WhatsApp Available',
      name: 'whatsapp_available',
      desc: '',
      args: [],
    );
  }

  /// `Additional Phone Numbers`
  String get additional_phone_numbers {
    return Intl.message(
      'Additional Phone Numbers',
      name: 'additional_phone_numbers',
      desc: '',
      args: [],
    );
  }

  /// `License Number`
  String get license_number {
    return Intl.message(
      'License Number',
      name: 'license_number',
      desc: '',
      args: [],
    );
  }

  /// `Place of Issue`
  String get place_of_issue {
    return Intl.message(
      'Place of Issue',
      name: 'place_of_issue',
      desc: '',
      args: [],
    );
  }

  /// `Issue Date`
  String get issue_date {
    return Intl.message('Issue Date', name: 'issue_date', desc: '', args: []);
  }

  /// `Expiry Date`
  String get expiry_date {
    return Intl.message('Expiry Date', name: 'expiry_date', desc: '', args: []);
  }

  /// `Customer Type`
  String get customer_type {
    return Intl.message(
      'Customer Type',
      name: 'customer_type',
      desc: '',
      args: [],
    );
  }

  /// `Company`
  String get company {
    return Intl.message('Company', name: 'company', desc: '', args: []);
  }

  /// `Notes`
  String get notes_field {
    return Intl.message('Notes', name: 'notes_field', desc: '', args: []);
  }

  /// `Not specified`
  String get not_specified {
    return Intl.message(
      'Not specified',
      name: 'not_specified',
      desc: '',
      args: [],
    );
  }

  /// `WhatsApp`
  String get whatsapp {
    return Intl.message('WhatsApp', name: 'whatsapp', desc: '', args: []);
  }

  /// `Available`
  String get available {
    return Intl.message('Available', name: 'available', desc: '', args: []);
  }

  /// `Not uploaded`
  String get not_uploaded {
    return Intl.message(
      'Not uploaded',
      name: 'not_uploaded',
      desc: '',
      args: [],
    );
  }

  /// `View`
  String get view {
    return Intl.message('View', name: 'view', desc: '', args: []);
  }

  /// `View All Documents`
  String get view_all_documents {
    return Intl.message(
      'View All Documents',
      name: 'view_all_documents',
      desc: '',
      args: [],
    );
  }

  /// `ID Card (Front Side)`
  String get id_card_front {
    return Intl.message(
      'ID Card (Front Side)',
      name: 'id_card_front',
      desc: '',
      args: [],
    );
  }

  /// `ID Card (Back Side)`
  String get id_card_back {
    return Intl.message(
      'ID Card (Back Side)',
      name: 'id_card_back',
      desc: '',
      args: [],
    );
  }

  /// `License (Front Side)`
  String get license_front {
    return Intl.message(
      'License (Front Side)',
      name: 'license_front',
      desc: '',
      args: [],
    );
  }

  /// `License (Back Side)`
  String get license_back {
    return Intl.message(
      'License (Back Side)',
      name: 'license_back',
      desc: '',
      args: [],
    );
  }

  /// `Passport Image`
  String get passport_image {
    return Intl.message(
      'Passport Image',
      name: 'passport_image',
      desc: '',
      args: [],
    );
  }

  /// `Edit Customer`
  String get edit_customer {
    return Intl.message(
      'Edit Customer',
      name: 'edit_customer',
      desc: '',
      args: [],
    );
  }

  /// `Add New Customer`
  String get add_new_customer {
    return Intl.message(
      'Add New Customer',
      name: 'add_new_customer',
      desc: '',
      args: [],
    );
  }

  /// `Personal Info`
  String get personal_info {
    return Intl.message(
      'Personal Info',
      name: 'personal_info',
      desc: '',
      args: [],
    );
  }

  /// `Contact Details`
  String get contact_details {
    return Intl.message(
      'Contact Details',
      name: 'contact_details',
      desc: '',
      args: [],
    );
  }

  /// `License Info`
  String get license_info {
    return Intl.message(
      'License Info',
      name: 'license_info',
      desc: '',
      args: [],
    );
  }

  /// `Additional Info`
  String get additional_info {
    return Intl.message(
      'Additional Info',
      name: 'additional_info',
      desc: '',
      args: [],
    );
  }

  /// `Enter personal information`
  String get enter_personal_information {
    return Intl.message(
      'Enter personal information',
      name: 'enter_personal_information',
      desc: '',
      args: [],
    );
  }

  /// `Update personal information`
  String get update_personal_information {
    return Intl.message(
      'Update personal information',
      name: 'update_personal_information',
      desc: '',
      args: [],
    );
  }

  /// `Enter contact details`
  String get enter_contact_details {
    return Intl.message(
      'Enter contact details',
      name: 'enter_contact_details',
      desc: '',
      args: [],
    );
  }

  /// `Update contact details`
  String get update_contact_details {
    return Intl.message(
      'Update contact details',
      name: 'update_contact_details',
      desc: '',
      args: [],
    );
  }

  /// `Enter license information`
  String get enter_license_information {
    return Intl.message(
      'Enter license information',
      name: 'enter_license_information',
      desc: '',
      args: [],
    );
  }

  /// `Update license information`
  String get update_license_information {
    return Intl.message(
      'Update license information',
      name: 'update_license_information',
      desc: '',
      args: [],
    );
  }

  /// `Upload documents`
  String get upload_documents {
    return Intl.message(
      'Upload documents',
      name: 'upload_documents',
      desc: '',
      args: [],
    );
  }

  /// `Update documents`
  String get update_documents {
    return Intl.message(
      'Update documents',
      name: 'update_documents',
      desc: '',
      args: [],
    );
  }

  /// `Enter additional information`
  String get enter_additional_information {
    return Intl.message(
      'Enter additional information',
      name: 'enter_additional_information',
      desc: '',
      args: [],
    );
  }

  /// `Update additional information`
  String get update_additional_information {
    return Intl.message(
      'Update additional information',
      name: 'update_additional_information',
      desc: '',
      args: [],
    );
  }

  /// `Editing Customer`
  String get editing_customer {
    return Intl.message(
      'Editing Customer',
      name: 'editing_customer',
      desc: '',
      args: [],
    );
  }

  /// `Step`
  String get step {
    return Intl.message('Step', name: 'step', desc: '', args: []);
  }

  /// `steps completed`
  String get steps_completed {
    return Intl.message(
      'steps completed',
      name: 'steps_completed',
      desc: '',
      args: [],
    );
  }

  /// `Previous`
  String get previous {
    return Intl.message('Previous', name: 'previous', desc: '', args: []);
  }

  /// `Save Customer`
  String get save_customer {
    return Intl.message(
      'Save Customer',
      name: 'save_customer',
      desc: '',
      args: [],
    );
  }

  /// `Update Customer`
  String get update_customer {
    return Intl.message(
      'Update Customer',
      name: 'update_customer',
      desc: '',
      args: [],
    );
  }

  /// `Add Another Phone`
  String get add_another_phone {
    return Intl.message(
      'Add Another Phone',
      name: 'add_another_phone',
      desc: '',
      args: [],
    );
  }

  /// `Add New Company`
  String get add_new_company {
    return Intl.message(
      'Add New Company',
      name: 'add_new_company',
      desc: '',
      args: [],
    );
  }

  /// `Have WhatsApp in same Number?`
  String get have_whatsapp_same_number {
    return Intl.message(
      'Have WhatsApp in same Number?',
      name: 'have_whatsapp_same_number',
      desc: '',
      args: [],
    );
  }

  /// `Select Gender`
  String get select_gender {
    return Intl.message(
      'Select Gender',
      name: 'select_gender',
      desc: '',
      args: [],
    );
  }

  /// `Enter customer's full name`
  String get enter_customers_full_name {
    return Intl.message(
      'Enter customer\'s full name',
      name: 'enter_customers_full_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter identity/passport number`
  String get enter_identity_passport_number {
    return Intl.message(
      'Enter identity/passport number',
      name: 'enter_identity_passport_number',
      desc: '',
      args: [],
    );
  }

  /// `Enter customer's email`
  String get enter_customers_email {
    return Intl.message(
      'Enter customer\'s email',
      name: 'enter_customers_email',
      desc: '',
      args: [],
    );
  }

  /// `Enter customer's address`
  String get enter_customers_address {
    return Intl.message(
      'Enter customer\'s address',
      name: 'enter_customers_address',
      desc: '',
      args: [],
    );
  }

  /// `Select Country`
  String get select_country {
    return Intl.message(
      'Select Country',
      name: 'select_country',
      desc: '',
      args: [],
    );
  }

  /// `Enter driving license number`
  String get enter_driving_license_number {
    return Intl.message(
      'Enter driving license number',
      name: 'enter_driving_license_number',
      desc: '',
      args: [],
    );
  }

  /// `Enter place where license was issued`
  String get enter_place_license_issued {
    return Intl.message(
      'Enter place where license was issued',
      name: 'enter_place_license_issued',
      desc: '',
      args: [],
    );
  }

  /// `Select license issue date`
  String get select_license_issue_date {
    return Intl.message(
      'Select license issue date',
      name: 'select_license_issue_date',
      desc: '',
      args: [],
    );
  }

  /// `Select license expiry date`
  String get select_license_expiry_date {
    return Intl.message(
      'Select license expiry date',
      name: 'select_license_expiry_date',
      desc: '',
      args: [],
    );
  }

  /// `Select customer classification`
  String get select_customer_classification {
    return Intl.message(
      'Select customer classification',
      name: 'select_customer_classification',
      desc: '',
      args: [],
    );
  }

  /// `Upload front side of ID card`
  String get upload_front_side_id {
    return Intl.message(
      'Upload front side of ID card',
      name: 'upload_front_side_id',
      desc: '',
      args: [],
    );
  }

  /// `Upload back side of ID card`
  String get upload_back_side_id {
    return Intl.message(
      'Upload back side of ID card',
      name: 'upload_back_side_id',
      desc: '',
      args: [],
    );
  }

  /// `Upload front side of license`
  String get upload_front_side_license {
    return Intl.message(
      'Upload front side of license',
      name: 'upload_front_side_license',
      desc: '',
      args: [],
    );
  }

  /// `Upload back side of license`
  String get upload_back_side_license {
    return Intl.message(
      'Upload back side of license',
      name: 'upload_back_side_license',
      desc: '',
      args: [],
    );
  }

  /// `Upload passport image if available`
  String get upload_passport_if_available {
    return Intl.message(
      'Upload passport image if available',
      name: 'upload_passport_if_available',
      desc: '',
      args: [],
    );
  }

  /// `Select associated company`
  String get select_associated_company {
    return Intl.message(
      'Select associated company',
      name: 'select_associated_company',
      desc: '',
      args: [],
    );
  }

  /// `Add any additional notes about the customer`
  String get add_additional_notes {
    return Intl.message(
      'Add any additional notes about the customer',
      name: 'add_additional_notes',
      desc: '',
      args: [],
    );
  }

  /// `Choose ID Front Image`
  String get choose_id_front_image {
    return Intl.message(
      'Choose ID Front Image',
      name: 'choose_id_front_image',
      desc: '',
      args: [],
    );
  }

  /// `Update ID Front Image`
  String get update_id_front_image {
    return Intl.message(
      'Update ID Front Image',
      name: 'update_id_front_image',
      desc: '',
      args: [],
    );
  }

  /// `Choose ID Back Image`
  String get choose_id_back_image {
    return Intl.message(
      'Choose ID Back Image',
      name: 'choose_id_back_image',
      desc: '',
      args: [],
    );
  }

  /// `Update ID Back Image`
  String get update_id_back_image {
    return Intl.message(
      'Update ID Back Image',
      name: 'update_id_back_image',
      desc: '',
      args: [],
    );
  }

  /// `Choose License Front Image`
  String get choose_license_front_image {
    return Intl.message(
      'Choose License Front Image',
      name: 'choose_license_front_image',
      desc: '',
      args: [],
    );
  }

  /// `Update License Front Image`
  String get update_license_front_image {
    return Intl.message(
      'Update License Front Image',
      name: 'update_license_front_image',
      desc: '',
      args: [],
    );
  }

  /// `Choose License Back Image`
  String get choose_license_back_image {
    return Intl.message(
      'Choose License Back Image',
      name: 'choose_license_back_image',
      desc: '',
      args: [],
    );
  }

  /// `Update License Back Image`
  String get update_license_back_image {
    return Intl.message(
      'Update License Back Image',
      name: 'update_license_back_image',
      desc: '',
      args: [],
    );
  }

  /// `Choose Passport Image`
  String get choose_passport_image {
    return Intl.message(
      'Choose Passport Image',
      name: 'choose_passport_image',
      desc: '',
      args: [],
    );
  }

  /// `Update Passport Image`
  String get update_passport_image {
    return Intl.message(
      'Update Passport Image',
      name: 'update_passport_image',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message('Update', name: 'update', desc: '', args: []);
  }

  /// `Enter`
  String get enter {
    return Intl.message('Enter', name: 'enter', desc: '', args: []);
  }

  /// `Options`
  String get customer_widget_options {
    return Intl.message(
      'Options',
      name: 'customer_widget_options',
      desc: '',
      args: [],
    );
  }

  /// `Edit Customer`
  String get customer_widget_edit_customer {
    return Intl.message(
      'Edit Customer',
      name: 'customer_widget_edit_customer',
      desc: '',
      args: [],
    );
  }

  /// `Modify customer information`
  String get customer_widget_modify_customer_info {
    return Intl.message(
      'Modify customer information',
      name: 'customer_widget_modify_customer_info',
      desc: '',
      args: [],
    );
  }

  /// `View Details`
  String get customer_widget_view_details {
    return Intl.message(
      'View Details',
      name: 'customer_widget_view_details',
      desc: '',
      args: [],
    );
  }

  /// `View customer information`
  String get customer_widget_view_customer_info {
    return Intl.message(
      'View customer information',
      name: 'customer_widget_view_customer_info',
      desc: '',
      args: [],
    );
  }

  /// `Block Customer`
  String get customer_widget_block_customer {
    return Intl.message(
      'Block Customer',
      name: 'customer_widget_block_customer',
      desc: '',
      args: [],
    );
  }

  /// `Temporarily block customer access`
  String get customer_widget_block_customer_desc {
    return Intl.message(
      'Temporarily block customer access',
      name: 'customer_widget_block_customer_desc',
      desc: '',
      args: [],
    );
  }

  /// `Delete Customer`
  String get customer_widget_delete_customer {
    return Intl.message(
      'Delete Customer',
      name: 'customer_widget_delete_customer',
      desc: '',
      args: [],
    );
  }

  /// `Remove customer permanently`
  String get customer_widget_delete_customer_desc {
    return Intl.message(
      'Remove customer permanently',
      name: 'customer_widget_delete_customer_desc',
      desc: '',
      args: [],
    );
  }

  /// `Delete Customer`
  String get customer_widget_delete_confirmation_title {
    return Intl.message(
      'Delete Customer',
      name: 'customer_widget_delete_confirmation_title',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete {customerName}? This action cannot be undone.`
  String customer_widget_delete_confirmation_message(String customerName) {
    return Intl.message(
      'Are you sure you want to delete $customerName? This action cannot be undone.',
      name: 'customer_widget_delete_confirmation_message',
      desc: 'Confirmation message for deleting a customer',
      args: [customerName],
    );
  }

  /// `Block Customer`
  String get customer_widget_block_confirmation_title {
    return Intl.message(
      'Block Customer',
      name: 'customer_widget_block_confirmation_title',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to block {customerName}? They will not be able to access their account until unblocked.`
  String customer_widget_block_confirmation_message(String customerName) {
    return Intl.message(
      'Are you sure you want to block $customerName? They will not be able to access their account until unblocked.',
      name: 'customer_widget_block_confirmation_message',
      desc: 'Confirmation message for blocking a customer',
      args: [customerName],
    );
  }

  /// `Cancel`
  String get customer_widget_cancel {
    return Intl.message(
      'Cancel',
      name: 'customer_widget_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get customer_widget_delete {
    return Intl.message(
      'Delete',
      name: 'customer_widget_delete',
      desc: '',
      args: [],
    );
  }

  /// `Block`
  String get customer_widget_block {
    return Intl.message(
      'Block',
      name: 'customer_widget_block',
      desc: '',
      args: [],
    );
  }

  /// `View`
  String get customer_widget_view {
    return Intl.message(
      'View',
      name: 'customer_widget_view',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get customer_widget_edit {
    return Intl.message(
      'Edit',
      name: 'customer_widget_edit',
      desc: '',
      args: [],
    );
  }

  /// `Unknown Customer`
  String get customer_widget_unknown_customer {
    return Intl.message(
      'Unknown Customer',
      name: 'customer_widget_unknown_customer',
      desc: '',
      args: [],
    );
  }

  /// `{customerName} deleted successfully`
  String customer_widget_deleted_successfully(String customerName) {
    return Intl.message(
      '$customerName deleted successfully',
      name: 'customer_widget_deleted_successfully',
      desc: 'Success message when customer is deleted',
      args: [customerName],
    );
  }

  /// `{customerName} blocked successfully`
  String customer_widget_blocked_successfully(String customerName) {
    return Intl.message(
      '$customerName blocked successfully',
      name: 'customer_widget_blocked_successfully',
      desc: 'Success message when customer is blocked',
      args: [customerName],
    );
  }

  /// `No phone`
  String get no_phone {
    return Intl.message('No phone', name: 'no_phone', desc: '', args: []);
  }

  /// `Nationality`
  String get filter_nationality {
    return Intl.message(
      'Nationality',
      name: 'filter_nationality',
      desc: '',
      args: [],
    );
  }

  /// `Company`
  String get filter_company {
    return Intl.message('Company', name: 'filter_company', desc: '', args: []);
  }

  /// `Gender`
  String get filter_gender {
    return Intl.message('Gender', name: 'filter_gender', desc: '', args: []);
  }

  /// `WhatsApp Status`
  String get filter_whatsapp_status {
    return Intl.message(
      'WhatsApp Status',
      name: 'filter_whatsapp_status',
      desc: '',
      args: [],
    );
  }

  /// `Available`
  String get filter_available {
    return Intl.message(
      'Available',
      name: 'filter_available',
      desc: '',
      args: [],
    );
  }

  /// `UnAvailable`
  String get filter_unavailable {
    return Intl.message(
      'UnAvailable',
      name: 'filter_unavailable',
      desc: '',
      args: [],
    );
  }

  /// `Search Nationality...`
  String get filter_search_nationality {
    return Intl.message(
      'Search Nationality...',
      name: 'filter_search_nationality',
      desc: '',
      args: [],
    );
  }

  /// `Search Company...`
  String get filter_search_company {
    return Intl.message(
      'Search Company...',
      name: 'filter_search_company',
      desc: '',
      args: [],
    );
  }

  /// `Search Gender...`
  String get filter_search_gender {
    return Intl.message(
      'Search Gender...',
      name: 'filter_search_gender',
      desc: '',
      args: [],
    );
  }

  /// `Advanced Filter`
  String get filter_advanced_filter {
    return Intl.message(
      'Advanced Filter',
      name: 'filter_advanced_filter',
      desc: '',
      args: [],
    );
  }

  /// `{count} filter(s) active`
  String filter_filters_active(int count) {
    return Intl.message(
      '$count filter(s) active',
      name: 'filter_filters_active',
      desc: 'Number of active filters message',
      args: [count],
    );
  }

  /// `From`
  String get filter_from {
    return Intl.message('From', name: 'filter_from', desc: '', args: []);
  }

  /// `To`
  String get filter_to {
    return Intl.message('To', name: 'filter_to', desc: '', args: []);
  }

  /// `dd/mm/yyyy`
  String get filter_date_placeholder {
    return Intl.message(
      'dd/mm/yyyy',
      name: 'filter_date_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `Clear All`
  String get filter_clear_all {
    return Intl.message(
      'Clear All',
      name: 'filter_clear_all',
      desc: '',
      args: [],
    );
  }

  /// `Apply Filters`
  String get filter_apply_filters {
    return Intl.message(
      'Apply Filters',
      name: 'filter_apply_filters',
      desc: '',
      args: [],
    );
  }

  /// `Customer updated successfully`
  String get customer_updated_successfully {
    return Intl.message(
      'Customer updated successfully',
      name: 'customer_updated_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Customer added successfully`
  String get customer_added_successfully {
    return Intl.message(
      'Customer added successfully',
      name: 'customer_added_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Full Name *`
  String get full_name_required {
    return Intl.message(
      'Full Name *',
      name: 'full_name_required',
      desc: '',
      args: [],
    );
  }

  /// `Select Gender *`
  String get select_gender_required {
    return Intl.message(
      'Select Gender *',
      name: 'select_gender_required',
      desc: '',
      args: [],
    );
  }

  /// `Identity Number *`
  String get identity_number_required {
    return Intl.message(
      'Identity Number *',
      name: 'identity_number_required',
      desc: '',
      args: [],
    );
  }

  /// `Email Address *`
  String get email_address_required {
    return Intl.message(
      'Email Address *',
      name: 'email_address_required',
      desc: '',
      args: [],
    );
  }

  /// `Address *`
  String get address_required {
    return Intl.message(
      'Address *',
      name: 'address_required',
      desc: '',
      args: [],
    );
  }

  /// `Select Country *`
  String get select_country_required {
    return Intl.message(
      'Select Country *',
      name: 'select_country_required',
      desc: '',
      args: [],
    );
  }

  /// `License Number *`
  String get license_number_required {
    return Intl.message(
      'License Number *',
      name: 'license_number_required',
      desc: '',
      args: [],
    );
  }

  /// `Place of Issue *`
  String get place_of_issue_required {
    return Intl.message(
      'Place of Issue *',
      name: 'place_of_issue_required',
      desc: '',
      args: [],
    );
  }

  /// `Issue Date *`
  String get issue_date_required {
    return Intl.message(
      'Issue Date *',
      name: 'issue_date_required',
      desc: '',
      args: [],
    );
  }

  /// `Expiry Date *`
  String get expiry_date_required {
    return Intl.message(
      'Expiry Date *',
      name: 'expiry_date_required',
      desc: '',
      args: [],
    );
  }

  /// `Customer Type *`
  String get customer_type_required {
    return Intl.message(
      'Customer Type *',
      name: 'customer_type_required',
      desc: '',
      args: [],
    );
  }

  /// `ID Card (Front) *`
  String get id_card_front_required {
    return Intl.message(
      'ID Card (Front) *',
      name: 'id_card_front_required',
      desc: '',
      args: [],
    );
  }

  /// `ID Card (Back) *`
  String get id_card_back_required {
    return Intl.message(
      'ID Card (Back) *',
      name: 'id_card_back_required',
      desc: '',
      args: [],
    );
  }

  /// `License (Front) *`
  String get license_front_required {
    return Intl.message(
      'License (Front) *',
      name: 'license_front_required',
      desc: '',
      args: [],
    );
  }

  /// `License (Back) *`
  String get license_back_required {
    return Intl.message(
      'License (Back) *',
      name: 'license_back_required',
      desc: '',
      args: [],
    );
  }

  /// `Passport Image (Optional)`
  String get passport_image_optional {
    return Intl.message(
      'Passport Image (Optional)',
      name: 'passport_image_optional',
      desc: '',
      args: [],
    );
  }

  /// `Company (Optional)`
  String get company_optional {
    return Intl.message(
      'Company (Optional)',
      name: 'company_optional',
      desc: '',
      args: [],
    );
  }

  /// `Notes (Optional)`
  String get notes_optional {
    return Intl.message(
      'Notes (Optional)',
      name: 'notes_optional',
      desc: '',
      args: [],
    );
  }

  /// `Resident`
  String get resident {
    return Intl.message('Resident', name: 'resident', desc: '', args: []);
  }

  /// `Citizen`
  String get citizen {
    return Intl.message('Citizen', name: 'citizen', desc: '', args: []);
  }

  /// `Tourist`
  String get tourist {
    return Intl.message('Tourist', name: 'tourist', desc: '', args: []);
  }

  /// `Customers`
  String get customers {
    return Intl.message('Customers', name: 'customers', desc: '', args: []);
  }

  /// `View Saved Files`
  String get view_saved_files {
    return Intl.message(
      'View Saved Files',
      name: 'view_saved_files',
      desc: '',
      args: [],
    );
  }

  /// `Please select a customer to delete`
  String get please_select_customer_to_delete {
    return Intl.message(
      'Please select a customer to delete',
      name: 'please_select_customer_to_delete',
      desc: '',
      args: [],
    );
  }

  /// `Please select customers to download`
  String get please_select_customers_to_download {
    return Intl.message(
      'Please select customers to download',
      name: 'please_select_customers_to_download',
      desc: '',
      args: [],
    );
  }

  /// `Search customers by name, email, phone, company...`
  String get search_customers_placeholder {
    return Intl.message(
      'Search customers by name, email, phone, company...',
      name: 'search_customers_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `Searching for: "{query}"`
  String searching_for(String query) {
    return Intl.message(
      'Searching for: "$query"',
      name: 'searching_for',
      desc: 'Display search query with parameter',
      args: [query],
    );
  }

  /// `Filters Applied`
  String get filters_applied {
    return Intl.message(
      'Filters Applied',
      name: 'filters_applied',
      desc: '',
      args: [],
    );
  }

  /// `{count} active filter(s) - showing filtered results`
  String active_filters_showing_results(int count) {
    return Intl.message(
      '$count active filter(s) - showing filtered results',
      name: 'active_filters_showing_results',
      desc: 'Filter status message with count',
      args: [count],
    );
  }

  /// `Clear`
  String get clear {
    return Intl.message('Clear', name: 'clear', desc: '', args: []);
  }

  /// `Filters cleared`
  String get filters_cleared {
    return Intl.message(
      'Filters cleared',
      name: 'filters_cleared',
      desc: '',
      args: [],
    );
  }

  /// `File generated successfully! Exported {count} customer(s).`
  String file_generated_successfully(int count) {
    return Intl.message(
      'File generated successfully! Exported $count customer(s).',
      name: 'file_generated_successfully',
      desc: 'File generation success message with count',
      args: [count],
    );
  }

  /// `View Files`
  String get view_files {
    return Intl.message('View Files', name: 'view_files', desc: '', args: []);
  }

  /// `{count} filter(s) applied`
  String filters_applied_count(int count) {
    return Intl.message(
      '$count filter(s) applied',
      name: 'filters_applied_count',
      desc: 'Applied filters count message',
      args: [count],
    );
  }

  /// `Export Customer Data`
  String get export_customer_data {
    return Intl.message(
      'Export Customer Data',
      name: 'export_customer_data',
      desc: '',
      args: [],
    );
  }

  /// `{count} customer(s) selected`
  String customers_selected(int count) {
    return Intl.message(
      '$count customer(s) selected',
      name: 'customers_selected',
      desc: 'Number of customers selected message',
      args: [count],
    );
  }

  /// `Choose file format:`
  String get choose_file_format {
    return Intl.message(
      'Choose file format:',
      name: 'choose_file_format',
      desc: '',
      args: [],
    );
  }

  /// `PDF Document`
  String get pdf_document {
    return Intl.message(
      'PDF Document',
      name: 'pdf_document',
      desc: '',
      args: [],
    );
  }

  /// `Professional report format`
  String get professional_report_format {
    return Intl.message(
      'Professional report format',
      name: 'professional_report_format',
      desc: '',
      args: [],
    );
  }

  /// `Excel Spreadsheet`
  String get excel_spreadsheet {
    return Intl.message(
      'Excel Spreadsheet',
      name: 'excel_spreadsheet',
      desc: '',
      args: [],
    );
  }

  /// `Data in tabular format`
  String get data_in_tabular_format {
    return Intl.message(
      'Data in tabular format',
      name: 'data_in_tabular_format',
      desc: '',
      args: [],
    );
  }

  /// `Image (PNG)`
  String get image_png {
    return Intl.message('Image (PNG)', name: 'image_png', desc: '', args: []);
  }

  /// `Visual representation`
  String get visual_representation {
    return Intl.message(
      'Visual representation',
      name: 'visual_representation',
      desc: '',
      args: [],
    );
  }

  /// `Generate`
  String get generate {
    return Intl.message('Generate', name: 'generate', desc: '', args: []);
  }

  /// `Generating...`
  String get generating {
    return Intl.message(
      'Generating...',
      name: 'generating',
      desc: '',
      args: [],
    );
  }

  /// `Failed to generate file. Please try again.`
  String get failed_to_generate_file {
    return Intl.message(
      'Failed to generate file. Please try again.',
      name: 'failed_to_generate_file',
      desc: '',
      args: [],
    );
  }

  /// `Error generating file`
  String get error_generating_file {
    return Intl.message(
      'Error generating file',
      name: 'error_generating_file',
      desc: '',
      args: [],
    );
  }

  /// `Create Inspection`
  String get create_inspection {
    return Intl.message(
      'Create Inspection',
      name: 'create_inspection',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message('Save', name: 'save', desc: '', args: []);
  }

  /// `Vehicle *`
  String get vehicle_required {
    return Intl.message(
      'Vehicle *',
      name: 'vehicle_required',
      desc: '',
      args: [],
    );
  }

  /// `Contract *`
  String get contract_required {
    return Intl.message(
      'Contract *',
      name: 'contract_required',
      desc: '',
      args: [],
    );
  }

  /// `Inspection By *`
  String get inspection_by_required {
    return Intl.message(
      'Inspection By *',
      name: 'inspection_by_required',
      desc: '',
      args: [],
    );
  }

  /// `Working Status *`
  String get working_status_required {
    return Intl.message(
      'Working Status *',
      name: 'working_status_required',
      desc: '',
      args: [],
    );
  }

  /// `Incoming Details`
  String get incoming_details {
    return Intl.message(
      'Incoming Details',
      name: 'incoming_details',
      desc: '',
      args: [],
    );
  }

  /// `Inspections Checklist`
  String get inspections_checklist {
    return Intl.message(
      'Inspections Checklist',
      name: 'inspections_checklist',
      desc: '',
      args: [],
    );
  }

  /// `Pass`
  String get pass {
    return Intl.message('Pass', name: 'pass', desc: '', args: []);
  }

  /// `No further action required. Test passed.`
  String get no_further_action_required {
    return Intl.message(
      'No further action required. Test passed.',
      name: 'no_further_action_required',
      desc: '',
      args: [],
    );
  }

  /// `Please provide cost and damage description.`
  String get please_provide_cost_and_description {
    return Intl.message(
      'Please provide cost and damage description.',
      name: 'please_provide_cost_and_description',
      desc: '',
      args: [],
    );
  }

  /// `Image`
  String get image {
    return Intl.message('Image', name: 'image', desc: '', args: []);
  }

  /// `Cost`
  String get cost {
    return Intl.message('Cost', name: 'cost', desc: '', args: []);
  }

  /// `Enter cost`
  String get enter_cost {
    return Intl.message('Enter cost', name: 'enter_cost', desc: '', args: []);
  }

  /// `Damage Description`
  String get damage_description {
    return Intl.message(
      'Damage Description',
      name: 'damage_description',
      desc: '',
      args: [],
    );
  }

  /// `Describe the damage`
  String get describe_the_damage {
    return Intl.message(
      'Describe the damage',
      name: 'describe_the_damage',
      desc: '',
      args: [],
    );
  }

  /// `Inspection Form`
  String get inspection_form {
    return Intl.message(
      'Inspection Form',
      name: 'inspection_form',
      desc: '',
      args: [],
    );
  }

  /// `Contract Information`
  String get contract_information {
    return Intl.message(
      'Contract Information',
      name: 'contract_information',
      desc: '',
      args: [],
    );
  }

  /// `Inspector Information`
  String get inspector_information {
    return Intl.message(
      'Inspector Information',
      name: 'inspector_information',
      desc: '',
      args: [],
    );
  }

  /// `Inspection Details`
  String get inspection_details {
    return Intl.message(
      'Inspection Details',
      name: 'inspection_details',
      desc: '',
      args: [],
    );
  }

  /// `Meter Reading`
  String get meter_reading {
    return Intl.message(
      'Meter Reading',
      name: 'meter_reading',
      desc: '',
      args: [],
    );
  }

  /// `Incoming Date`
  String get incoming_date {
    return Intl.message(
      'Incoming Date',
      name: 'incoming_date',
      desc: '',
      args: [],
    );
  }

  /// `Inspection Status`
  String get inspection_status {
    return Intl.message(
      'Inspection Status',
      name: 'inspection_status',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get required_field {
    return Intl.message(
      'This field is required',
      name: 'required_field',
      desc: '',
      args: [],
    );
  }

  /// `Select a vehicle for inspection`
  String get select_vehicle {
    return Intl.message(
      'Select a vehicle for inspection',
      name: 'select_vehicle',
      desc: '',
      args: [],
    );
  }

  /// `Select the rental contract`
  String get select_contract {
    return Intl.message(
      'Select the rental contract',
      name: 'select_contract',
      desc: '',
      args: [],
    );
  }

  /// `Select the inspector`
  String get select_inspector {
    return Intl.message(
      'Select the inspector',
      name: 'select_inspector',
      desc: '',
      args: [],
    );
  }

  /// `Select working status`
  String get select_working_status {
    return Intl.message(
      'Select working status',
      name: 'select_working_status',
      desc: '',
      args: [],
    );
  }

  /// `Enter inspection notes`
  String get enter_notes {
    return Intl.message(
      'Enter inspection notes',
      name: 'enter_notes',
      desc: '',
      args: [],
    );
  }

  /// `Check each item and provide details for any issues found`
  String get inspection_checklist_subtitle {
    return Intl.message(
      'Check each item and provide details for any issues found',
      name: 'inspection_checklist_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Passed`
  String get passed {
    return Intl.message('Passed', name: 'passed', desc: '', args: []);
  }

  /// `Failed`
  String get failed {
    return Intl.message('Failed', name: 'failed', desc: '', args: []);
  }

  /// `Status`
  String get inspection_item_status {
    return Intl.message(
      'Status',
      name: 'inspection_item_status',
      desc: '',
      args: [],
    );
  }

  /// `Additional Cost`
  String get additional_cost {
    return Intl.message(
      'Additional Cost',
      name: 'additional_cost',
      desc: '',
      args: [],
    );
  }

  /// `Damage Details`
  String get damage_details {
    return Intl.message(
      'Damage Details',
      name: 'damage_details',
      desc: '',
      args: [],
    );
  }

  /// `Hello, {userName}`
  String hello_user(String userName) {
    return Intl.message(
      'Hello, $userName',
      name: 'hello_user',
      desc: 'Greeting message with user name',
      args: [userName],
    );
  }

  /// `How are you today!`
  String get how_are_you_today {
    return Intl.message(
      'How are you today!',
      name: 'how_are_you_today',
      desc: '',
      args: [],
    );
  }

  /// `Search by name, phone, or email...`
  String get search_placeholder {
    return Intl.message(
      'Search by name, phone, or email...',
      name: 'search_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `Total Drivers`
  String get total_drivers {
    return Intl.message(
      'Total Drivers',
      name: 'total_drivers',
      desc: '',
      args: [],
    );
  }

  /// `Total Bookings`
  String get total_bookings {
    return Intl.message(
      'Total Bookings',
      name: 'total_bookings',
      desc: '',
      args: [],
    );
  }

  /// `Total Income`
  String get total_income {
    return Intl.message(
      'Total Income',
      name: 'total_income',
      desc: '',
      args: [],
    );
  }

  /// `Total Expenses`
  String get total_expenses {
    return Intl.message(
      'Total Expenses',
      name: 'total_expenses',
      desc: '',
      args: [],
    );
  }

  /// `Car Notifications`
  String get car_notifications {
    return Intl.message(
      'Car Notifications',
      name: 'car_notifications',
      desc: '',
      args: [],
    );
  }

  /// `Read More`
  String get read_more {
    return Intl.message('Read More', name: 'read_more', desc: '', args: []);
  }

  /// `Analysis Report`
  String get analysis_report {
    return Intl.message(
      'Analysis Report',
      name: 'analysis_report',
      desc: '',
      args: [],
    );
  }

  /// `Vehicles`
  String get vehicles {
    return Intl.message('Vehicles', name: 'vehicles', desc: '', args: []);
  }

  /// `Notification Type`
  String get notification_type {
    return Intl.message(
      'Notification Type',
      name: 'notification_type',
      desc: '',
      args: [],
    );
  }

  /// `Notification Date`
  String get notification_date {
    return Intl.message(
      'Notification Date',
      name: 'notification_date',
      desc: '',
      args: [],
    );
  }

  /// `Registration`
  String get registration {
    return Intl.message(
      'Registration',
      name: 'registration',
      desc: '',
      args: [],
    );
  }

  /// `Insurance Expiry`
  String get insurance_expiry {
    return Intl.message(
      'Insurance Expiry',
      name: 'insurance_expiry',
      desc: '',
      args: [],
    );
  }

  /// `License Expiry`
  String get license_expiry {
    return Intl.message(
      'License Expiry',
      name: 'license_expiry',
      desc: '',
      args: [],
    );
  }

  /// `Maintenance Due`
  String get maintenance_due {
    return Intl.message(
      'Maintenance Due',
      name: 'maintenance_due',
      desc: '',
      args: [],
    );
  }

  /// `Income`
  String get income {
    return Intl.message('Income', name: 'income', desc: '', args: []);
  }

  /// `Expenses`
  String get expenses {
    return Intl.message('Expenses', name: 'expenses', desc: '', args: []);
  }

  /// `Monthly Report`
  String get monthly_report {
    return Intl.message(
      'Monthly Report',
      name: 'monthly_report',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get dashboard {
    return Intl.message('Dashboard', name: 'dashboard', desc: '', args: []);
  }

  /// `Statistics`
  String get statistics {
    return Intl.message('Statistics', name: 'statistics', desc: '', args: []);
  }

  /// `Recent Activities`
  String get recent_activities {
    return Intl.message(
      'Recent Activities',
      name: 'recent_activities',
      desc: '',
      args: [],
    );
  }

  /// `Quick Actions`
  String get quick_actions {
    return Intl.message(
      'Quick Actions',
      name: 'quick_actions',
      desc: '',
      args: [],
    );
  }

  /// `Menu`
  String get menu {
    return Intl.message('Menu', name: 'menu', desc: '', args: []);
  }

  /// `Staff Management`
  String get staff_management {
    return Intl.message(
      'Staff Management',
      name: 'staff_management',
      desc: '',
      args: [],
    );
  }

  /// `Inspection`
  String get inspection {
    return Intl.message('Inspection', name: 'inspection', desc: '', args: []);
  }

  /// `Reports`
  String get reports {
    return Intl.message('Reports', name: 'reports', desc: '', args: []);
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Frequently Asked Questions`
  String get frequently_asked_questions {
    return Intl.message(
      'Frequently Asked Questions',
      name: 'frequently_asked_questions',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacy_policy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `العربية`
  String get arabic {
    return Intl.message('العربية', name: 'arabic', desc: '', args: []);
  }

  /// `English`
  String get english {
    return Intl.message('English', name: 'english', desc: '', args: []);
  }

  /// `Welcome back, {userName}!`
  String welcome_back_user(String userName) {
    return Intl.message(
      'Welcome back, $userName!',
      name: 'welcome_back_user',
      desc: 'Welcome back message with user name',
      args: [userName],
    );
  }

  /// `Search anything...`
  String get search_anything {
    return Intl.message(
      'Search anything...',
      name: 'search_anything',
      desc: '',
      args: [],
    );
  }

  /// `Filter by`
  String get filter_by {
    return Intl.message('Filter by', name: 'filter_by', desc: '', args: []);
  }

  /// `This Month`
  String get this_month {
    return Intl.message('This Month', name: 'this_month', desc: '', args: []);
  }

  /// `Last Month`
  String get last_month {
    return Intl.message('Last Month', name: 'last_month', desc: '', args: []);
  }

  /// `This Year`
  String get this_year {
    return Intl.message('This Year', name: 'this_year', desc: '', args: []);
  }

  /// `View All`
  String get view_all {
    return Intl.message('View All', name: 'view_all', desc: '', args: []);
  }

  /// `No notifications found`
  String get no_notifications {
    return Intl.message(
      'No notifications found',
      name: 'no_notifications',
      desc: '',
      args: [],
    );
  }

  /// `Mark as Read`
  String get mark_as_read {
    return Intl.message(
      'Mark as Read',
      name: 'mark_as_read',
      desc: '',
      args: [],
    );
  }

  /// `Clear All`
  String get clear_all_notifications {
    return Intl.message(
      'Clear All',
      name: 'clear_all_notifications',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `Help & Support`
  String get help_and_support {
    return Intl.message(
      'Help & Support',
      name: 'help_and_support',
      desc: '',
      args: [],
    );
  }

  /// `Inspection Overview`
  String get inspection_overview {
    return Intl.message(
      'Inspection Overview',
      name: 'inspection_overview',
      desc: '',
      args: [],
    );
  }

  /// `Summary`
  String get inspection_summary {
    return Intl.message(
      'Summary',
      name: 'inspection_summary',
      desc: '',
      args: [],
    );
  }

  /// `View Inspection Report`
  String get view_inspection_report {
    return Intl.message(
      'View Inspection Report',
      name: 'view_inspection_report',
      desc: '',
      args: [],
    );
  }

  /// `Download Report`
  String get download_report {
    return Intl.message(
      'Download Report',
      name: 'download_report',
      desc: '',
      args: [],
    );
  }

  /// `Share Report`
  String get share_report {
    return Intl.message(
      'Share Report',
      name: 'share_report',
      desc: '',
      args: [],
    );
  }

  /// `Inspection Completed`
  String get inspection_completed {
    return Intl.message(
      'Inspection Completed',
      name: 'inspection_completed',
      desc: '',
      args: [],
    );
  }

  /// `Pending Review`
  String get inspection_status_pending {
    return Intl.message(
      'Pending Review',
      name: 'inspection_status_pending',
      desc: '',
      args: [],
    );
  }

  /// `Refresh Data`
  String get refresh_data {
    return Intl.message(
      'Refresh Data',
      name: 'refresh_data',
      desc: '',
      args: [],
    );
  }

  /// `Loading inspection details...`
  String get loading_inspection_details {
    return Intl.message(
      'Loading inspection details...',
      name: 'loading_inspection_details',
      desc: '',
      args: [],
    );
  }

  /// `No inspection data available`
  String get no_inspection_data {
    return Intl.message(
      'No inspection data available',
      name: 'no_inspection_data',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get checklist_type {
    return Intl.message('Type', name: 'checklist_type', desc: '', args: []);
  }

  /// `Result`
  String get checklist_result {
    return Intl.message('Result', name: 'checklist_result', desc: '', args: []);
  }

  /// `Note`
  String get checklist_note {
    return Intl.message('Note', name: 'checklist_note', desc: '', args: []);
  }

  /// `Cost`
  String get checklist_cost {
    return Intl.message('Cost', name: 'checklist_cost', desc: '', args: []);
  }

  /// `Image`
  String get checklist_image {
    return Intl.message('Image', name: 'checklist_image', desc: '', args: []);
  }

  /// `Pass`
  String get checklist_status_pass {
    return Intl.message(
      'Pass',
      name: 'checklist_status_pass',
      desc: '',
      args: [],
    );
  }

  /// `Fail`
  String get checklist_status_fail {
    return Intl.message(
      'Fail',
      name: 'checklist_status_fail',
      desc: '',
      args: [],
    );
  }

  /// `No notes`
  String get no_notes {
    return Intl.message('No notes', name: 'no_notes', desc: '', args: []);
  }

  /// `No cost`
  String get no_cost {
    return Intl.message('No cost', name: 'no_cost', desc: '', args: []);
  }

  /// `No image`
  String get no_image {
    return Intl.message('No image', name: 'no_image', desc: '', args: []);
  }

  /// `View Image`
  String get view_image {
    return Intl.message('View Image', name: 'view_image', desc: '', args: []);
  }

  /// `Inspection Item`
  String get inspection_item {
    return Intl.message(
      'Inspection Item',
      name: 'inspection_item',
      desc: '',
      args: [],
    );
  }

  /// `Total Cost`
  String get total_cost {
    return Intl.message('Total Cost', name: 'total_cost', desc: '', args: []);
  }

  /// `Items Checked`
  String get items_checked {
    return Intl.message(
      'Items Checked',
      name: 'items_checked',
      desc: '',
      args: [],
    );
  }

  /// `Passed`
  String get passed_items {
    return Intl.message('Passed', name: 'passed_items', desc: '', args: []);
  }

  /// `Failed`
  String get failed_items {
    return Intl.message('Failed', name: 'failed_items', desc: '', args: []);
  }

  /// `Inspection Summary`
  String get inspection_checklist_summary {
    return Intl.message(
      'Inspection Summary',
      name: 'inspection_checklist_summary',
      desc: '',
      args: [],
    );
  }

  /// `Expand Details`
  String get expand_details {
    return Intl.message(
      'Expand Details',
      name: 'expand_details',
      desc: '',
      args: [],
    );
  }

  /// `Collapse Details`
  String get collapse_details {
    return Intl.message(
      'Collapse Details',
      name: 'collapse_details',
      desc: '',
      args: [],
    );
  }

  /// `Incoming Details`
  String get incoming_details_title {
    return Intl.message(
      'Incoming Details',
      name: 'incoming_details_title',
      desc: '',
      args: [],
    );
  }

  /// `Inspection Date`
  String get inspection_date {
    return Intl.message(
      'Inspection Date',
      name: 'inspection_date',
      desc: '',
      args: [],
    );
  }

  /// `Meter Reading (Km)`
  String get meter_reading_km {
    return Intl.message(
      'Meter Reading (Km)',
      name: 'meter_reading_km',
      desc: '',
      args: [],
    );
  }

  /// `Inspection By`
  String get inspection_by {
    return Intl.message(
      'Inspection By',
      name: 'inspection_by',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle Information`
  String get vehicle_info {
    return Intl.message(
      'Vehicle Information',
      name: 'vehicle_info',
      desc: '',
      args: [],
    );
  }

  /// `Contract Information`
  String get contract_info {
    return Intl.message(
      'Contract Information',
      name: 'contract_info',
      desc: '',
      args: [],
    );
  }

  /// `Inspector Information`
  String get inspector_info {
    return Intl.message(
      'Inspector Information',
      name: 'inspector_info',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get date_format {
    return Intl.message('Date', name: 'date_format', desc: '', args: []);
  }

  /// `Kilometers`
  String get kilometers {
    return Intl.message('Kilometers', name: 'kilometers', desc: '', args: []);
  }

  /// `Km`
  String get km_unit {
    return Intl.message('Km', name: 'km_unit', desc: '', args: []);
  }

  /// `Inspection Notes`
  String get inspection_notes {
    return Intl.message(
      'Inspection Notes',
      name: 'inspection_notes',
      desc: '',
      args: [],
    );
  }

  /// `No notes available`
  String get no_notes_available {
    return Intl.message(
      'No notes available',
      name: 'no_notes_available',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle`
  String get vehicle_details {
    return Intl.message('Vehicle', name: 'vehicle_details', desc: '', args: []);
  }

  /// `Inspection By`
  String get inspection_performed_by {
    return Intl.message(
      'Inspection By',
      name: 'inspection_performed_by',
      desc: '',
      args: [],
    );
  }

  /// `Repair Status`
  String get repair_status {
    return Intl.message(
      'Repair Status',
      name: 'repair_status',
      desc: '',
      args: [],
    );
  }

  /// `Contract Number`
  String get contract_number {
    return Intl.message(
      'Contract Number',
      name: 'contract_number',
      desc: '',
      args: [],
    );
  }

  /// `Generating PDF...`
  String get generating_pdf {
    return Intl.message(
      'Generating PDF...',
      name: 'generating_pdf',
      desc: '',
      args: [],
    );
  }

  /// `PDF downloaded successfully`
  String get pdf_downloaded {
    return Intl.message(
      'PDF downloaded successfully',
      name: 'pdf_downloaded',
      desc: '',
      args: [],
    );
  }

  /// `PDF shared successfully`
  String get pdf_shared {
    return Intl.message(
      'PDF shared successfully',
      name: 'pdf_shared',
      desc: '',
      args: [],
    );
  }

  /// `Download failed`
  String get download_failed {
    return Intl.message(
      'Download failed',
      name: 'download_failed',
      desc: '',
      args: [],
    );
  }

  /// `Share failed`
  String get share_failed {
    return Intl.message(
      'Share failed',
      name: 'share_failed',
      desc: '',
      args: [],
    );
  }

  /// `Storage permission is required to download files`
  String get storage_permission_denied {
    return Intl.message(
      'Storage permission is required to download files',
      name: 'storage_permission_denied',
      desc: '',
      args: [],
    );
  }

  /// `Save to Files`
  String get save_to_files {
    return Intl.message(
      'Save to Files',
      name: 'save_to_files',
      desc: '',
      args: [],
    );
  }

  /// `Save Report`
  String get save_report {
    return Intl.message('Save Report', name: 'save_report', desc: '', args: []);
  }

  /// `File saved successfully`
  String get file_saved_successfully {
    return Intl.message(
      'File saved successfully',
      name: 'file_saved_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Save failed`
  String get save_failed {
    return Intl.message('Save failed', name: 'save_failed', desc: '', args: []);
  }

  /// `Inspections`
  String get inspections {
    return Intl.message('Inspections', name: 'inspections', desc: '', args: []);
  }

  /// `Inspection List`
  String get inspection_list {
    return Intl.message(
      'Inspection List',
      name: 'inspection_list',
      desc: '',
      args: [],
    );
  }

  /// `Search inspections...`
  String get search_inspections {
    return Intl.message(
      'Search inspections...',
      name: 'search_inspections',
      desc: '',
      args: [],
    );
  }

  /// `No inspections found`
  String get no_inspections_found {
    return Intl.message(
      'No inspections found',
      name: 'no_inspections_found',
      desc: '',
      args: [],
    );
  }

  /// `inspections found`
  String get inspections_found {
    return Intl.message(
      'inspections found',
      name: 'inspections_found',
      desc: '',
      args: [],
    );
  }

  /// `Create New Inspection`
  String get create_new_inspection {
    return Intl.message(
      'Create New Inspection',
      name: 'create_new_inspection',
      desc: '',
      args: [],
    );
  }

  /// `Filter Inspections`
  String get filter_inspections {
    return Intl.message(
      'Filter Inspections',
      name: 'filter_inspections',
      desc: '',
      args: [],
    );
  }

  /// `Export Inspections`
  String get export_inspections {
    return Intl.message(
      'Export Inspections',
      name: 'export_inspections',
      desc: '',
      args: [],
    );
  }

  /// `Inspection Management`
  String get inspection_management {
    return Intl.message(
      'Inspection Management',
      name: 'inspection_management',
      desc: '',
      args: [],
    );
  }

  /// `Total Inspections`
  String get total_inspections {
    return Intl.message(
      'Total Inspections',
      name: 'total_inspections',
      desc: '',
      args: [],
    );
  }

  /// `Pending`
  String get pending_inspections {
    return Intl.message(
      'Pending',
      name: 'pending_inspections',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get completed_inspections {
    return Intl.message(
      'Completed',
      name: 'completed_inspections',
      desc: '',
      args: [],
    );
  }

  /// `Failed`
  String get failed_inspections {
    return Intl.message(
      'Failed',
      name: 'failed_inspections',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle`
  String get vehicle {
    return Intl.message('Vehicle', name: 'vehicle', desc: '', args: []);
  }

  /// `Inspected By`
  String get inspected_by {
    return Intl.message(
      'Inspected By',
      name: 'inspected_by',
      desc: '',
      args: [],
    );
  }

  /// `View Inspection`
  String get view_inspection {
    return Intl.message(
      'View Inspection',
      name: 'view_inspection',
      desc: '',
      args: [],
    );
  }

  /// `More Options`
  String get more_options {
    return Intl.message(
      'More Options',
      name: 'more_options',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get status_completed {
    return Intl.message(
      'Completed',
      name: 'status_completed',
      desc: '',
      args: [],
    );
  }

  /// `Pending`
  String get status_pending {
    return Intl.message('Pending', name: 'status_pending', desc: '', args: []);
  }

  /// `Failed`
  String get status_failed {
    return Intl.message('Failed', name: 'status_failed', desc: '', args: []);
  }

  /// `In Progress`
  String get status_in_progress {
    return Intl.message(
      'In Progress',
      name: 'status_in_progress',
      desc: '',
      args: [],
    );
  }

  /// `New`
  String get new_notifications {
    return Intl.message('New', name: 'new_notifications', desc: '', args: []);
  }

  /// `Mark All As Read`
  String get mark_all_as_read {
    return Intl.message(
      'Mark All As Read',
      name: 'mark_all_as_read',
      desc: '',
      args: [],
    );
  }

  /// `Click to see details`
  String get click_to_see_details {
    return Intl.message(
      'Click to see details',
      name: 'click_to_see_details',
      desc: '',
      args: [],
    );
  }

  /// `No notifications available`
  String get no_notifications_available {
    return Intl.message(
      'No notifications available',
      name: 'no_notifications_available',
      desc: '',
      args: [],
    );
  }

  /// `You're all caught up! No new notifications.`
  String get notifications_empty_message {
    return Intl.message(
      'You\'re all caught up! No new notifications.',
      name: 'notifications_empty_message',
      desc: '',
      args: [],
    );
  }

  /// `at {time}`
  String notification_time_format(Object time) {
    return Intl.message(
      'at $time',
      name: 'notification_time_format',
      desc: '',
      args: [time],
    );
  }

  /// `{date} at {time}`
  String notification_date_format(Object date, Object time) {
    return Intl.message(
      '$date at $time',
      name: 'notification_date_format',
      desc: '',
      args: [date, time],
    );
  }

  /// `Today`
  String get today {
    return Intl.message('Today', name: 'today', desc: '', args: []);
  }

  /// `Yesterday`
  String get yesterday {
    return Intl.message('Yesterday', name: 'yesterday', desc: '', args: []);
  }

  /// `Notification Types`
  String get notification_types {
    return Intl.message(
      'Notification Types',
      name: 'notification_types',
      desc: '',
      args: [],
    );
  }

  /// `System`
  String get system_notification {
    return Intl.message(
      'System',
      name: 'system_notification',
      desc: '',
      args: [],
    );
  }

  /// `Reminder`
  String get reminder_notification {
    return Intl.message(
      'Reminder',
      name: 'reminder_notification',
      desc: '',
      args: [],
    );
  }

  /// `Alert`
  String get alert_notification {
    return Intl.message(
      'Alert',
      name: 'alert_notification',
      desc: '',
      args: [],
    );
  }

  /// `Info`
  String get info_notification {
    return Intl.message('Info', name: 'info_notification', desc: '', args: []);
  }

  /// `Payment Management`
  String get payment_management {
    return Intl.message(
      'Payment Management',
      name: 'payment_management',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get amount {
    return Intl.message('Amount', name: 'amount', desc: '', args: []);
  }

  /// `Remaining Amount`
  String get remaining_amount {
    return Intl.message(
      'Remaining Amount',
      name: 'remaining_amount',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get payment_method {
    return Intl.message(
      'Payment Method',
      name: 'payment_method',
      desc: '',
      args: [],
    );
  }

  /// `Payment Number`
  String get payment_number {
    return Intl.message(
      'Payment Number',
      name: 'payment_number',
      desc: '',
      args: [],
    );
  }

  /// `Customer Name`
  String get customer_name {
    return Intl.message(
      'Customer Name',
      name: 'customer_name',
      desc: '',
      args: [],
    );
  }

  /// `Payment Date`
  String get payment_date {
    return Intl.message(
      'Payment Date',
      name: 'payment_date',
      desc: '',
      args: [],
    );
  }

  /// `Cash`
  String get cash_payment {
    return Intl.message('Cash', name: 'cash_payment', desc: '', args: []);
  }

  /// `Check`
  String get check_payment {
    return Intl.message('Check', name: 'check_payment', desc: '', args: []);
  }

  /// `Card`
  String get card_payment {
    return Intl.message('Card', name: 'card_payment', desc: '', args: []);
  }

  /// `Transfer`
  String get transfer_payment {
    return Intl.message(
      'Transfer',
      name: 'transfer_payment',
      desc: '',
      args: [],
    );
  }

  /// `View payment information`
  String get view_payment_details {
    return Intl.message(
      'View payment information',
      name: 'view_payment_details',
      desc: '',
      args: [],
    );
  }

  /// `Modify payment information`
  String get modify_payment_info {
    return Intl.message(
      'Modify payment information',
      name: 'modify_payment_info',
      desc: '',
      args: [],
    );
  }

  /// `Remove payment permanently`
  String get remove_payment_permanently {
    return Intl.message(
      'Remove payment permanently',
      name: 'remove_payment_permanently',
      desc: '',
      args: [],
    );
  }

  /// `Delete Payment`
  String get delete_payment {
    return Intl.message(
      'Delete Payment',
      name: 'delete_payment',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this payment? This action cannot be undone.`
  String get delete_payment_confirmation {
    return Intl.message(
      'Are you sure you want to delete this payment? This action cannot be undone.',
      name: 'delete_payment_confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Amount Paid`
  String get amount_paid {
    return Intl.message('Amount Paid', name: 'amount_paid', desc: '', args: []);
  }

  /// `Direct cash payment`
  String get direct_cash_payment {
    return Intl.message(
      'Direct cash payment',
      name: 'direct_cash_payment',
      desc: '',
      args: [],
    );
  }

  /// `Payment by check or cheque`
  String get payment_by_check_or_cheque {
    return Intl.message(
      'Payment by check or cheque',
      name: 'payment_by_check_or_cheque',
      desc: '',
      args: [],
    );
  }

  /// `Credit or debit card payment`
  String get credit_or_debit_card_payment {
    return Intl.message(
      'Credit or debit card payment',
      name: 'credit_or_debit_card_payment',
      desc: '',
      args: [],
    );
  }

  /// `Bank transfer or wire payment`
  String get bank_transfer_or_wire_payment {
    return Intl.message(
      'Bank transfer or wire payment',
      name: 'bank_transfer_or_wire_payment',
      desc: '',
      args: [],
    );
  }

  /// `cash`
  String get cash {
    return Intl.message('cash', name: 'cash', desc: '', args: []);
  }

  /// `check`
  String get check {
    return Intl.message('check', name: 'check', desc: '', args: []);
  }

  /// `card`
  String get card {
    return Intl.message('card', name: 'card', desc: '', args: []);
  }

  /// `transfer`
  String get transfer {
    return Intl.message('transfer', name: 'transfer', desc: '', args: []);
  }

  /// `Select payment method`
  String get select_payment_method {
    return Intl.message(
      'Select payment method',
      name: 'select_payment_method',
      desc: '',
      args: [],
    );
  }

  /// `Update Payment Information`
  String get update_payment_information {
    return Intl.message(
      'Update Payment Information',
      name: 'update_payment_information',
      desc: '',
      args: [],
    );
  }

  /// `Add Payment to Contract`
  String get add_payment_to_contract {
    return Intl.message(
      'Add Payment to Contract',
      name: 'add_payment_to_contract',
      desc: '',
      args: [],
    );
  }

  /// `Modify existing payment details`
  String get modify_existing_payment_details {
    return Intl.message(
      'Modify existing payment details',
      name: 'modify_existing_payment_details',
      desc: '',
      args: [],
    );
  }

  /// `Enter payment details for contract`
  String get enter_payment_details_for_contract {
    return Intl.message(
      'Enter payment details for contract',
      name: 'enter_payment_details_for_contract',
      desc: '',
      args: [],
    );
  }

  /// `Cheque Number`
  String get cheque_number {
    return Intl.message(
      'Cheque Number',
      name: 'cheque_number',
      desc: '',
      args: [],
    );
  }

  /// `Enter cheque number`
  String get enter_cheque_number {
    return Intl.message(
      'Enter cheque number',
      name: 'enter_cheque_number',
      desc: '',
      args: [],
    );
  }

  /// `Add payment notes (optional)`
  String get add_payment_notes_optional {
    return Intl.message(
      'Add payment notes (optional)',
      name: 'add_payment_notes_optional',
      desc: '',
      args: [],
    );
  }

  /// `Enter payment amount`
  String get enter_payment_amount {
    return Intl.message(
      'Enter payment amount',
      name: 'enter_payment_amount',
      desc: '',
      args: [],
    );
  }

  /// `Add New Payment`
  String get add_new_payment {
    return Intl.message(
      'Add New Payment',
      name: 'add_new_payment',
      desc: '',
      args: [],
    );
  }

  /// `Fully Paid`
  String get fully_paid {
    return Intl.message('Fully Paid', name: 'fully_paid', desc: '', args: []);
  }

  /// `Partially Paid`
  String get partially_paid {
    return Intl.message(
      'Partially Paid',
      name: 'partially_paid',
      desc: '',
      args: [],
    );
  }

  /// `Payment Status`
  String get payment_status {
    return Intl.message(
      'Payment Status',
      name: 'payment_status',
      desc: '',
      args: [],
    );
  }

  /// `Car Types`
  String get car_types {
    return Intl.message('Car Types', name: 'car_types', desc: '', args: []);
  }

  /// `Enter your name`
  String get hint_login_name {
    return Intl.message(
      'Enter your name',
      name: 'hint_login_name',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get first_name {
    return Intl.message('First Name', name: 'first_name', desc: '', args: []);
  }

  /// `Enter the first name`
  String get first_name_hint {
    return Intl.message(
      'Enter the first name',
      name: 'first_name_hint',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get last_name {
    return Intl.message('Last Name', name: 'last_name', desc: '', args: []);
  }

  /// `Enter the last name`
  String get last_name_hint {
    return Intl.message(
      'Enter the last name',
      name: 'last_name_hint',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message('Username', name: 'username', desc: '', args: []);
  }

  /// `Enter the username`
  String get username_hint {
    return Intl.message(
      'Enter the username',
      name: 'username_hint',
      desc: '',
      args: [],
    );
  }

  /// `Enter the email`
  String get email_hint {
    return Intl.message(
      'Enter the email',
      name: 'email_hint',
      desc: '',
      args: [],
    );
  }

  /// `Enter the password`
  String get password_hint {
    return Intl.message(
      'Enter the password',
      name: 'password_hint',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirm_password {
    return Intl.message(
      'Confirm Password',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter the confirm password`
  String get confirm_password_hint {
    return Intl.message(
      'Enter the confirm password',
      name: 'confirm_password_hint',
      desc: '',
      args: [],
    );
  }

  /// `Please sign in to your account`
  String get please_sign_in_to_your_account {
    return Intl.message(
      'Please sign in to your account',
      name: 'please_sign_in_to_your_account',
      desc: '',
      args: [],
    );
  }

  /// `Fill Test Data`
  String get fill_test_data {
    return Intl.message(
      'Fill Test Data',
      name: 'fill_test_data',
      desc: '',
      args: [],
    );
  }

  /// `Fill with test credentials`
  String get fill_with_test_credentials {
    return Intl.message(
      'Fill with test credentials',
      name: 'fill_with_test_credentials',
      desc: '',
      args: [],
    );
  }

  /// `Test credentials filled successfully!`
  String get test_credentials_filled {
    return Intl.message(
      'Test credentials filled successfully!',
      name: 'test_credentials_filled',
      desc: '',
      args: [],
    );
  }

  /// `Test data loaded into form fields`
  String get test_data_loaded {
    return Intl.message(
      'Test data loaded into form fields',
      name: 'test_data_loaded',
      desc: '',
      args: [],
    );
  }

  /// `Ready to login with test credentials`
  String get ready_to_login {
    return Intl.message(
      'Ready to login with test credentials',
      name: 'ready_to_login',
      desc: '',
      args: [],
    );
  }

  /// `N/A`
  String get n_a {
    return Intl.message('N/A', name: 'n_a', desc: '', args: []);
  }

  /// `Age`
  String get age {
    return Intl.message('Age', name: 'age', desc: '', args: []);
  }

  /// `Birth Date`
  String get birth_date {
    return Intl.message('Birth Date', name: 'birth_date', desc: '', args: []);
  }

  /// `Physical Information`
  String get physical_information {
    return Intl.message(
      'Physical Information',
      name: 'physical_information',
      desc: '',
      args: [],
    );
  }

  /// `Height`
  String get height {
    return Intl.message('Height', name: 'height', desc: '', args: []);
  }

  /// `Weight`
  String get weight {
    return Intl.message('Weight', name: 'weight', desc: '', args: []);
  }

  /// `Eye Color`
  String get eye_color {
    return Intl.message('Eye Color', name: 'eye_color', desc: '', args: []);
  }

  /// `Blood Group`
  String get blood_group {
    return Intl.message('Blood Group', name: 'blood_group', desc: '', args: []);
  }

  /// `Hair Color`
  String get hair_color {
    return Intl.message('Hair Color', name: 'hair_color', desc: '', args: []);
  }

  /// `Hair Type`
  String get hair_type {
    return Intl.message('Hair Type', name: 'hair_type', desc: '', args: []);
  }

  /// `Address Information`
  String get address_information {
    return Intl.message(
      'Address Information',
      name: 'address_information',
      desc: '',
      args: [],
    );
  }

  /// `State`
  String get state {
    return Intl.message('State', name: 'state', desc: '', args: []);
  }

  /// `Postal Code`
  String get postal_code {
    return Intl.message('Postal Code', name: 'postal_code', desc: '', args: []);
  }

  /// `Company Information`
  String get company_information {
    return Intl.message(
      'Company Information',
      name: 'company_information',
      desc: '',
      args: [],
    );
  }

  /// `Department`
  String get department {
    return Intl.message('Department', name: 'department', desc: '', args: []);
  }

  /// `Title`
  String get title {
    return Intl.message('Title', name: 'title', desc: '', args: []);
  }

  /// `Education`
  String get education {
    return Intl.message('Education', name: 'education', desc: '', args: []);
  }

  /// `University`
  String get university {
    return Intl.message('University', name: 'university', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
