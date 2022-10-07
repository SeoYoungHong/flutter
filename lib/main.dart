import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:flutter/material.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_api/amplify_api.dart';
import 'amplifyconfiguration.dart';
import 'api.dart';
import 'package:new_project/models/ModelProvider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
class CustomFunctionProvider extends FunctionAuthProvider {
    const CustomFunctionProvider();

    @override
    Future<String?> getLatestAuthToken() async => '[OPEN-ID-CONNECT-TOKEN]';
}
class CustomOIDCProvider extends OIDCAuthProvider {
  const CustomOIDCProvider();

  @override
  Future<String?> getLatestAuthToken() async {
    final session = await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;
    return session.userPoolTokens?.idToken;
  }
}
class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }
 
  Future<void> _configureAmplify() async {
    try {
      final auth = AmplifyAuthCognito();
      final api = AmplifyAPI(authProviders: const [
        CustomOIDCProvider(),
        CustomFunctionProvider(),],modelProvider: ModelProvider.instance);
      await Amplify.addPlugins([auth, api]);

      // call Amplify.configure to use the initialized categories in your app
      await Amplify.configure(amplifyconfig);
    } on Exception catch (e) {
      safePrint('An error occurred configuring Amplify: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: MaterialApp(
        builder: Authenticator.builder(),
        home: const Scaffold(
          body: Center(
            child: Apipage(),
          ),
        ),
      ),
    );
  }
}