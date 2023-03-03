import 'package:chat_app/state/login_page_state.dart';
import 'package:state_notifier/state_notifier.dart';

class LoginPageViewModel extends StateNotifier<LoginPageState> {
  LoginPageViewModel() : super(const LoginPageState());

  void setId(String v) {
    state = state.copyWith(id: v);
  }
}
