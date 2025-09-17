// Package imports:
import 'package:flutter/material.dart';import 'package:provider/provider.dart';

// Project imports:
import '../../../../core/error/error.dart';
import '../../../../core/utils/api_info.dart';
import '../../../../core/utils/enums.dart';
import '../../../../domain/entities/user_model.dart';

import 'auth_event.dart';
import 'auth_provider.dart';
import 'auth_provider_state.dart';
import 'auth_provider_widget.dart';

/// Example usage of AuthProvider for authentication
class AuthProviderExample extends StatefulWidget {
  const AuthProviderExample({super.key});

  @override
  State<AuthProviderExample> createState() => _AuthProviderExampleState();
}

class _AuthProviderExampleState extends State<AuthProviderExample> {
  late AuthProvider<UserModel> _authProvider;

  @override
  void initState() {
    super.initState();
    _authProvider = AuthProvider<UserModel>();
  }

  @override
  void dispose() {
    _authProvider.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AuthProvider<UserModel>>.value(
      value: _authProvider,
      child: Scaffold(
        appBar: AppBar(title: const Text('Auth Provider Example')),
        body: AuthProviderConsumer<UserModel>(
          builder: (context, state, provider) {
            return state.maybeWhen(
              idle: () => _buildIdleState(),
              loading:
                  (event, count, total, isInit) =>
                      _buildLoadingState(event, count, total),
              success:
                  (data, response, event) =>
                      _buildSuccessState(data, response, event),
              error:
                  (error, event, isUnAuth, isCancel) =>
                      _buildErrorState(error, event, isUnAuth),
              orElse: () => _buildIdleState(),
            );
          },
        ),
      ),
    );
  }

  Widget _buildIdleState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.login, size: 64, color: Colors.grey),
          const SizedBox(height: 16),
          const Text('Ready to authenticate'),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () => _performLogin(),
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }

  Widget _buildLoadingState(AuthEvent event, int? count, int? total) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(height: 16),
          Text('${_getEventName(event)}...'),
          if (count != null && total != null) ...[
            const SizedBox(height: 8),
            LinearProgressIndicator(value: count / total),
            Text('$count / $total'),
          ],
        ],
      ),
    );
  }

  Widget _buildSuccessState(UserModel? data, response, AuthEvent event) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.check_circle, size: 64, color: Colors.green),
          const SizedBox(height: 16),
          Text('${_getEventName(event)} successful!'),
          if (data != null) ...[
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text('Welcome, ${data.firstName ?? 'User'}!'),
                    if (data.email != null) Text('Email: ${data.email}'),
                    if (data.username != null)
                      Text('Username: ${data.username}'),
                  ],
                ),
              ),
            ),
          ],
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () => _performLogout(),
            child: const Text('Logout'),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(AppError? error, AuthEvent event, bool isUnAuth) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            isUnAuth ? Icons.lock : Icons.error_outline,
            size: 64,
            color: Colors.red.shade400,
          ),
          const SizedBox(height: 16),
          Text(
            '${_getEventName(event)} failed',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            error?.message ?? 'Unknown error occurred',
            style: TextStyle(color: Colors.grey.shade600),
          ),
          if (isUnAuth) ...[
            const SizedBox(height: 8),
            Text(
              'Unauthorized access',
              style: TextStyle(color: Colors.orange.shade600),
            ),
          ],
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () => _retryLastAction(),
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }

  String _getEventName(AuthEvent event) {
    return event.maybeWhen(
      login: (authData) => 'Login',
      logout: (authData) => 'Logout',
      register: (authData, title) => 'Registration',
      forget: (authData) => 'Password Reset',
      checkCode: (authData) => 'Code Verification',
      sendCode: (authData) => 'Sending Code',
      update: (authData, title) => 'Update Profile',
      delete: (authData) => 'Delete Account',
      changePassword: (authData, title) => 'Change Password',
      orElse: () => 'Unknown Event',
    );
  }

  Future<void> _performLogin() async {
    final loginData = ApiInfo(
      endpoint: ApiRoute.login.route,
      body: {
        'username': 'emilys',
        'password': 'emilyspass',
        'expiresInMins': 30,
      },
    );

    await _authProvider.login(authData: loginData);
  }

  Future<void> _performLogout() async {
    final logoutData = ApiInfo(endpoint: ApiRoute.logout.route);

    await _authProvider.logout(authData: logoutData);
  }

  Future<void> _retryLastAction() async {
    final currentEvent = _authProvider.currentEvent;
    if (currentEvent != null) {
      // Retry the last action based on event type
      currentEvent.maybeWhen(
        login: (authData) => _performLogin(),
        logout: (authData) => _performLogout(),
        register: (authData, title) {
          // Handle register retry if needed
        },
        forget: (authData) {
          // Handle forget password retry if needed
        },
        checkCode: (authData) {
          // Handle check code retry if needed
        },
        sendCode: (authData) {
          // Handle send code retry if needed
        },
        update: (authData, title) {
          // Handle update retry if needed
        },
        delete: (authData) {
          // Handle delete retry if needed
        },
        changePassword: (authData, title) {
          // Handle change password retry if needed
        },
        orElse: () {},
      );
    }
  }
}

/// Simple login page using AuthProvider
class SimpleLoginPage extends StatefulWidget {
  const SimpleLoginPage({super.key});

  @override
  State<SimpleLoginPage> createState() => _SimpleLoginPageState();
}

class _SimpleLoginPageState extends State<SimpleLoginPage> {
  final _usernameController = TextEditingController(text: 'emilys');
  final _passwordController = TextEditingController(text: 'emilyspass');

  @override
  Widget build(BuildContext context) {
    return AuthProviderConsumer<UserModel>(
      builder: (context, state, provider) {
        return state.maybeWhen(
          idle: () => _buildLoginForm(provider),
          loading: (event, count, total, isInit) => _buildLoadingState(),
          success: (data, response, event) {
            // Navigate to dashboard or next screen
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Navigator.of(context).pushReplacementNamed('/dashboard');
            });
            return const Center(child: CircularProgressIndicator());
          },
          error:
              (error, event, isUnAuth, isCancel) =>
                  _buildErrorState(error, provider),
          orElse: () => _buildLoginForm(provider),
        );
      },
    );
  }

  Widget _buildLoginForm(AuthProvider<UserModel> provider) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _handleLogin(provider),
                child: const Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoadingState() {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: const Center(child: CircularProgressIndicator()),
    );
  }

  Widget _buildErrorState(AppError? error, AuthProvider<UserModel> provider) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error, size: 64, color: Colors.red.shade400),
            const SizedBox(height: 16),
            Text(
              error?.message ?? 'Login failed',
              style: TextStyle(color: Colors.red.shade600),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _handleLogin(provider),
                child: const Text('Retry'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _handleLogin(AuthProvider<UserModel> provider) async {
    final loginData = ApiInfo(
      endpoint: ApiRoute.login.route,
      body: {
        'username': _usernameController.text,
        'password': _passwordController.text,
        'expiresInMins': 30,
      },
    );

    await provider.login(authData: loginData);
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}

/// Dashboard page using AuthProvider
class AuthDashboardPage extends StatelessWidget {
  const AuthDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            onPressed: () => _handleLogout(context),
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: AuthProviderSelector<UserModel, UserModel?>(
        selector: (state) => state.data,
        builder: (context, user, provider) {
          if (user == null) {
            return const Center(child: Text('No user data'));
          }

          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Card(
                  child: ListTile(
                    leading: const CircleAvatar(child: Icon(Icons.person)),
                    title: Text('${user.firstName} ${user.lastName}'),
                    subtitle: Text(user.email ?? 'No email'),
                  ),
                ),
                const SizedBox(height: 16),
                const Text('Welcome to your dashboard!'),
              ],
            ),
          );
        },
      ),
    );
  }

  Future<void> _handleLogout(BuildContext context) async {
    final provider = context.authProvider<UserModel>();
    final logoutData = ApiInfo(endpoint: ApiRoute.logout.route);

    await provider.logout(authData: logoutData);

    if (context.mounted) {
      Navigator.of(context).pushReplacementNamed('/login');
    }
  }
}
