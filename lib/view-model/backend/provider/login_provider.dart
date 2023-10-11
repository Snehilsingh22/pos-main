import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginProvider extends ChangeNotifier {
  List<TextEditingController> controllers = List.generate(
    6,
    (index) => TextEditingController(),
  );
  bool _isProcessing = false,
      _isVerified = false,
      _isVerifying = false,
      isAdmin = false;
  FocusNode lastFocusNode = FocusNode(), firstFocusNode = FocusNode();
  late String _verificationID, _phone, _smsCode = "", _employerName;

  init() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    try {
      isAdmin = sp.getBool("isAdmin") ?? false;
    } catch (e) {
      isAdmin = false;
    }
  }

  reset() {
    controllers = List.generate(6, (index) => TextEditingController());
    _verificationID = "";
    _phone = "";
    _smsCode = "";
    _employerName = "";
    _phone = "";
    isAdmin = false;
    _isProcessing = false;
    _isVerified = false;
    _isVerifying = false;
    notifyListeners();
  }

  startProcessing() {
    _isProcessing = true;
    notifyListeners();
  }

  endProcessing() {
    _isProcessing = false;
    notifyListeners();
  }

  toggleVerifying() {
    _isVerifying = !_isVerifying;
  }

  String get verificationID => _verificationID;
  String get smsCode => _smsCode;
  String get phone => _phone;
  String get employerName => _employerName;
  bool get isProcessing => _isProcessing;
  bool get isVerified => _isVerified;
  bool get isVerifying => _isVerifying;

  set setSmsCode(String value) {
    _smsCode = value;
    for (int i = 0; i < value.length; i++) {
      controllers[i].text = value[i];
    }
    lastFocusNode.requestFocus();
    notifyListeners();
  }

  set setSmsCodeManually(String value) {
    _smsCode = value;
    notifyListeners();
  }

  set setVerificationID(String value) {
    _verificationID = value;
    notifyListeners();
  }

  set setPhone(String value) {
    _phone = value;
    notifyListeners();
  }

  set setVerificationStatus(bool value) {
    _isVerified = value;
    notifyListeners();
  }

  set setEmployerName(String value) {
    _employerName = value;
    notifyListeners();
  }
}
