// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
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
  String get localeName => 'ar';

  static String m0(count) => "${count} مرشح(ات) نشط - عرض النتائج المفلترة";

  static String m1(percent) => "${percent}%";

  static String m2(customerName) =>
      "هل أنت متأكد من حظر ${customerName}؟ لن يتمكن من الوصول إلى حسابه حتى يتم إلغاء الحظر.";

  static String m3(customerName) => "تم حظر ${customerName} بنجاح";

  static String m4(customerName) =>
      "هل أنت متأكد من حذف ${customerName}؟ لا يمكن التراجع عن هذا الإجراء.";

  static String m5(customerName) => "تم حذف ${customerName} بنجاح";

  static String m6(count) => "تم اختيار ${count} عميل(عملاء)";

  static String m7(count, type) =>
      "{count, plural, =1{{type, select, week{أسبوع واحد} month{شهر واحد} day{يوم واحد} other{}}} =2{{type, select, week{أسبوعين} month{شهرين} day{يومين} other{}}} few{{${count} {type, select, week{أسابيع} month{أشهر} day{أيام} other{}}} other{{${count} {type, select, week{أسبوع} month{شهر} day{يوم} other{}}}}";

  static String m8(count) =>
      "تم إنشاء الملف بنجاح! تم تصدير ${count} عميل(عملاء).";

  static String m9(count) => "${count} فلتر نشط";

  static String m10(count) => "تم تطبيق ${count} مرشح(ات)";

  static String m11(userName) => "مرحباً، ${userName}";

  static String m12(userName) => "مرحباً، ${userName}";

  static String m13(need) =>
      "${Intl.select(need, {'special': 'خاص', 'woman': 'نساء', 'general': 'عام', 'other': ''})}";

  static String m14(date, time) => "${date} في ${time}";

  static String m15(time) => "في ${time}";

  static String m16(timer) => "إعادة إرسال الرمز خلال ${timer} ثانية";

  static String m17(query) => "البحث عن: \"${query}\"";

  static String m18(size) =>
      "${Intl.select(size, {'small': 'صغير', 'large': 'كبير', 'medium': 'متوسط', 'other': 'they'})}";

  static String m19(userName) => "مرحباً بعودتك، ${userName}!";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "Edit": MessageLookupByLibrary.simpleMessage("تعديل"),
    "Large": MessageLookupByLibrary.simpleMessage("ك"),
    "Medium": MessageLookupByLibrary.simpleMessage("م"),
    "Small": MessageLookupByLibrary.simpleMessage("ص"),
    "Vision_mission": MessageLookupByLibrary.simpleMessage("الرؤية والرسالة"),
    "aboutUs": MessageLookupByLibrary.simpleMessage("معلومات عنا"),
    "accidents": MessageLookupByLibrary.simpleMessage("الحوادث"),
    "active_filters_showing_results": m0,
    "add_additional_notes": MessageLookupByLibrary.simpleMessage(
      "أضف أي ملاحظات إضافية حول العميل",
    ),
    "add_another_phone": MessageLookupByLibrary.simpleMessage(
      "إضافة رقم هاتف آخر",
    ),
    "add_maintenance_parts": MessageLookupByLibrary.simpleMessage(
      "إضافة قطع الصيانة",
    ),
    "add_new_company": MessageLookupByLibrary.simpleMessage("إضافة شركة جديدة"),
    "add_new_customer": MessageLookupByLibrary.simpleMessage("إضافة عميل جديد"),
    "add_new_payment": MessageLookupByLibrary.simpleMessage("إضافة دفعة جديدة"),
    "add_payment_notes_optional": MessageLookupByLibrary.simpleMessage(
      "أضف ملاحظات الدفع (اختياري)",
    ),
    "add_payment_to_contract": MessageLookupByLibrary.simpleMessage(
      "إضافة دفعة إلى العقد",
    ),
    "additional_cost": MessageLookupByLibrary.simpleMessage("تكلفة إضافية"),
    "additional_images_required": MessageLookupByLibrary.simpleMessage(
      "صور إضافية *",
    ),
    "additional_info": MessageLookupByLibrary.simpleMessage("معلومات إضافية"),
    "additional_phone_numbers": MessageLookupByLibrary.simpleMessage(
      "أرقام الهواتف الإضافية",
    ),
    "additional_services": MessageLookupByLibrary.simpleMessage("خدمات إضافية"),
    "address": MessageLookupByLibrary.simpleMessage("العنوان"),
    "address_field": MessageLookupByLibrary.simpleMessage("العنوان"),
    "address_information": MessageLookupByLibrary.simpleMessage(
      "معلومات العنوان",
    ),
    "address_required": MessageLookupByLibrary.simpleMessage("العنوان *"),
    "age": MessageLookupByLibrary.simpleMessage("العمر"),
    "agency": MessageLookupByLibrary.simpleMessage("الوكالة *"),
    "alert_dialog_otp_body_title": MessageLookupByLibrary.simpleMessage(
      "تم التحقق",
    ),
    "alert_dialog_otp_desc_title": MessageLookupByLibrary.simpleMessage(
      "تم التحقق من حسابك بنجاح",
    ),
    "alert_notification": MessageLookupByLibrary.simpleMessage("تنبيه"),
    "alert_submit_return": MessageLookupByLibrary.simpleMessage(
      "عند تأكيد الخروج من هذه الصفحة ستفقد كل بياناتك التي قمت بتسجيلها، هل تود تأكيد هذا الأمر؟",
    ),
    "alert_title_title": MessageLookupByLibrary.simpleMessage("تحذير"),
    "alert_verify_phone_return": MessageLookupByLibrary.simpleMessage(
      "لم يتم التأكد من رقم هاتفك بعد، تم ارسال كود التفعيل على رقم هاتفك المسجل لدينا، وسيتم تحويلك لصفحة التفعيل",
    ),
    "all": MessageLookupByLibrary.simpleMessage("الكل"),
    "alreadyHaveAccount": MessageLookupByLibrary.simpleMessage(
      "لدي حساب بالفعل؟",
    ),
    "amount": MessageLookupByLibrary.simpleMessage("المبلغ"),
    "amount_paid": MessageLookupByLibrary.simpleMessage("المبلغ المدفوع"),
    "analysis_report": MessageLookupByLibrary.simpleMessage("تقرير التحليل"),
    "appTitle": MessageLookupByLibrary.simpleMessage("ON"),
    "apply": MessageLookupByLibrary.simpleMessage("تطبيق"),
    "ar": MessageLookupByLibrary.simpleMessage("العربية"),
    "arabic": MessageLookupByLibrary.simpleMessage("العربية"),
    "attachAccidentPhotos": MessageLookupByLibrary.simpleMessage(
      "أرفق صور الحادث",
    ),
    "attachCopyOfBankTransfer": MessageLookupByLibrary.simpleMessage(
      "أرفق نسخة من التحويل البنكي",
    ),
    "attachLinkToAccidentReport": MessageLookupByLibrary.simpleMessage(
      "أرفق رابط تقرير الحادث",
    ),
    "available": MessageLookupByLibrary.simpleMessage("متاح"),
    "back": MessageLookupByLibrary.simpleMessage("خلف"),
    "bad_certificate_message": MessageLookupByLibrary.simpleMessage(
      "فشل التحقق من الشهادة. يرجى التأكد من أنك متصل بشبكة آمنة والمحاولة مرة أخرى",
    ),
    "bad_gateway_502_message": MessageLookupByLibrary.simpleMessage(
      "تلقى الخادم العامل كمعوّل أو بروكسي استجابة غير صالحة من الخادم الأعلى",
    ),
    "bankTransfers": MessageLookupByLibrary.simpleMessage("التحويلات البنكية"),
    "bank_transfer_or_wire_payment": MessageLookupByLibrary.simpleMessage(
      "التحويل البنكي أو الدفع عبر الحوالة",
    ),
    "bestOffers": MessageLookupByLibrary.simpleMessage("أفضل العروض"),
    "best_car_guarantee": MessageLookupByLibrary.simpleMessage(
      "ضمان أفضل سيارة",
    ),
    "best_car_guarantee_desc": MessageLookupByLibrary.simpleMessage(
      "نضمن لك الحجز بأسعار مناسبة، إذا حصلت على سعر أفضل نقدم لك خصمًا",
    ),
    "billing_details": MessageLookupByLibrary.simpleMessage("تفاصيل الفاتورة"),
    "birth_date": MessageLookupByLibrary.simpleMessage("تاريخ الميلاد"),
    "blood_group": MessageLookupByLibrary.simpleMessage("فصيلة الدم"),
    "body_type": MessageLookupByLibrary.simpleMessage("نوع الهيكل *"),
    "booking": MessageLookupByLibrary.simpleMessage("الحجوزات"),
    "branchPickUp": MessageLookupByLibrary.simpleMessage("استلام من الفرع"),
    "brands": MessageLookupByLibrary.simpleMessage("العلامات التجارية *"),
    "business_information": MessageLookupByLibrary.simpleMessage(
      "معلومات الأعمال",
    ),
    "button_accepting_order_title": MessageLookupByLibrary.simpleMessage(
      "قبول الطلب",
    ),
    "button_activate_title": MessageLookupByLibrary.simpleMessage("تفعيل"),
    "button_agree_title": MessageLookupByLibrary.simpleMessage("موافقة"),
    "button_cancel_title": MessageLookupByLibrary.simpleMessage("إلغاء"),
    "button_click_here_title": MessageLookupByLibrary.simpleMessage("اضغط هنا"),
    "button_continue_title": MessageLookupByLibrary.simpleMessage("استمرار"),
    "button_data_processing_title": MessageLookupByLibrary.simpleMessage(
      "جاري معالجة البيانات، برجاء الانتظار...",
    ),
    "button_done_title": MessageLookupByLibrary.simpleMessage("حسناً"),
    "button_filter_title": MessageLookupByLibrary.simpleMessage("تصفية"),
    "button_finish_title": MessageLookupByLibrary.simpleMessage("إنهاء"),
    "button_next_title": MessageLookupByLibrary.simpleMessage("التالي"),
    "button_no_title": MessageLookupByLibrary.simpleMessage("لا "),
    "button_please_waite_title": m1,
    "button_preview_title": MessageLookupByLibrary.simpleMessage("عرض الكل"),
    "button_previous_title": MessageLookupByLibrary.simpleMessage("السابق"),
    "button_request_reviewing_title": MessageLookupByLibrary.simpleMessage(
      "طلب معاينة",
    ),
    "button_reset_title": MessageLookupByLibrary.simpleMessage("حذف الكل"),
    "button_retry_title": MessageLookupByLibrary.simpleMessage(
      "إعادة المحاولة",
    ),
    "button_review_title": MessageLookupByLibrary.simpleMessage("قيمنا"),
    "button_save_change_title": MessageLookupByLibrary.simpleMessage(
      "حفظ التغيير",
    ),
    "button_save_date_title": MessageLookupByLibrary.simpleMessage(
      " حفظ البيانات",
    ),
    "button_save_title": MessageLookupByLibrary.simpleMessage("حفظ"),
    "button_show_details_title": MessageLookupByLibrary.simpleMessage(
      "التفاصيل",
    ),
    "button_skip_title": MessageLookupByLibrary.simpleMessage("تخطي"),
    "button_submit_title": MessageLookupByLibrary.simpleMessage("تأكيد"),
    "button_yes_title": MessageLookupByLibrary.simpleMessage("نعم"),
    "camera": MessageLookupByLibrary.simpleMessage("كاميرا"),
    "cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
    "cancelTrip": MessageLookupByLibrary.simpleMessage("إلغاء الرحلة"),
    "cancel_error_message": MessageLookupByLibrary.simpleMessage(
      "تم إلغاء الطلب",
    ),
    "cancel_reason": MessageLookupByLibrary.simpleMessage("سبب الإلغاء"),
    "cancelled": MessageLookupByLibrary.simpleMessage("ملغى"),
    "car": MessageLookupByLibrary.simpleMessage("السيارة"),
    "carDelivery": MessageLookupByLibrary.simpleMessage("توصيل السيارة"),
    "carForm": MessageLookupByLibrary.simpleMessage("نموذج السيارة"),
    "car_condition": MessageLookupByLibrary.simpleMessage("حالة السيارة *"),
    "car_details": MessageLookupByLibrary.simpleMessage("تفاصيل السيارة"),
    "car_fleet": MessageLookupByLibrary.simpleMessage("أسطول السيارات"),
    "car_model": MessageLookupByLibrary.simpleMessage("طراز السيارة"),
    "car_notifications": MessageLookupByLibrary.simpleMessage(
      "إشعارات السيارات",
    ),
    "car_rental_price_per": MessageLookupByLibrary.simpleMessage(
      "سعر تأجير السيارة لكل",
    ),
    "car_types": MessageLookupByLibrary.simpleMessage("أنواع السيارات"),
    "card": MessageLookupByLibrary.simpleMessage("بطاقة"),
    "card_payment": MessageLookupByLibrary.simpleMessage("بطاقة"),
    "cash": MessageLookupByLibrary.simpleMessage("نقدًا"),
    "cash_payment": MessageLookupByLibrary.simpleMessage("نقداً"),
    "categories": MessageLookupByLibrary.simpleMessage("الفئات *"),
    "changePassword": MessageLookupByLibrary.simpleMessage("تغيير كلمة المرور"),
    "change_password": MessageLookupByLibrary.simpleMessage(
      "تغيير كلمة المرور",
    ),
    "change_password_button": MessageLookupByLibrary.simpleMessage(
      "تغيير كلمة المرور",
    ),
    "chassis_number": MessageLookupByLibrary.simpleMessage("رقم الهيكل *"),
    "check": MessageLookupByLibrary.simpleMessage("شيك"),
    "check_connection_message": MessageLookupByLibrary.simpleMessage(
      "تحقق من اتصالك بالانترنت",
    ),
    "check_payment": MessageLookupByLibrary.simpleMessage("شيك"),
    "checklist_cost": MessageLookupByLibrary.simpleMessage("التكلفة"),
    "checklist_image": MessageLookupByLibrary.simpleMessage("الصورة"),
    "checklist_note": MessageLookupByLibrary.simpleMessage("الملاحظة"),
    "checklist_result": MessageLookupByLibrary.simpleMessage("النتيجة"),
    "checklist_status_fail": MessageLookupByLibrary.simpleMessage("فشل"),
    "checklist_status_pass": MessageLookupByLibrary.simpleMessage("نجح"),
    "checklist_type": MessageLookupByLibrary.simpleMessage("النوع"),
    "cheque_number": MessageLookupByLibrary.simpleMessage("رقم الشيك"),
    "chooseThePartyResposibleForAccident": MessageLookupByLibrary.simpleMessage(
      "اختر الطرف المسؤول عن الحادث",
    ),
    "chooseTypeOfModification": MessageLookupByLibrary.simpleMessage(
      "اختر نوع التعديل",
    ),
    "choose_file": MessageLookupByLibrary.simpleMessage("اختر ملف"),
    "choose_file_format": MessageLookupByLibrary.simpleMessage(
      "اختر تنسيق الملف:",
    ),
    "choose_id_back_image": MessageLookupByLibrary.simpleMessage(
      "اختر صورة الهوية الخلفية",
    ),
    "choose_id_front_image": MessageLookupByLibrary.simpleMessage(
      "اختر صورة الهوية الأمامية",
    ),
    "choose_license_back_image": MessageLookupByLibrary.simpleMessage(
      "اختر صورة الرخصة الخلفية",
    ),
    "choose_license_front_image": MessageLookupByLibrary.simpleMessage(
      "اختر صورة الرخصة الأمامية",
    ),
    "choose_location_error": MessageLookupByLibrary.simpleMessage(
      "يرجى اختيار موقع داخل المنطقة المحددة للمتابعة",
    ),
    "choose_passport_image": MessageLookupByLibrary.simpleMessage(
      "اختر صورة جواز السفر",
    ),
    "choosing_the_package": MessageLookupByLibrary.simpleMessage(
      "اختيار الباقة",
    ),
    "citizen": MessageLookupByLibrary.simpleMessage("مواطن"),
    "city": MessageLookupByLibrary.simpleMessage("المدينة *"),
    "civilId": MessageLookupByLibrary.simpleMessage("الهوية المدنية"),
    "clear": MessageLookupByLibrary.simpleMessage("مسح الكل"),
    "clear_all_notifications": MessageLookupByLibrary.simpleMessage("مسح الكل"),
    "click_to_see_details": MessageLookupByLibrary.simpleMessage(
      "انقر لرؤية التفاصيل",
    ),
    "client_closed_request_499_message": MessageLookupByLibrary.simpleMessage(
      "أغلق العميل الطلب قبل أن يتمكن الخادم من إرسال رد",
    ),
    "code_reading_process": MessageLookupByLibrary.simpleMessage(
      "جاري قراءة الرمز",
    ),
    "code_sent_to": MessageLookupByLibrary.simpleMessage(
      "تم إرسال الرمز إلى +966 ****** 00",
    ),
    "collapse_details": MessageLookupByLibrary.simpleMessage("طي التفاصيل"),
    "company": MessageLookupByLibrary.simpleMessage("الشركة"),
    "company_information": MessageLookupByLibrary.simpleMessage(
      "معلومات الشركة",
    ),
    "company_name": MessageLookupByLibrary.simpleMessage("اسم الشركة *"),
    "company_optional": MessageLookupByLibrary.simpleMessage(
      "الشركة (اختياري)",
    ),
    "completed": MessageLookupByLibrary.simpleMessage("مكتمل"),
    "completed_inspections": MessageLookupByLibrary.simpleMessage("مكتمل"),
    "confirm": MessageLookupByLibrary.simpleMessage("تأكيد"),
    "confirmNewPassword": MessageLookupByLibrary.simpleMessage(
      "تأكيد كلمة المرور الجديدة",
    ),
    "confirmPassword": MessageLookupByLibrary.simpleMessage(
      "تأكيد كلمة المرور",
    ),
    "confirmPasswordDontMatch": MessageLookupByLibrary.simpleMessage(
      "تأكيد كلمة المرور غير متطابق",
    ),
    "confirm_booking": MessageLookupByLibrary.simpleMessage("تأكيد الحجز"),
    "confirm_password": MessageLookupByLibrary.simpleMessage(
      "تأكيد كلمة المرور",
    ),
    "confirm_password_hint": MessageLookupByLibrary.simpleMessage(
      "أدخل تأكيد كلمة المرور",
    ),
    "confirmed": MessageLookupByLibrary.simpleMessage("مؤكد"),
    "conflict_409_message": MessageLookupByLibrary.simpleMessage(
      "لا يمكن إكمال الطلب بسبب صدام مع الحالة الحالية للمورد",
    ),
    "congratulations": MessageLookupByLibrary.simpleMessage("تهانينا"),
    "connect_timeout_message": MessageLookupByLibrary.simpleMessage(
      "انتهت مهلة الاتصال. يرجى التحقق من اتصال الإنترنت الخاص بك والمحاولة مرة أخرى",
    ),
    "connection_closed_without_response_444_message":
        MessageLookupByLibrary.simpleMessage(
          "أغلق الخادم الاتصال دون إرسال أي رد",
        ),
    "connection_error_message": MessageLookupByLibrary.simpleMessage(
      "غير قادر على إنشاء اتصال. يرجى المحاولة مرة أخرى",
    ),
    "contactUs": MessageLookupByLibrary.simpleMessage("اتصل بنا"),
    "contact_details": MessageLookupByLibrary.simpleMessage("تفاصيل الاتصال"),
    "contact_information": MessageLookupByLibrary.simpleMessage(
      "معلومات الاتصال",
    ),
    "contact_us_page_app_bar_title": MessageLookupByLibrary.simpleMessage(
      "تواصل معنا",
    ),
    "contact_us_page_call": MessageLookupByLibrary.simpleMessage(
      "اتصل بنا عبر الهاتف",
    ),
    "contact_us_page_send_mail": MessageLookupByLibrary.simpleMessage(
      "تواصل معنا عبر البريد الإلكتروني",
    ),
    "contact_us_page_send_msg": MessageLookupByLibrary.simpleMessage(
      "تواصل معنا عبر رسائل WhatsApp",
    ),
    "contact_us_page_social_media": MessageLookupByLibrary.simpleMessage(
      "حسابات وسائل التواصل الاجتماعي للتطبيق",
    ),
    "continue_100_message": MessageLookupByLibrary.simpleMessage(
      "تابع مع الطلب",
    ),
    "contract_info": MessageLookupByLibrary.simpleMessage("معلومات العقد"),
    "contract_information": MessageLookupByLibrary.simpleMessage(
      "معلومات العقد",
    ),
    "contract_number": MessageLookupByLibrary.simpleMessage("رقم العقد"),
    "contract_required": MessageLookupByLibrary.simpleMessage("العقد *"),
    "correspondense": MessageLookupByLibrary.simpleMessage("المراسلات"),
    "cost": MessageLookupByLibrary.simpleMessage("التكلفة"),
    "country": MessageLookupByLibrary.simpleMessage("الدولة *"),
    "country_field": MessageLookupByLibrary.simpleMessage("الدولة"),
    "country_not_available": MessageLookupByLibrary.simpleMessage(
      "كلمات البحث لا تطابق مع الدول المتاحه لدينا",
    ),
    "createPassword": MessageLookupByLibrary.simpleMessage(
      "إنشاء كلمة مرور جديدة",
    ),
    "create_account": MessageLookupByLibrary.simpleMessage("إنشاء حساب"),
    "create_inspection": MessageLookupByLibrary.simpleMessage("إنشاء فحص"),
    "create_new_inspection": MessageLookupByLibrary.simpleMessage(
      "إنشاء فحص جديد",
    ),
    "credit_or_debit_card_payment": MessageLookupByLibrary.simpleMessage(
      "الدفع بواسطة بطاقة ائتمان أو خصم",
    ),
    "currentTrips": MessageLookupByLibrary.simpleMessage("الحجوزات الحالية"),
    "customerVehicleDocuments": MessageLookupByLibrary.simpleMessage(
      "وثائق السيارة",
    ),
    "customer_added_successfully": MessageLookupByLibrary.simpleMessage(
      "تم إضافة العميل بنجاح",
    ),
    "customer_details": MessageLookupByLibrary.simpleMessage("تفاصيل العميل"),
    "customer_name": MessageLookupByLibrary.simpleMessage("اسم العميل"),
    "customer_type": MessageLookupByLibrary.simpleMessage("نوع العميل"),
    "customer_type_required": MessageLookupByLibrary.simpleMessage(
      "نوع العميل *",
    ),
    "customer_updated_successfully": MessageLookupByLibrary.simpleMessage(
      "تم تحديث العميل بنجاح",
    ),
    "customer_widget_block": MessageLookupByLibrary.simpleMessage("حظر"),
    "customer_widget_block_confirmation_message": m2,
    "customer_widget_block_confirmation_title":
        MessageLookupByLibrary.simpleMessage("حظر العميل"),
    "customer_widget_block_customer": MessageLookupByLibrary.simpleMessage(
      "حظر العميل",
    ),
    "customer_widget_block_customer_desc": MessageLookupByLibrary.simpleMessage(
      "حظر وصول العميل مؤقتاً",
    ),
    "customer_widget_blocked_successfully": m3,
    "customer_widget_cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
    "customer_widget_delete": MessageLookupByLibrary.simpleMessage("حذف"),
    "customer_widget_delete_confirmation_message": m4,
    "customer_widget_delete_confirmation_title":
        MessageLookupByLibrary.simpleMessage("حذف العميل"),
    "customer_widget_delete_customer": MessageLookupByLibrary.simpleMessage(
      "حذف العميل",
    ),
    "customer_widget_delete_customer_desc":
        MessageLookupByLibrary.simpleMessage("إزالة العميل نهائياً"),
    "customer_widget_deleted_successfully": m5,
    "customer_widget_edit": MessageLookupByLibrary.simpleMessage("تعديل"),
    "customer_widget_edit_customer": MessageLookupByLibrary.simpleMessage(
      "تعديل العميل",
    ),
    "customer_widget_modify_customer_info":
        MessageLookupByLibrary.simpleMessage("تعديل معلومات العميل"),
    "customer_widget_options": MessageLookupByLibrary.simpleMessage("الخيارات"),
    "customer_widget_unknown_customer": MessageLookupByLibrary.simpleMessage(
      "عميل غير معروف",
    ),
    "customer_widget_view": MessageLookupByLibrary.simpleMessage("عرض"),
    "customer_widget_view_customer_info": MessageLookupByLibrary.simpleMessage(
      "عرض معلومات العميل",
    ),
    "customer_widget_view_details": MessageLookupByLibrary.simpleMessage(
      "عرض التفاصيل",
    ),
    "customers": MessageLookupByLibrary.simpleMessage("العملاء"),
    "customers_selected": m6,
    "daily_rate": MessageLookupByLibrary.simpleMessage("السعر اليومي *"),
    "damage_description": MessageLookupByLibrary.simpleMessage("وصف الضرر"),
    "damage_details": MessageLookupByLibrary.simpleMessage("تفاصيل الضرر"),
    "dashboard": MessageLookupByLibrary.simpleMessage("لوحة التحكم"),
    "data_in_tabular_format": MessageLookupByLibrary.simpleMessage(
      "البيانات في تنسيق جدولي",
    ),
    "date_format": MessageLookupByLibrary.simpleMessage("التاريخ"),
    "date_package": m7,
    "day": MessageLookupByLibrary.simpleMessage("يوم"),
    "deals": MessageLookupByLibrary.simpleMessage("الصفقات"),
    "deductible_insurance": MessageLookupByLibrary.simpleMessage(
      "تأمين قابل للخصم",
    ),
    "deductible_insurance_desc": MessageLookupByLibrary.simpleMessage(
      "سيكون العميل مسؤولاً عن دفع تكاليف الإصلاح في حالة حدوث أي أضرار للسيارة",
    ),
    "delete": MessageLookupByLibrary.simpleMessage("حذف"),
    "deleteAccount": MessageLookupByLibrary.simpleMessage("حذف الحساب"),
    "deleteAccountMsg": MessageLookupByLibrary.simpleMessage(
      "هل أنت متأكد أنك تريد حذف حسابك نهائياً؟",
    ),
    "delete_payment": MessageLookupByLibrary.simpleMessage("حذف الدفعة"),
    "delete_payment_confirmation": MessageLookupByLibrary.simpleMessage(
      "هل أنت متأكد من حذف هذه الدفعة؟ لا يمكن التراجع عن هذا الإجراء.",
    ),
    "delivery": MessageLookupByLibrary.simpleMessage("توصيل"),
    "delivery_amount": MessageLookupByLibrary.simpleMessage("مبلغ التوصيل"),
    "delivery_within_2_hours": MessageLookupByLibrary.simpleMessage(
      "التوصيل خلال ساعتين",
    ),
    "delivery_within_2_hours_desc": MessageLookupByLibrary.simpleMessage(
      "استلم السيارة بسهولة في مكانك وأعدها إلى أقرب فرع أو اطلب خدمة الإرجاع",
    ),
    "department": MessageLookupByLibrary.simpleMessage("القسم"),
    "describe_the_damage": MessageLookupByLibrary.simpleMessage("صف الضرر"),
    "determineTheCurrentLocation": MessageLookupByLibrary.simpleMessage(
      "تحديد الموقع الحالي",
    ),
    "direct_cash_payment": MessageLookupByLibrary.simpleMessage(
      "الدفع النقدي المباشر",
    ),
    "discount": MessageLookupByLibrary.simpleMessage("خصم"),
    "disscountCodes": MessageLookupByLibrary.simpleMessage("أكواد الخصم"),
    "documents": MessageLookupByLibrary.simpleMessage("المستندات"),
    "done": MessageLookupByLibrary.simpleMessage("تم"),
    "dontHaveAnyAccount": MessageLookupByLibrary.simpleMessage(
      "لا تملك حساباً؟",
    ),
    "download_failed": MessageLookupByLibrary.simpleMessage("فشل التحميل"),
    "download_report": MessageLookupByLibrary.simpleMessage("تحميل التقرير"),
    "drop_off_location_and_time": MessageLookupByLibrary.simpleMessage(
      "موقع وموعد التسليم",
    ),
    "edit": MessageLookupByLibrary.simpleMessage("تعديل"),
    "editProfile": MessageLookupByLibrary.simpleMessage("تعديل الملف الشخصي"),
    "editTrip": MessageLookupByLibrary.simpleMessage("تعديل الرحلة"),
    "edit_customer": MessageLookupByLibrary.simpleMessage("تعديل العميل"),
    "edit_phone_number": MessageLookupByLibrary.simpleMessage(
      "تعديل رقم الهاتف",
    ),
    "editing_customer": MessageLookupByLibrary.simpleMessage("تحرير العميل"),
    "education": MessageLookupByLibrary.simpleMessage("التعليم"),
    "email": MessageLookupByLibrary.simpleMessage("البريد الإلكتروني"),
    "email_": MessageLookupByLibrary.simpleMessage("البريد الإلكتروني *"),
    "email_address": MessageLookupByLibrary.simpleMessage(
      "عنوان البريد الإلكتروني",
    ),
    "email_address_required": MessageLookupByLibrary.simpleMessage(
      "عنوان البريد الإلكتروني *",
    ),
    "email_hint": MessageLookupByLibrary.simpleMessage(
      "أدخل البريد الإلكتروني",
    ),
    "en": MessageLookupByLibrary.simpleMessage("الإنجليزية"),
    "engine_capacity": MessageLookupByLibrary.simpleMessage("سعة المحرك *"),
    "engine_number": MessageLookupByLibrary.simpleMessage("رقم المحرك *"),
    "engine_number_required": MessageLookupByLibrary.simpleMessage(
      "رقم المحرك *",
    ),
    "english": MessageLookupByLibrary.simpleMessage("الإنجليزية"),
    "enter": MessageLookupByLibrary.simpleMessage("أدخل"),
    "enterValidEmail": MessageLookupByLibrary.simpleMessage(
      "أدخل عنوان بريد إلكتروني صالح",
    ),
    "enterValidPhone": MessageLookupByLibrary.simpleMessage(
      "أدخل رقم هاتف صالح",
    ),
    "enter_additional_information": MessageLookupByLibrary.simpleMessage(
      "أدخل المعلومات الإضافية",
    ),
    "enter_cheque_number": MessageLookupByLibrary.simpleMessage(
      "أدخل رقم الشيك",
    ),
    "enter_code_vehicle_name": MessageLookupByLibrary.simpleMessage(
      "أدخل اسم الكود للمركبة *",
    ),
    "enter_contact_details": MessageLookupByLibrary.simpleMessage(
      "أدخل تفاصيل الاتصال",
    ),
    "enter_cost": MessageLookupByLibrary.simpleMessage("أدخل التكلفة"),
    "enter_customers_address": MessageLookupByLibrary.simpleMessage(
      "أدخل عنوان العميل",
    ),
    "enter_customers_email": MessageLookupByLibrary.simpleMessage(
      "أدخل بريد العميل الإلكتروني",
    ),
    "enter_customers_full_name": MessageLookupByLibrary.simpleMessage(
      "أدخل الاسم الكامل للعميل",
    ),
    "enter_data_to_create_account": MessageLookupByLibrary.simpleMessage(
      "أدخل بياناتك لإنشاء حسابك",
    ),
    "enter_driving_license_number": MessageLookupByLibrary.simpleMessage(
      "أدخل رقم رخصة القيادة",
    ),
    "enter_identity_passport_number": MessageLookupByLibrary.simpleMessage(
      "أدخل رقم الهوية/جواز السفر",
    ),
    "enter_kilometer": MessageLookupByLibrary.simpleMessage(
      "أدخل عدد الكيلومترات",
    ),
    "enter_kilometer_required": MessageLookupByLibrary.simpleMessage(
      "أدخل عدد الكيلومترات *",
    ),
    "enter_license_information": MessageLookupByLibrary.simpleMessage(
      "أدخل معلومات الرخصة",
    ),
    "enter_new_password_info": MessageLookupByLibrary.simpleMessage(
      "أدخل كلمة مرور جديدة، وتأكد من أنها ليست اسمك أو بريدك الإلكتروني أو رقم هاتفك",
    ),
    "enter_notes": MessageLookupByLibrary.simpleMessage("أدخل ملاحظات الفحص"),
    "enter_payment_amount": MessageLookupByLibrary.simpleMessage(
      "أدخل مبلغ الدفع",
    ),
    "enter_payment_details_for_contract": MessageLookupByLibrary.simpleMessage(
      "أدخل تفاصيل الدفع للعقد",
    ),
    "enter_personal_information": MessageLookupByLibrary.simpleMessage(
      "أدخل المعلومات الشخصية",
    ),
    "enter_phone_for_otp": MessageLookupByLibrary.simpleMessage(
      "أدخل رقم هاتفك لتصلك رسالة تحقق لإعادة تعيين كلمة المرور",
    ),
    "enter_place_license_issued": MessageLookupByLibrary.simpleMessage(
      "أدخل مكان إصدار الرخصة",
    ),
    "enter_verification_code": MessageLookupByLibrary.simpleMessage(
      "أدخل رمز التحقق لتغيير كلمة المرور!",
    ),
    "error_generating_file": MessageLookupByLibrary.simpleMessage(
      "خطأ في إنشاء الملف",
    ),
    "error_occurred_while_processing_the_data_received_from_the_server_message":
        MessageLookupByLibrary.simpleMessage(
          "خطأ في معالجة البيانات القادمة من السيرفر، والمتوقعة في التطبيق",
        ),
    "excel_spreadsheet": MessageLookupByLibrary.simpleMessage(
      "جدول بيانات Excel",
    ),
    "expand_details": MessageLookupByLibrary.simpleMessage("توسيع التفاصيل"),
    "expectation_failed_417_message": MessageLookupByLibrary.simpleMessage(
      "الخادم غير قادر على تلبية متطلبات حقل تروق الرأسية",
    ),
    "expenses": MessageLookupByLibrary.simpleMessage("المصروفات"),
    "expiry_date": MessageLookupByLibrary.simpleMessage("تاريخ الانتهاء"),
    "expiry_date_required": MessageLookupByLibrary.simpleMessage(
      "تاريخ الانتهاء *",
    ),
    "export_customer_data": MessageLookupByLibrary.simpleMessage(
      "تصدير بيانات العملاء",
    ),
    "export_inspections": MessageLookupByLibrary.simpleMessage(
      "تصدير عمليات الفحص",
    ),
    "exterior_features": MessageLookupByLibrary.simpleMessage(
      "مواصفات خارجية *",
    ),
    "external_color": MessageLookupByLibrary.simpleMessage("اللون الخارجي *"),
    "extra_day_content": MessageLookupByLibrary.simpleMessage(
      "تمديد الإيجار بساعة بعد الاستلام سيكلفك يومًا إضافيًا",
    ),
    "extra_day_title": MessageLookupByLibrary.simpleMessage("تنبية"),
    "eye_color": MessageLookupByLibrary.simpleMessage("لون العين"),
    "failed": MessageLookupByLibrary.simpleMessage("فشل"),
    "failed_dependency_424_message": MessageLookupByLibrary.simpleMessage(
      "واجه الخادم خطأ أثناء محاولة تلبية الطلب",
    ),
    "failed_inspections": MessageLookupByLibrary.simpleMessage("فاشل"),
    "failed_items": MessageLookupByLibrary.simpleMessage("فشل"),
    "failed_to_generate_file": MessageLookupByLibrary.simpleMessage(
      "فشل في إنشاء الملف. يرجى المحاولة مرة أخرى.",
    ),
    "fieldCantBeEmpty": MessageLookupByLibrary.simpleMessage(
      "الحقل لا يمكن أن يكون فارغًا!",
    ),
    "file_generated_successfully": m8,
    "file_saved_successfully": MessageLookupByLibrary.simpleMessage(
      "تم حفظ الملف بنجاح",
    ),
    "fill_test_data": MessageLookupByLibrary.simpleMessage(
      "ملء بيانات الاختبار",
    ),
    "fill_with_test_credentials": MessageLookupByLibrary.simpleMessage(
      "ملء ببيانات اختبار",
    ),
    "filter_advanced_filter": MessageLookupByLibrary.simpleMessage(
      "فلتر متقدم",
    ),
    "filter_apply_filters": MessageLookupByLibrary.simpleMessage(
      "تطبيق الفلاتر",
    ),
    "filter_available": MessageLookupByLibrary.simpleMessage("متاح"),
    "filter_by": MessageLookupByLibrary.simpleMessage("فلترة حسب"),
    "filter_clear_all": MessageLookupByLibrary.simpleMessage("مسح الكل"),
    "filter_company": MessageLookupByLibrary.simpleMessage("الشركة"),
    "filter_date_placeholder": MessageLookupByLibrary.simpleMessage(
      "يوم/شهر/سنة",
    ),
    "filter_filters_active": m9,
    "filter_from": MessageLookupByLibrary.simpleMessage("من"),
    "filter_gender": MessageLookupByLibrary.simpleMessage("الجنس"),
    "filter_inspections": MessageLookupByLibrary.simpleMessage(
      "تصفية عمليات الفحص",
    ),
    "filter_nationality": MessageLookupByLibrary.simpleMessage("الجنسية"),
    "filter_search_company": MessageLookupByLibrary.simpleMessage(
      "البحث عن الشركة...",
    ),
    "filter_search_gender": MessageLookupByLibrary.simpleMessage(
      "البحث عن الجنس...",
    ),
    "filter_search_nationality": MessageLookupByLibrary.simpleMessage(
      "البحث عن الجنسية...",
    ),
    "filter_to": MessageLookupByLibrary.simpleMessage("إلى"),
    "filter_unavailable": MessageLookupByLibrary.simpleMessage("غير متاح"),
    "filter_whatsapp_status": MessageLookupByLibrary.simpleMessage(
      "حالة الواتساب",
    ),
    "filters_applied": MessageLookupByLibrary.simpleMessage(
      "تم تطبيق المرشحات",
    ),
    "filters_applied_count": m10,
    "filters_cleared": MessageLookupByLibrary.simpleMessage("تم مسح المرشحات"),
    "first_immatriculation_year": MessageLookupByLibrary.simpleMessage(
      "سنة التسجيل الأولى *",
    ),
    "first_name": MessageLookupByLibrary.simpleMessage("الاسم الأول"),
    "first_name_hint": MessageLookupByLibrary.simpleMessage("أدخل الاسم الأول"),
    "forbidden_403_message": MessageLookupByLibrary.simpleMessage(
      "يرفض الخادم المصادقة على الطلب",
    ),
    "forgetPassword": MessageLookupByLibrary.simpleMessage("نسيت كلمة المرور!"),
    "forgot_your_password": MessageLookupByLibrary.simpleMessage(
      "هل نسيت كلمة المرور؟",
    ),
    "found_302_message": MessageLookupByLibrary.simpleMessage(
      "تم نقل المورد مؤقتًا",
    ),
    "frequently_asked_questions": MessageLookupByLibrary.simpleMessage(
      "الأسئلة الشائعة",
    ),
    "front": MessageLookupByLibrary.simpleMessage("أمام"),
    "fuel_type": MessageLookupByLibrary.simpleMessage("نوع الوقود *"),
    "full_name": MessageLookupByLibrary.simpleMessage("الاسم الكامل"),
    "full_name_required": MessageLookupByLibrary.simpleMessage(
      "الاسم الكامل *",
    ),
    "fully_paid": MessageLookupByLibrary.simpleMessage("مدفوع بالكامل"),
    "gallery": MessageLookupByLibrary.simpleMessage("معرض"),
    "gateway_timeout_504_message": MessageLookupByLibrary.simpleMessage(
      "الخادم لا يستجيب في الوقت المحدد. يرجى المحاولة مرة أخرى في وقت لاحق",
    ),
    "gender": MessageLookupByLibrary.simpleMessage("الجنس"),
    "generate": MessageLookupByLibrary.simpleMessage("إنشاء"),
    "generating": MessageLookupByLibrary.simpleMessage("جاري الإنشاء..."),
    "generating_pdf": MessageLookupByLibrary.simpleMessage(
      "جاري إنشاء ملف PDF...",
    ),
    "getDisscountCode": MessageLookupByLibrary.simpleMessage(
      "احصل على كود الخصم",
    ),
    "gone_410_message": MessageLookupByLibrary.simpleMessage(
      "المورد المطلوب غير متوفر بعد و تم حذفه بشكل دائم",
    ),
    "government": MessageLookupByLibrary.simpleMessage("المحافظة *"),
    "guest_body_msg": MessageLookupByLibrary.simpleMessage(
      "من فضلك قم بتسجيل الدخول أولا لرؤية الصفحة",
    ),
    "guest_title_msg": MessageLookupByLibrary.simpleMessage("معذرة"),
    "hair_color": MessageLookupByLibrary.simpleMessage("لون الشعر"),
    "hair_type": MessageLookupByLibrary.simpleMessage("نوع الشعر"),
    "have_whatsapp_same_number": MessageLookupByLibrary.simpleMessage(
      "هل لديك واتساب بنفس الرقم؟",
    ),
    "height": MessageLookupByLibrary.simpleMessage("الطول"),
    "hello_user": m11,
    "help_and_support": MessageLookupByLibrary.simpleMessage("المساعدة والدعم"),
    "hintAddress": MessageLookupByLibrary.simpleMessage("أدخل عنوانك"),
    "hintEmail": MessageLookupByLibrary.simpleMessage("أدخل بريدك الإلكتروني"),
    "hintLoginPassword": MessageLookupByLibrary.simpleMessage("كلمة مرورك"),
    "hintLoginPhoneNumber": MessageLookupByLibrary.simpleMessage("رقم هاتفك"),
    "hintName": MessageLookupByLibrary.simpleMessage("أدخل اسمك"),
    "hint_login_name": MessageLookupByLibrary.simpleMessage("أدخل اسمك"),
    "home": MessageLookupByLibrary.simpleMessage("الصفحة الرئيسية"),
    "home_page_app_bar_title": m12,
    "home_page_correspondence": MessageLookupByLibrary.simpleMessage(
      "المراسلات (وثائق السيارة - الحوادث - التحويلات البنكية - الرسائل والاستفسارات).",
    ),
    "home_page_fleet": MessageLookupByLibrary.simpleMessage("أسطول السيارات"),
    "home_page_offer": MessageLookupByLibrary.simpleMessage("العروض والمكافآت"),
    "home_page_partner": MessageLookupByLibrary.simpleMessage("انضم كشريك"),
    "home_page_reservations": MessageLookupByLibrary.simpleMessage("حجز جديد"),
    "how_are_you_today": MessageLookupByLibrary.simpleMessage(
      "كيف حالك اليوم!",
    ),
    "http_version_not_supported_505_message":
        MessageLookupByLibrary.simpleMessage(
          "الإصدار المطلوب من بروتوكول HTTP غير معتمد من قبل الخادم",
        ),
    "idNumber": MessageLookupByLibrary.simpleMessage("رقم الهوية"),
    "id_card_back": MessageLookupByLibrary.simpleMessage(
      "بطاقة الهوية (الوجه الخلفي)",
    ),
    "id_card_back_required": MessageLookupByLibrary.simpleMessage(
      "بطاقة الهوية (الجانب الخلفي) *",
    ),
    "id_card_front": MessageLookupByLibrary.simpleMessage(
      "بطاقة الهوية (الوجه الأمامي)",
    ),
    "id_card_front_required": MessageLookupByLibrary.simpleMessage(
      "بطاقة الهوية (الجانب الأمامي) *",
    ),
    "identity_number": MessageLookupByLibrary.simpleMessage("رقم الهوية"),
    "identity_number_required": MessageLookupByLibrary.simpleMessage(
      "رقم الهوية *",
    ),
    "image": MessageLookupByLibrary.simpleMessage("صورة"),
    "image_png": MessageLookupByLibrary.simpleMessage("صورة (PNG)"),
    "in_progress": MessageLookupByLibrary.simpleMessage("جاري التنفيذ"),
    "income": MessageLookupByLibrary.simpleMessage("الدخل"),
    "incoming_date": MessageLookupByLibrary.simpleMessage("تاريخ الوصول"),
    "incoming_details": MessageLookupByLibrary.simpleMessage("تفاصيل الوصول"),
    "incoming_details_title": MessageLookupByLibrary.simpleMessage(
      "تفاصيل الوصول",
    ),
    "info_notification": MessageLookupByLibrary.simpleMessage("معلومات"),
    "inspected_by": MessageLookupByLibrary.simpleMessage("تم الفحص بواسطة"),
    "inspection": MessageLookupByLibrary.simpleMessage("الفحص"),
    "inspection_by": MessageLookupByLibrary.simpleMessage("تم الفحص بواسطة"),
    "inspection_by_required": MessageLookupByLibrary.simpleMessage(
      "فحص بواسطة *",
    ),
    "inspection_checklist_subtitle": MessageLookupByLibrary.simpleMessage(
      "تحقق من كل عنصر وقدم التفاصيل لأي مشاكل يتم العثور عليها",
    ),
    "inspection_checklist_summary": MessageLookupByLibrary.simpleMessage(
      "ملخص الفحص",
    ),
    "inspection_completed": MessageLookupByLibrary.simpleMessage(
      "تم إكمال الفحص",
    ),
    "inspection_date": MessageLookupByLibrary.simpleMessage("تاريخ الفحص"),
    "inspection_details": MessageLookupByLibrary.simpleMessage("تفاصيل الفحص"),
    "inspection_form": MessageLookupByLibrary.simpleMessage("نموذج الفحص"),
    "inspection_item": MessageLookupByLibrary.simpleMessage("عنصر الفحص"),
    "inspection_item_status": MessageLookupByLibrary.simpleMessage("الحالة"),
    "inspection_list": MessageLookupByLibrary.simpleMessage(
      "قائمة عمليات الفحص",
    ),
    "inspection_management": MessageLookupByLibrary.simpleMessage(
      "إدارة عمليات الفحص",
    ),
    "inspection_notes": MessageLookupByLibrary.simpleMessage("ملاحظات الفحص"),
    "inspection_overview": MessageLookupByLibrary.simpleMessage(
      "نظرة عامة على الفحص",
    ),
    "inspection_performed_by": MessageLookupByLibrary.simpleMessage(
      "تم الفحص بواسطة",
    ),
    "inspection_status": MessageLookupByLibrary.simpleMessage("حالة الفحص"),
    "inspection_status_pending": MessageLookupByLibrary.simpleMessage(
      "في انتظار المراجعة",
    ),
    "inspection_summary": MessageLookupByLibrary.simpleMessage("الملخص"),
    "inspections": MessageLookupByLibrary.simpleMessage("عمليات الفحص"),
    "inspections_checklist": MessageLookupByLibrary.simpleMessage(
      "قائمة فحص المركبة",
    ),
    "inspections_found": MessageLookupByLibrary.simpleMessage(
      "عمليات فحص موجودة",
    ),
    "inspector_info": MessageLookupByLibrary.simpleMessage("معلومات المفتش"),
    "inspector_information": MessageLookupByLibrary.simpleMessage(
      "معلومات المفتش",
    ),
    "insufficient_storage_507_message": MessageLookupByLibrary.simpleMessage(
      "الخادم غير قادر على تخزين التمثيل الذي يلزم لإكمال الطلب",
    ),
    "insuranceCertificate": MessageLookupByLibrary.simpleMessage(
      "شهادة التأمين",
    ),
    "insurance_company": MessageLookupByLibrary.simpleMessage("شركة التأمين *"),
    "insurance_expiry": MessageLookupByLibrary.simpleMessage("انتهاء التأمين"),
    "insurance_expiry_date": MessageLookupByLibrary.simpleMessage(
      "تاريخ انتهاء التأمين *",
    ),
    "insurance_type": MessageLookupByLibrary.simpleMessage("نوع التأمين"),
    "interior_features": MessageLookupByLibrary.simpleMessage(
      "مواصفات داخلية *",
    ),
    "internal_color": MessageLookupByLibrary.simpleMessage("اللون الداخلي *"),
    "internal_server_error_500_message": MessageLookupByLibrary.simpleMessage(
      "واجه الخادم خطأ أثناء معالجة الطلب",
    ),
    "intial": MessageLookupByLibrary.simpleMessage("مبدئي"),
    "issue_date": MessageLookupByLibrary.simpleMessage("تاريخ الإصدار"),
    "issue_date_required": MessageLookupByLibrary.simpleMessage(
      "تاريخ الإصدار *",
    ),
    "items_checked": MessageLookupByLibrary.simpleMessage("العناصر المفحوصة"),
    "kilometers": MessageLookupByLibrary.simpleMessage("كيلومترات"),
    "km_unit": MessageLookupByLibrary.simpleMessage("كم"),
    "language": MessageLookupByLibrary.simpleMessage("اللغة"),
    "last_month": MessageLookupByLibrary.simpleMessage("الشهر الماضي"),
    "last_name": MessageLookupByLibrary.simpleMessage("الاسم الأخير"),
    "last_name_hint": MessageLookupByLibrary.simpleMessage("أدخل الاسم الأخير"),
    "learnMore": MessageLookupByLibrary.simpleMessage("تعرف على المزيد >"),
    "length_required_411_message": MessageLookupByLibrary.simpleMessage(
      "لم يحدد الطلب طول محتواه، وهو مطلوب من المورد المطلوب",
    ),
    "license_back": MessageLookupByLibrary.simpleMessage(
      "الرخصة (الوجه الخلفي)",
    ),
    "license_back_image_required": MessageLookupByLibrary.simpleMessage(
      "صورة الرخصة الخلفية *",
    ),
    "license_back_required": MessageLookupByLibrary.simpleMessage(
      "الرخصة (الجانب الخلفي) *",
    ),
    "license_expiry": MessageLookupByLibrary.simpleMessage("انتهاء الرخصة"),
    "license_front": MessageLookupByLibrary.simpleMessage(
      "الرخصة (الوجه الأمامي)",
    ),
    "license_front_image_required": MessageLookupByLibrary.simpleMessage(
      "صورة الرخصة الأمامية *",
    ),
    "license_front_required": MessageLookupByLibrary.simpleMessage(
      "الرخصة (الجانب الأمامي) *",
    ),
    "license_info": MessageLookupByLibrary.simpleMessage("معلومات الرخصة"),
    "license_information": MessageLookupByLibrary.simpleMessage(
      "معلومات الرخصة",
    ),
    "license_number": MessageLookupByLibrary.simpleMessage("رقم الرخصة"),
    "license_number_required": MessageLookupByLibrary.simpleMessage(
      "رقم الرخصة *",
    ),
    "license_plate": MessageLookupByLibrary.simpleMessage("رقم اللوحة *"),
    "licensesId": MessageLookupByLibrary.simpleMessage("رقم الرخصة"),
    "linkValidationText": MessageLookupByLibrary.simpleMessage(
      "الروابط يجب ان تبدأ ب http:// او https://",
    ),
    "loading_inspection_details": MessageLookupByLibrary.simpleMessage(
      "جاري تحميل تفاصيل الفحص...",
    ),
    "location_permission_need": MessageLookupByLibrary.simpleMessage(
      "نحتاج إلى إذن للوصول إلى الموقع. يرجى الانتقال إلى الإعدادات ومنح الإذن، ثم انقر فوق تفعيل",
    ),
    "locked_423_message": MessageLookupByLibrary.simpleMessage(
      "تم قفل المورد المطلوب ولا يمكن تعديله",
    ),
    "login": MessageLookupByLibrary.simpleMessage("تسجيل الدخول"),
    "logout": MessageLookupByLibrary.simpleMessage("تسجيل الخروج"),
    "logout_msg": MessageLookupByLibrary.simpleMessage(
      "هل أنت متأكد من تسجيل الخروج؟",
    ),
    "loop_detected_508_message": MessageLookupByLibrary.simpleMessage(
      "اكتشف الخادم حلقة في سلسلة معالجة الطلبات ، والتي يمكن أن تشير إلى عدم تكوين صحيح",
    ),
    "loyalityAndRewards": MessageLookupByLibrary.simpleMessage(
      "الولاء والمكافآت",
    ),
    "main_image_required": MessageLookupByLibrary.simpleMessage(
      "الصورة الرئيسية *",
    ),
    "maintenance_alerts": MessageLookupByLibrary.simpleMessage(
      "تنبيهات الصيانة",
    ),
    "maintenance_due": MessageLookupByLibrary.simpleMessage("موعد الصيانة"),
    "maintenance_parts_required": MessageLookupByLibrary.simpleMessage(
      "قطع الصيانة *",
    ),
    "manufacture_year": MessageLookupByLibrary.simpleMessage("سنة التصنيع *"),
    "mark_all_as_read": MessageLookupByLibrary.simpleMessage(
      "تمييز الكل كمقروء",
    ),
    "mark_as_read": MessageLookupByLibrary.simpleMessage("تحديد كمقروء"),
    "menu": MessageLookupByLibrary.simpleMessage("القائمة"),
    "message": MessageLookupByLibrary.simpleMessage("الرسالة"),
    "messageTitle": MessageLookupByLibrary.simpleMessage("عنوان الرسالة"),
    "messagesAndInquiries": MessageLookupByLibrary.simpleMessage(
      "الرسائل والاستفسارات",
    ),
    "meter_reading": MessageLookupByLibrary.simpleMessage("قراءة العداد"),
    "meter_reading_km": MessageLookupByLibrary.simpleMessage(
      "قراءة العداد (كم)",
    ),
    "method_not_allowed_405_message": MessageLookupByLibrary.simpleMessage(
      "الطريقة المطلوبة غير مسموحة لهذا المورد",
    ),
    "misdirected_request_421_message": MessageLookupByLibrary.simpleMessage(
      "الخادم غير قادر على حل اسم المضيف المقدم",
    ),
    "models": MessageLookupByLibrary.simpleMessage("الموديلات *"),
    "modify_existing_payment_details": MessageLookupByLibrary.simpleMessage(
      "تعديل تفاصيل الدفع الحالية",
    ),
    "modify_payment_info": MessageLookupByLibrary.simpleMessage(
      "تعديل معلومات الدفعة",
    ),
    "monthly_report": MessageLookupByLibrary.simpleMessage("التقرير الشهري"),
    "more": MessageLookupByLibrary.simpleMessage("المزيد"),
    "more_options": MessageLookupByLibrary.simpleMessage("خيارات أكثر"),
    "moved_permanently_301_message": MessageLookupByLibrary.simpleMessage(
      "تم نقل المورد بشكل دائم",
    ),
    "multiple_choices_300_message": MessageLookupByLibrary.simpleMessage(
      "تتوفر خيارات متعددة",
    ),
    "my_favorites": MessageLookupByLibrary.simpleMessage("مفضلتي"),
    "n_a": MessageLookupByLibrary.simpleMessage("غير متوفر"),
    "name": MessageLookupByLibrary.simpleMessage("الاسم"),
    "need": m13,
    "network_authentication_required_511_message":
        MessageLookupByLibrary.simpleMessage(
          "العميل بحاجة إلى التحقق من الهوية للوصول إلى الشبكة",
        ),
    "network_connect_timeout_error_599_message":
        MessageLookupByLibrary.simpleMessage(
          "انتهت مهلة الطلب أثناء الاتصال بالخادم. يرجى التحقق من اتصال الشبكة الخاص بك والمحاولة مرة أخرى",
        ),
    "newPassword": MessageLookupByLibrary.simpleMessage("كلمة مرور جديدة"),
    "new_notifications": MessageLookupByLibrary.simpleMessage("جديد"),
    "next": MessageLookupByLibrary.simpleMessage("التالي"),
    "no": MessageLookupByLibrary.simpleMessage("لا"),
    "no_cost": MessageLookupByLibrary.simpleMessage("لا توجد تكلفة"),
    "no_further_action_required": MessageLookupByLibrary.simpleMessage(
      "لا حاجة لإجراءات إضافية. نجح الفحص.",
    ),
    "no_image": MessageLookupByLibrary.simpleMessage("لا توجد صورة"),
    "no_inspection_data": MessageLookupByLibrary.simpleMessage(
      "لا توجد بيانات فحص متاحة",
    ),
    "no_inspections_found": MessageLookupByLibrary.simpleMessage(
      "لم يتم العثور على عمليات فحص",
    ),
    "no_item_found": MessageLookupByLibrary.simpleMessage(
      "لا توجد أية بيانات متاحة",
    ),
    "no_notes": MessageLookupByLibrary.simpleMessage("لا توجد ملاحظات"),
    "no_notes_available": MessageLookupByLibrary.simpleMessage(
      "لا توجد ملاحظات متاحة",
    ),
    "no_notifications": MessageLookupByLibrary.simpleMessage("لا توجد إشعارات"),
    "no_notifications_available": MessageLookupByLibrary.simpleMessage(
      "لا توجد إشعارات متاحة",
    ),
    "no_phone": MessageLookupByLibrary.simpleMessage("لا يوجد هاتف"),
    "not_acceptable_406_message": MessageLookupByLibrary.simpleMessage(
      "الخادم غير قادر على إنتاج إستجابة تتطابق مع القائمة المقبولة المحددة في رؤوس الطلب",
    ),
    "not_extended_510_message": MessageLookupByLibrary.simpleMessage(
      "تتطلب المزيد من التمديدات للطلب لكي يتم استيفاءه من قبل الخادم",
    ),
    "not_found_404_message": MessageLookupByLibrary.simpleMessage(
      "تعذر العثور على المورد المطلوب على الخادم",
    ),
    "not_implemented_error_501_message": MessageLookupByLibrary.simpleMessage(
      "الخادم لا يدعم الوظيفة المطلوبة لتنفيذ الطلب",
    ),
    "not_modified_304_message": MessageLookupByLibrary.simpleMessage(
      "لم يتم تعديل المورد منذ الطلب السابق",
    ),
    "not_specified": MessageLookupByLibrary.simpleMessage("غير محدد"),
    "not_uploaded": MessageLookupByLibrary.simpleMessage("غير مرفوع"),
    "notes": MessageLookupByLibrary.simpleMessage("ملاحظات"),
    "notes_field": MessageLookupByLibrary.simpleMessage("الملاحظات"),
    "notes_optional": MessageLookupByLibrary.simpleMessage("ملاحظات (اختياري)"),
    "notification": MessageLookupByLibrary.simpleMessage("الإشعارات"),
    "notification_date": MessageLookupByLibrary.simpleMessage("تاريخ الإشعار"),
    "notification_date_format": m14,
    "notification_time_format": m15,
    "notification_type": MessageLookupByLibrary.simpleMessage("نوع الإشعار"),
    "notification_types": MessageLookupByLibrary.simpleMessage(
      "أنواع الإشعارات",
    ),
    "notifications": MessageLookupByLibrary.simpleMessage("الإشعارات"),
    "notifications_empty_message": MessageLookupByLibrary.simpleMessage(
      "لقد انتهيت! لا توجد إشعارات جديدة.",
    ),
    "notifications_page_app_bar_title": MessageLookupByLibrary.simpleMessage(
      "الإشعارات",
    ),
    "number_of_cylinders": MessageLookupByLibrary.simpleMessage(
      "عدد الأسطوانات *",
    ),
    "offersAndRewards": MessageLookupByLibrary.simpleMessage(
      "العروض والمكافآت",
    ),
    "okayIUnderstand": MessageLookupByLibrary.simpleMessage("حسنًا، أفهم"),
    "oldPassword": MessageLookupByLibrary.simpleMessage("كلمة المرور القديمة"),
    "on_boarding_desc_fifth": MessageLookupByLibrary.simpleMessage(
      "مع خدمات تأجير السيارات لدينا، يمكنك تجربة الراحة القصوى وحرية استكشاف وجهتك وفقًا لسرعتك الخاصة.",
    ),
    "on_boarding_desc_first": MessageLookupByLibrary.simpleMessage(""),
    "on_boarding_desc_fourth": MessageLookupByLibrary.simpleMessage(""),
    "on_boarding_desc_second": MessageLookupByLibrary.simpleMessage(""),
    "on_boarding_desc_third": MessageLookupByLibrary.simpleMessage(""),
    "on_boarding_title_fifth": MessageLookupByLibrary.simpleMessage("لنبدأ!"),
    "on_boarding_title_first": MessageLookupByLibrary.simpleMessage(
      "مرحبًا بك في التطبيق\nتأجير السيارات هنا بسهولة فائقة",
    ),
    "on_boarding_title_fourth": MessageLookupByLibrary.simpleMessage(
      "مدفوعات آمنة",
    ),
    "on_boarding_title_second": MessageLookupByLibrary.simpleMessage(
      "احجز بدون عناء",
    ),
    "on_boarding_title_third": MessageLookupByLibrary.simpleMessage(
      "استلام وتسليم مريح",
    ),
    "order_booked_successfully": MessageLookupByLibrary.simpleMessage(
      "تم حجز الطلب بنجاح",
    ),
    "order_edit_successfully": MessageLookupByLibrary.simpleMessage(
      "تم تعديل الطلب بنجاح",
    ),
    "order_saved_successfully": MessageLookupByLibrary.simpleMessage(
      "تم حفظ الطلب بنجاح",
    ),
    "order_status": MessageLookupByLibrary.simpleMessage("حالة الطلب"),
    "otp": MessageLookupByLibrary.simpleMessage("رمز التحقق"),
    "otp_field_required": MessageLookupByLibrary.simpleMessage(
      "أدخل رمز التحقق الخاص بك",
    ),
    "otp_success": MessageLookupByLibrary.simpleMessage(
      "كود صحيح، سيتم تحويلك لصفحة تغيير كلمة المرور",
    ),
    "ownership_type": MessageLookupByLibrary.simpleMessage("نوع الملكية *"),
    "partial_content_206_message": MessageLookupByLibrary.simpleMessage(
      "تم تقديم محتوى جزئي",
    ),
    "partially_paid": MessageLookupByLibrary.simpleMessage("مدفوع جزئياً"),
    "partner_page_branch_number_field": MessageLookupByLibrary.simpleMessage(
      "عدد الفروع",
    ),
    "partner_page_car_number_field": MessageLookupByLibrary.simpleMessage(
      "عدد السيارات",
    ),
    "partner_page_cars_type_field": MessageLookupByLibrary.simpleMessage(
      "أنواع السيارات",
    ),
    "partner_page_city_number_field": MessageLookupByLibrary.simpleMessage(
      "عدد المدن",
    ),
    "partner_page_company_name_field": MessageLookupByLibrary.simpleMessage(
      "اسم الشركة",
    ),
    "partner_page_contract_field": MessageLookupByLibrary.simpleMessage(
      "رقم الموبايل",
    ),
    "partner_page_email_field": MessageLookupByLibrary.simpleMessage(
      "البريد الإلكتروني",
    ),
    "partner_page_license_image_field": MessageLookupByLibrary.simpleMessage(
      "صورة الترخيص",
    ),
    "partner_page_license_number_field": MessageLookupByLibrary.simpleMessage(
      "رقم ترخيص الجهة",
    ),
    "partner_page_msg_success_partner": MessageLookupByLibrary.simpleMessage(
      "تم استلام طلبك وهو تحت المراجعه الان، وسيتم ابلاغك بأي جديد",
    ),
    "partner_page_official_field": MessageLookupByLibrary.simpleMessage(
      "اسم المسؤول",
    ),
    "partner_page_partner_type_field": MessageLookupByLibrary.simpleMessage(
      "نوع الشريك",
    ),
    "partner_page_register_image_field": MessageLookupByLibrary.simpleMessage(
      "صورة السجل التجاري",
    ),
    "partner_page_register_number_field": MessageLookupByLibrary.simpleMessage(
      "رقم السجل التجاري",
    ),
    "partner_page_submit_btn": MessageLookupByLibrary.simpleMessage(
      "تأكيد طلب الانضمام",
    ),
    "partner_page_title": MessageLookupByLibrary.simpleMessage(
      "لطلب الانضمام كشريك في تطبيق ON، يرجى تزويدنا بالبيانات التالية",
    ),
    "pass": MessageLookupByLibrary.simpleMessage("نجح"),
    "passed": MessageLookupByLibrary.simpleMessage("نجح"),
    "passed_items": MessageLookupByLibrary.simpleMessage("نجح"),
    "passport_image": MessageLookupByLibrary.simpleMessage("صورة جواز السفر"),
    "passport_image_optional": MessageLookupByLibrary.simpleMessage(
      "صورة جواز السفر (اختياري)",
    ),
    "password": MessageLookupByLibrary.simpleMessage("كلمة المرور"),
    "passwordMustBe": MessageLookupByLibrary.simpleMessage(
      "يجب أن تكون كلمة المرور مكونة من 8 أحرف على الأقل",
    ),
    "password_hint": MessageLookupByLibrary.simpleMessage("أدخل كلمة المرور"),
    "password_recovery": MessageLookupByLibrary.simpleMessage(
      "استعادة كلمة المرور؟",
    ),
    "pastTrips": MessageLookupByLibrary.simpleMessage("الحجوزات السابقة"),
    "payNow": MessageLookupByLibrary.simpleMessage("إدفع الأن"),
    "payment_by_check_or_cheque": MessageLookupByLibrary.simpleMessage(
      "الدفع بواسطة شيك",
    ),
    "payment_date": MessageLookupByLibrary.simpleMessage("تاريخ الدفع"),
    "payment_management": MessageLookupByLibrary.simpleMessage(
      "إدارة المدفوعات",
    ),
    "payment_method": MessageLookupByLibrary.simpleMessage("طريقة الدفع"),
    "payment_number": MessageLookupByLibrary.simpleMessage("رقم الدفعة"),
    "payment_required_402_message": MessageLookupByLibrary.simpleMessage(
      "مطلوب الدفع لإكمال هذا الإجراء. يرجى التأكد من صحة معلومات الدفع الخاصة بك والمحاولة مرة أخرى",
    ),
    "payment_status": MessageLookupByLibrary.simpleMessage("حالة الدفع"),
    "payment_type": MessageLookupByLibrary.simpleMessage("نوع الدفع"),
    "payments": MessageLookupByLibrary.simpleMessage("المدفوعات"),
    "pdf_document": MessageLookupByLibrary.simpleMessage("مستند PDF"),
    "pdf_downloaded": MessageLookupByLibrary.simpleMessage(
      "تم تحميل ملف PDF بنجاح",
    ),
    "pdf_shared": MessageLookupByLibrary.simpleMessage(
      "تم مشاركة ملف PDF بنجاح",
    ),
    "pending": MessageLookupByLibrary.simpleMessage("قيد الانتظار"),
    "pending_inspections": MessageLookupByLibrary.simpleMessage("قيد الانتظار"),
    "permanent_redirect_308_message": MessageLookupByLibrary.simpleMessage(
      "تم نقل المورد المطلوب بشكل دائم إلى عنوان URI مختلف",
    ),
    "personal_info": MessageLookupByLibrary.simpleMessage("المعلومات الشخصية"),
    "personal_information": MessageLookupByLibrary.simpleMessage(
      "المعلومات الشخصية",
    ),
    "phone": MessageLookupByLibrary.simpleMessage("الهاتف"),
    "phoneNumber": MessageLookupByLibrary.simpleMessage("رقم الهاتف"),
    "phone_number": MessageLookupByLibrary.simpleMessage("رقم الهاتف"),
    "physical_information": MessageLookupByLibrary.simpleMessage(
      "المعلومات الجسدية",
    ),
    "pick_source": MessageLookupByLibrary.simpleMessage("اختر المصدر"),
    "pick_source_description": MessageLookupByLibrary.simpleMessage(
      "يمكنك إما التقاط صورة باستخدام كاميرا الجهاز الخاص بك أو اختيار صورة موجودة بالفعل في معرضك لاستخدامها.",
    ),
    "pickup_date": MessageLookupByLibrary.simpleMessage("تاريخ الاستلام"),
    "pickup_date_must_be_before_returned_date":
        MessageLookupByLibrary.simpleMessage(
          "يجب أن يكون تاريخ الاستلام قبل تاريخ الإرجاع",
        ),
    "pickup_date_time": MessageLookupByLibrary.simpleMessage(
      "تاريخ / وقت الاستلام",
    ),
    "pickup_location": MessageLookupByLibrary.simpleMessage("موقع الاستلام"),
    "pickup_location_and_time": MessageLookupByLibrary.simpleMessage(
      "موقع وموعد الاستلام",
    ),
    "pickup_time": MessageLookupByLibrary.simpleMessage("وقت الاستلام"),
    "place_of_issue": MessageLookupByLibrary.simpleMessage("مكان الإصدار"),
    "place_of_issue_required": MessageLookupByLibrary.simpleMessage(
      "مكان الإصدار *",
    ),
    "please": MessageLookupByLibrary.simpleMessage("من فضلك"),
    "pleaseSignInToProcess": MessageLookupByLibrary.simpleMessage(
      "من فضلك قم بتسجيل الدخول لمتابعة العملية",
    ),
    "please_provide_cost_and_description": MessageLookupByLibrary.simpleMessage(
      "يرجى تقديم التكلفة ووصف الضرر.",
    ),
    "please_register_first_to_complete_this_process":
        MessageLookupByLibrary.simpleMessage(
          "من فضلك قم بالتسجيل أولاً لإكمال هذه العملية",
        ),
    "please_select_customer_to_delete": MessageLookupByLibrary.simpleMessage(
      "يرجى اختيار عميل للحذف",
    ),
    "please_select_customers_to_download": MessageLookupByLibrary.simpleMessage(
      "يرجى اختيار عملاء للتحميل",
    ),
    "please_sign_in_to_your_account": MessageLookupByLibrary.simpleMessage(
      "من فضلك قم بتسجيل الدخول إلى حسابك",
    ),
    "point_camera_at_user": MessageLookupByLibrary.simpleMessage(
      "وجّه الكاميرا إلى المستخدم",
    ),
    "point_camera_or_enter_code": MessageLookupByLibrary.simpleMessage(
      "وجّه الكاميرا إلى رمز المستخدم أو أدخل الرمز يدويًا.",
    ),
    "postal_code": MessageLookupByLibrary.simpleMessage("الرمز البريدي"),
    "precondition_failed_412_message": MessageLookupByLibrary.simpleMessage(
      "الخادم لا يستوفي أحد الشروط الأساسية التي وضعها المرسل على الطلب",
    ),
    "precondition_required_428_message": MessageLookupByLibrary.simpleMessage(
      "يتطلب الخادم أن يكون الطلب مشروطًا",
    ),
    "previous": MessageLookupByLibrary.simpleMessage("السابق"),
    "primary_phone": MessageLookupByLibrary.simpleMessage("الهاتف الأساسي"),
    "privacyAndPolicy": MessageLookupByLibrary.simpleMessage(
      "الخصوصية والسياسة",
    ),
    "privacy_policy": MessageLookupByLibrary.simpleMessage("سياسة الخصوصية"),
    "processing_102_message": MessageLookupByLibrary.simpleMessage(
      "جارٍ معالجة الطلب",
    ),
    "professional_report_format": MessageLookupByLibrary.simpleMessage(
      "تنسيق تقرير احترافي",
    ),
    "profile": MessageLookupByLibrary.simpleMessage("الملف الشخصي"),
    "progress_fail_message": MessageLookupByLibrary.simpleMessage(
      "عملية فاشلة",
    ),
    "progress_success_message": MessageLookupByLibrary.simpleMessage(
      "عملية ناجحة",
    ),
    "proxy_authentication_required_407_message":
        MessageLookupByLibrary.simpleMessage(
          "يجب على العميل المصادقة على نفسه أولاً مع الوكيل",
        ),
    "purchase_price": MessageLookupByLibrary.simpleMessage("سعر الشراء"),
    "quick_actions": MessageLookupByLibrary.simpleMessage("الإجراءات السريعة"),
    "read_more": MessageLookupByLibrary.simpleMessage("اقرأ المزيد"),
    "ready_to_login": MessageLookupByLibrary.simpleMessage(
      "جاهز لتسجيل الدخول ببيانات الاختبار",
    ),
    "receipt": MessageLookupByLibrary.simpleMessage("الإيصال"),
    "receiptFrom": MessageLookupByLibrary.simpleMessage("مكان الإستلام"),
    "receiptOn": MessageLookupByLibrary.simpleMessage("وقت الإستلام"),
    "receive_timeout_message": MessageLookupByLibrary.simpleMessage(
      "انتهت مهلة استلام الرد. يرجى المحاولة مرة أخرى",
    ),
    "recent_activities": MessageLookupByLibrary.simpleMessage(
      "الأنشطة الحديثة",
    ),
    "refresh_data": MessageLookupByLibrary.simpleMessage("تحديث البيانات"),
    "refund_police": MessageLookupByLibrary.simpleMessage("سياسة الاسترجاع"),
    "regional_specification": MessageLookupByLibrary.simpleMessage(
      "المواصفات الإقليمية *",
    ),
    "registration": MessageLookupByLibrary.simpleMessage("التسجيل"),
    "registration_expiry_date": MessageLookupByLibrary.simpleMessage(
      "تاريخ انتهاء التسجيل *",
    ),
    "remaining_amount": MessageLookupByLibrary.simpleMessage("المبلغ المتبقي"),
    "rememberMe": MessageLookupByLibrary.simpleMessage("تذكرني"),
    "remember_me": MessageLookupByLibrary.simpleMessage("تذكرني"),
    "reminder_notification": MessageLookupByLibrary.simpleMessage("تذكير"),
    "remove_payment_permanently": MessageLookupByLibrary.simpleMessage(
      "حذف الدفعة نهائياً",
    ),
    "rental_cost_per_day": MessageLookupByLibrary.simpleMessage(
      "تكلفة الإيجار اليومية",
    ),
    "rental_days": MessageLookupByLibrary.simpleMessage("أيام الإيجار"),
    "rental_period": MessageLookupByLibrary.simpleMessage("فترة الإيجار"),
    "repair_status": MessageLookupByLibrary.simpleMessage("حالة الإصلاح"),
    "reports": MessageLookupByLibrary.simpleMessage("التقارير"),
    "requestEntity_tooLarge_413_message": MessageLookupByLibrary.simpleMessage(
      "الطلب أكبر من ما يمكن للخادم معالجته",
    ),
    "requestUri_tooLong_414_message": MessageLookupByLibrary.simpleMessage(
      "عنوان URI المقدم في الطلب طويل جدًا بحيث يتعذر على الخادم معالجته",
    ),
    "request_header_fields_too_large_431_message":
        MessageLookupByLibrary.simpleMessage(
          "الخادم غير راغب في معالجة الطلب لأن حقول رأسه كبيرة جدًا",
        ),
    "request_timeout_408_message": MessageLookupByLibrary.simpleMessage(
      "انتهت صلاحية الخادم في انتظار الطلب",
    ),
    "requested_range_not_satisfiable_416_message":
        MessageLookupByLibrary.simpleMessage(
          "لا يمكن توفير النطاق المطلوب من قبل الخادم",
        ),
    "required_field": MessageLookupByLibrary.simpleMessage("هذا الحقل مطلوب"),
    "resend": MessageLookupByLibrary.simpleMessage("إعادة الإرسال"),
    "resendIn": MessageLookupByLibrary.simpleMessage("إعادة إرسال في"),
    "resendOtp": MessageLookupByLibrary.simpleMessage("إعادة إرسال الرمز"),
    "resend_code_in": m16,
    "reservations_management": MessageLookupByLibrary.simpleMessage(
      "إدارة الحجوزات",
    ),
    "reset_content_205_message": MessageLookupByLibrary.simpleMessage(
      "تم الطلب بنجاح، إعادة تعيين المستند",
    ),
    "resident": MessageLookupByLibrary.simpleMessage("مقيم"),
    "returned_date": MessageLookupByLibrary.simpleMessage("تاريخ التسليم"),
    "returned_date_must_be_after_pickup_date":
        MessageLookupByLibrary.simpleMessage(
          "يجب أن يكون تاريخ الإرجاع بعد تاريخ الاستلام",
        ),
    "returned_date_time": MessageLookupByLibrary.simpleMessage(
      "تاريخ / وقت التسليم",
    ),
    "returned_location": MessageLookupByLibrary.simpleMessage("موقع التسليم"),
    "returned_time": MessageLookupByLibrary.simpleMessage("وقت التسليم"),
    "sar": MessageLookupByLibrary.simpleMessage("ريال"),
    "save": MessageLookupByLibrary.simpleMessage("حفظ"),
    "save_customer": MessageLookupByLibrary.simpleMessage("حفظ العميل"),
    "save_failed": MessageLookupByLibrary.simpleMessage("فشل الحفظ"),
    "save_report": MessageLookupByLibrary.simpleMessage("حفظ التقرير"),
    "save_to_files": MessageLookupByLibrary.simpleMessage("حفظ في الملفات"),
    "search_any_city": MessageLookupByLibrary.simpleMessage("ابحث عن أي مدينة"),
    "search_anything": MessageLookupByLibrary.simpleMessage(
      "البحث عن أي شيء...",
    ),
    "search_customers_placeholder": MessageLookupByLibrary.simpleMessage(
      "البحث في العملاء بالاسم، البريد الإلكتروني، الهاتف، الشركة...",
    ),
    "search_inspections": MessageLookupByLibrary.simpleMessage(
      "البحث في عمليات الفحص...",
    ),
    "search_placeholder": MessageLookupByLibrary.simpleMessage(
      "البحث بالاسم، الهاتف، أو البريد الإلكتروني...",
    ),
    "searching_for": m17,
    "seats_count": MessageLookupByLibrary.simpleMessage("عدد المقاعد *"),
    "see_other_303_message": MessageLookupByLibrary.simpleMessage(
      "يمكن العثور على الاستجابة تحت URI مختلف",
    ),
    "selectService": MessageLookupByLibrary.simpleMessage("اختر الخدمة"),
    "select_associated_company": MessageLookupByLibrary.simpleMessage(
      "اختر الشركة المرتبطة",
    ),
    "select_contract": MessageLookupByLibrary.simpleMessage("اختر عقد الإيجار"),
    "select_country_required": MessageLookupByLibrary.simpleMessage(
      "اختر الدولة *",
    ),
    "select_customer_classification": MessageLookupByLibrary.simpleMessage(
      "اختر تصنيف العميل",
    ),
    "select_gender_required": MessageLookupByLibrary.simpleMessage(
      "اختر الجنس *",
    ),
    "select_inspector": MessageLookupByLibrary.simpleMessage("اختر المفتش"),
    "select_language": MessageLookupByLibrary.simpleMessage("اختر اللغة"),
    "select_license_expiry_date": MessageLookupByLibrary.simpleMessage(
      "اختر تاريخ انتهاء الرخصة",
    ),
    "select_license_issue_date": MessageLookupByLibrary.simpleMessage(
      "اختر تاريخ إصدار الرخصة",
    ),
    "select_location": MessageLookupByLibrary.simpleMessage("يرجى اختيار موقع"),
    "select_payment_method": MessageLookupByLibrary.simpleMessage(
      "اختر طريقة الدفع",
    ),
    "select_vehicle": MessageLookupByLibrary.simpleMessage("اختر مركبة للفحص"),
    "select_working_status": MessageLookupByLibrary.simpleMessage(
      "اختر حالة العمل",
    ),
    "send_timeout_message": MessageLookupByLibrary.simpleMessage(
      "انتهت مهلة إرسال الطلب. يرجى المحاولة مرة أخرى",
    ),
    "service_unavailable_503_message": MessageLookupByLibrary.simpleMessage(
      "الخادم غير متاح حاليًا",
    ),
    "settings": MessageLookupByLibrary.simpleMessage("الإعدادات"),
    "share": MessageLookupByLibrary.simpleMessage("مشاركة"),
    "share_failed": MessageLookupByLibrary.simpleMessage("فشلت المشاركة"),
    "share_report": MessageLookupByLibrary.simpleMessage("مشاركة التقرير"),
    "signIn": MessageLookupByLibrary.simpleMessage("تسجيل الدخول"),
    "signUp": MessageLookupByLibrary.simpleMessage("تسجيل"),
    "sign_in": MessageLookupByLibrary.simpleMessage("تسجيل الدخول"),
    "size": m18,
    "staff_management": MessageLookupByLibrary.simpleMessage("إدارة الموظفين"),
    "state": MessageLookupByLibrary.simpleMessage("الولاية"),
    "statistics": MessageLookupByLibrary.simpleMessage("الإحصائيات"),
    "status_completed": MessageLookupByLibrary.simpleMessage("مكتمل"),
    "status_failed": MessageLookupByLibrary.simpleMessage("فاشل"),
    "status_in_progress": MessageLookupByLibrary.simpleMessage("قيد التنفيذ"),
    "status_pending": MessageLookupByLibrary.simpleMessage("قيد الانتظار"),
    "step": MessageLookupByLibrary.simpleMessage("خطوة"),
    "steps_completed": MessageLookupByLibrary.simpleMessage("خطوات مكتملة"),
    "storage_permission_denied": MessageLookupByLibrary.simpleMessage(
      "مطلوب إذن التخزين لتحميل الملفات",
    ),
    "switching_protocols_101_message": MessageLookupByLibrary.simpleMessage(
      "جارٍ تبديل البروتوكولات",
    ),
    "system_notification": MessageLookupByLibrary.simpleMessage("النظام"),
    "temporary_redirect_307_message": MessageLookupByLibrary.simpleMessage(
      "المورد المطلوب متاح مؤقتًا في عنوان URI مختلف",
    ),
    "terms": MessageLookupByLibrary.simpleMessage("الشروط و الأحكام"),
    "termsAndConditions": MessageLookupByLibrary.simpleMessage(
      "شروط الخدمة لهذه الرحلة",
    ),
    "termsOfServiceForThisRoute": MessageLookupByLibrary.simpleMessage(
      "شروط الخدمة لهذه الرحلة",
    ),
    "terms_of_service_for_the_route": MessageLookupByLibrary.simpleMessage(
      "شروط الخدمة للمسار",
    ),
    "test_credentials_filled": MessageLookupByLibrary.simpleMessage(
      "تم ملء بيانات الاختبار بنجاح!",
    ),
    "test_data_loaded": MessageLookupByLibrary.simpleMessage(
      "تم تحميل بيانات الاختبار في حقول النموذج",
    ),
    "theContractOrCarNumberInManadatory": MessageLookupByLibrary.simpleMessage(
      "رقم العقد أو رقم السيارة إلزامي",
    ),
    "theFreeServicesText": MessageLookupByLibrary.simpleMessage(
      "الخدمات المجانية التى تحصل عليها عند ايجار سيارة",
    ),
    "this_month": MessageLookupByLibrary.simpleMessage("هذا الشهر"),
    "this_year": MessageLookupByLibrary.simpleMessage("هذا العام"),
    "timingLocationAdditionalServiceas": MessageLookupByLibrary.simpleMessage(
      "التوقيت والموقع والخدمات الإضافية",
    ),
    "title": MessageLookupByLibrary.simpleMessage("المسمى الوظيفي"),
    "today": MessageLookupByLibrary.simpleMessage("اليوم"),
    "too_many_requests_429_message": MessageLookupByLibrary.simpleMessage(
      "أرسل المستخدم الكثير من الطلبات في فترة زمنية محددة",
    ),
    "total": MessageLookupByLibrary.simpleMessage("المجموع"),
    "totalPrice": MessageLookupByLibrary.simpleMessage("السعر الكلي"),
    "total_bookings": MessageLookupByLibrary.simpleMessage("إجمالي الحجوزات"),
    "total_cost": MessageLookupByLibrary.simpleMessage("التكلفة الإجمالية"),
    "total_drivers": MessageLookupByLibrary.simpleMessage("إجمالي السائقين"),
    "total_expenses": MessageLookupByLibrary.simpleMessage("إجمالي المصروفات"),
    "total_income": MessageLookupByLibrary.simpleMessage("إجمالي الدخل"),
    "total_inspections": MessageLookupByLibrary.simpleMessage(
      "إجمالي عمليات الفحص",
    ),
    "tourist": MessageLookupByLibrary.simpleMessage("سائح"),
    "transfer": MessageLookupByLibrary.simpleMessage("تحويل"),
    "transfer_payment": MessageLookupByLibrary.simpleMessage("تحويل"),
    "transmission_types": MessageLookupByLibrary.simpleMessage(
      "نوع ناقل الحركة *",
    ),
    "trip_details": MessageLookupByLibrary.simpleMessage("تفاصيل الرحلة"),
    "unauthorized_401_message": MessageLookupByLibrary.simpleMessage(
      "الطلب يتطلب المصادقة أو المستخدم ليس لديه الصلاحية للوصول إلى المورد",
    ),
    "unavailable_for_legal_reasons_451_message":
        MessageLookupByLibrary.simpleMessage(
          "يرفض الخادم الوصول إلى المورد نتيجة لطلب قانوني",
        ),
    "university": MessageLookupByLibrary.simpleMessage("الجامعة"),
    "unknown_error_message": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ غير معروف. يرجى المحاولة مرة أخرى في وقت لاحق",
    ),
    "unprocessable_entity_422_message": MessageLookupByLibrary.simpleMessage(
      "الطلب صحيح التنسيق ولكن لا يمكن اتباعه بسبب أخطاء دلالية",
    ),
    "unsupported_media_type_415_message": MessageLookupByLibrary.simpleMessage(
      "الخادم لا يدعم نوع الوسائط الذي يتم نقله في الطلب",
    ),
    "update": MessageLookupByLibrary.simpleMessage("تحديث"),
    "update_additional_information": MessageLookupByLibrary.simpleMessage(
      "تحديث المعلومات الإضافية",
    ),
    "update_contact_details": MessageLookupByLibrary.simpleMessage(
      "تحديث تفاصيل الاتصال",
    ),
    "update_customer": MessageLookupByLibrary.simpleMessage("تحديث العميل"),
    "update_documents": MessageLookupByLibrary.simpleMessage("تحديث المستندات"),
    "update_id_back_image": MessageLookupByLibrary.simpleMessage(
      "تحديث صورة الهوية الخلفية",
    ),
    "update_id_front_image": MessageLookupByLibrary.simpleMessage(
      "تحديث صورة الهوية الأمامية",
    ),
    "update_license_back_image": MessageLookupByLibrary.simpleMessage(
      "تحديث صورة الرخصة الخلفية",
    ),
    "update_license_front_image": MessageLookupByLibrary.simpleMessage(
      "تحديث صورة الرخصة الأمامية",
    ),
    "update_license_information": MessageLookupByLibrary.simpleMessage(
      "تحديث معلومات الرخصة",
    ),
    "update_passport_image": MessageLookupByLibrary.simpleMessage(
      "تحديث صورة جواز السفر",
    ),
    "update_payment_information": MessageLookupByLibrary.simpleMessage(
      "تحديث معلومات الدفع",
    ),
    "update_personal_information": MessageLookupByLibrary.simpleMessage(
      "تحديث المعلومات الشخصية",
    ),
    "upgrade_required_426_message": MessageLookupByLibrary.simpleMessage(
      "يجب على العميل التحويل إلى بروتوكول مختلف مثل TLS/1.0، الذي يتم تقديمه في حقل ترقية الرأسية",
    ),
    "upload_back_side_id": MessageLookupByLibrary.simpleMessage(
      "ارفع الجانب الخلفي لبطاقة الهوية",
    ),
    "upload_back_side_license": MessageLookupByLibrary.simpleMessage(
      "ارفع الجانب الخلفي للرخصة",
    ),
    "upload_documents": MessageLookupByLibrary.simpleMessage("رفع المستندات"),
    "upload_front_side_id": MessageLookupByLibrary.simpleMessage(
      "ارفع الجانب الأمامي لبطاقة الهوية",
    ),
    "upload_front_side_license": MessageLookupByLibrary.simpleMessage(
      "ارفع الجانب الأمامي للرخصة",
    ),
    "upload_passport_if_available": MessageLookupByLibrary.simpleMessage(
      "ارفع صورة جواز السفر إن وجدت",
    ),
    "upload_resume": MessageLookupByLibrary.simpleMessage(
      "رفع السيرة الذاتية (PDF/DOC/DOCX)",
    ),
    "use_proxy_305_message": MessageLookupByLibrary.simpleMessage(
      "يجب الوصول إلى المورد المطلوب من خلال البروكسي المحدد في رأس الموقع",
    ),
    "userThisCode": MessageLookupByLibrary.simpleMessage("استخدم هذا الكود"),
    "username": MessageLookupByLibrary.simpleMessage("اسم المستخدم"),
    "username_hint": MessageLookupByLibrary.simpleMessage("أدخل اسم المستخدم"),
    "validator_field_correct_email_title": MessageLookupByLibrary.simpleMessage(
      "يجب كتابة البريد الإلكتروني بطريقة صحيحة",
    ),
    "validator_field_length_title": MessageLookupByLibrary.simpleMessage(
      "يجب أن يتكون الحقل من 8 أحرف على الأقل. الرجاء إدخال قيمة أطول",
    ),
    "validator_field_numeric_title": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل يجب أن يكون ارقام فقط",
    ),
    "validator_field_password_not_match_title":
        MessageLookupByLibrary.simpleMessage("كلمة المرور غير متطابقة"),
    "validator_field_phone_length_title": MessageLookupByLibrary.simpleMessage(
      "يجب ألا يكون فارغا، وأن لا يبدأ الرقم بصفر",
    ),
    "validator_field_phone_title": MessageLookupByLibrary.simpleMessage(
      "الرجاء إدخال رقم هاتف صالح في هذا الحقل",
    ),
    "validator_field_required_title": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل يجب أن لا يكون فارغ",
    ),
    "validator_field_terms_title": MessageLookupByLibrary.simpleMessage(
      "يجب الموافقة أولا على الشروط، وسياسة الخصوصية",
    ),
    "variant_also_negotiates_506_message": MessageLookupByLibrary.simpleMessage(
      "اكتشف الخادم حلقة لانهائية أثناء معالجة الطلب",
    ),
    "vat_amount_14_percent": MessageLookupByLibrary.simpleMessage(
      "قيمة الضريبة المضافة 15%",
    ),
    "vehicle": MessageLookupByLibrary.simpleMessage("المركبة"),
    "vehicle_characteristics": MessageLookupByLibrary.simpleMessage(
      "خصائص المركبة",
    ),
    "vehicle_details": MessageLookupByLibrary.simpleMessage("المركبة"),
    "vehicle_documents_and_photos": MessageLookupByLibrary.simpleMessage(
      "مستندات وصور المركبة",
    ),
    "vehicle_info": MessageLookupByLibrary.simpleMessage("معلومات المركبة"),
    "vehicle_information": MessageLookupByLibrary.simpleMessage(
      "معلومات المركبة",
    ),
    "vehicle_required": MessageLookupByLibrary.simpleMessage("المركبة *"),
    "vehicles": MessageLookupByLibrary.simpleMessage("المركبات"),
    "verifyOtp": MessageLookupByLibrary.simpleMessage("تحقق من الرمز"),
    "view": MessageLookupByLibrary.simpleMessage("عرض"),
    "view_all": MessageLookupByLibrary.simpleMessage("عرض الكل"),
    "view_all_documents": MessageLookupByLibrary.simpleMessage(
      "عرض جميع المستندات",
    ),
    "view_files": MessageLookupByLibrary.simpleMessage("عرض الملفات"),
    "view_image": MessageLookupByLibrary.simpleMessage("عرض الصورة"),
    "view_inspection": MessageLookupByLibrary.simpleMessage("عرض الفحص"),
    "view_inspection_report": MessageLookupByLibrary.simpleMessage(
      "عرض تقرير الفحص",
    ),
    "view_payment_details": MessageLookupByLibrary.simpleMessage(
      "عرض معلومات الدفعة",
    ),
    "view_saved_files": MessageLookupByLibrary.simpleMessage(
      "عرض الملفات المحفوظة",
    ),
    "visual_representation": MessageLookupByLibrary.simpleMessage("تمثيل مرئي"),
    "voucher_code": MessageLookupByLibrary.simpleMessage("كود القسيمة"),
    "voucher_field_hint": MessageLookupByLibrary.simpleMessage("رمز القسيمة"),
    "weight": MessageLookupByLibrary.simpleMessage("الوزن"),
    "welcome_back": MessageLookupByLibrary.simpleMessage("مرحبًا بعودتك"),
    "welcome_back_user": m19,
    "welcome_get_started": MessageLookupByLibrary.simpleMessage(
      "مرحبًا! لنبدأ",
    ),
    "whatsapp": MessageLookupByLibrary.simpleMessage("واتساب"),
    "whatsapp_available": MessageLookupByLibrary.simpleMessage("الواتساب متاح"),
    "working_status": MessageLookupByLibrary.simpleMessage("حالة التشغيل *"),
    "working_status_required": MessageLookupByLibrary.simpleMessage(
      "حالة العمل *",
    ),
    "writeTheReasonOfCancellation": MessageLookupByLibrary.simpleMessage(
      "اكتب سبب الإلغاء",
    ),
    "yes": MessageLookupByLibrary.simpleMessage("نعم"),
    "yesterday": MessageLookupByLibrary.simpleMessage("أمس"),
    "yourAccountIsReadyToUse": MessageLookupByLibrary.simpleMessage(
      "حسابك جاهز للاستخدام. سيتم تحويلك إلى الصفحة الرئيسية خلال ثوانٍ قليلة..",
    ),
  };
}
