import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:shop/common/services/storage.dart';
import 'package:shop/common/utils/environment.dart';
import 'package:shop/common/utils/kstrings.dart';
import 'package:shop/common/widgets/error_modal.dart';
import 'package:shop/src/auth/models/auth_token_model.dart';

class AuthNotifier with ChangeNotifier {
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  void setLoading() {
    _isLoading = !_isLoading;
    notifyListeners();
  }

  void loginFunc(String data, BuildContext context) async {
    setLoading();

    try {
      var url = Uri.parse('${Environment.appBaseUrl}/auth/token/login');
      var response = await http.post(url,
          headers: {
            'Content-Type': 'application/json',
          },
          body: data);
      if (response.statusCode == 200) {
        String accessToken = accessTokenModelFromJson(response.body).authToken;

        Storage().setString('accessToken', accessToken);

        print(accessToken);

        //TODO: Get user info
        //TODOL get user extras

        setLoading();
      }
    } catch (e) {
      setLoading();
      showErrorPopup(context, AppText.kErrorLogin, null, null);
    }
  }

  void registrationFunc(String data, BuildContext context) async {
    setLoading();

    try {
      var url = Uri.parse('${Environment.appBaseUrl}/auth/users/');
      var response = await http.post(url,
          headers: {
            'Content-Type': 'application/json',
          },
          body: data);
      if (response.statusCode == 201) {
        setLoading();
      } else if (response.statusCode == 400) {
        setLoading();
        var data = jsonDecode(response.body);
        showErrorPopup(context, data['password'][0], null, null);
      }
    } catch (e) {
      setLoading();
      showErrorPopup(context, AppText.kErrorGetUser, null, null);
    }
  }

  void getUser(String accessToken) async {}
}
