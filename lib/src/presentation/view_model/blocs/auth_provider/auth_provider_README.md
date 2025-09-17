# Auth Provider

This is a Provider-based authentication controller that replicates the functionality of your existing `AuthBloc` but using Provider state management pattern instead of BLoC.

## Features

- ✅ Same API as your existing AuthBloc
- ✅ Reactive state management with Provider
- ✅ Support for all auth operations (login, logout, register, etc.)
- ✅ Loading states with progress tracking
- ✅ Error handling with automatic retry
- ✅ Easy integration with existing codebase
- ✅ Optimized rebuilds with Selector
- ✅ Type-safe with generics

## Files Structure

```
data_provider/
├── auth_provider.dart              # Main AuthProvider controller
├── auth_provider_state.dart        # State definitions
├── auth_provider_widget.dart       # Helper widgets and extensions
├── auth_provider_example.dart      # Usage examples
└── auth_provider_README.md         # This documentation
```

## Installation

The Provider package is already added to your `pubspec.yaml`:

```yaml
dependencies:
  provider: ^6.1.2
```

## Basic Usage

### 1. Simple Usage with AuthProviderBuilder

```dart
AuthProviderBuilder<UserModel>(
  builder: (context, state, provider) {
    return state.when(
      idle: () => const Text('Ready to login'),
      loading: (event, count, total, isInit) => const CircularProgressIndicator(),
      success: (data, response, event) => Text('Welcome, ${data?.firstName}!'),
      error: (error, event, isUnAuth, isCancel) => Text('Error: ${error?.message}'),
    );
  },
)
```

### 2. Manual Provider Setup

```dart
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
      child: AuthProviderConsumer<UserModel>(
        builder: (context, state, provider) {
          // Your UI here
        },
      ),
    );
  }
}
```

### 3. Using Helper Methods

```dart
// Login user
AuthProviderHelper.login<UserModel>(
  context,
  authData: ApiInfo(
    endpoint: ApiRoute.login.route,
    body: {
      'username': 'emilys',
      'password': 'emilyspass',
      'expiresInMins': 30,
    },
  ),
);

// Logout user
AuthProviderHelper.logout<UserModel>(
  context,
  authData: ApiInfo(endpoint: ApiRoute.logout.route),
);

// Register user
AuthProviderHelper.register<UserModel>(
  context,
  authData: ApiInfo(
    endpoint: ApiRoute.register.route,
    body: {
      'firstName': 'John',
      'lastName': 'Doe',
      'email': 'john@example.com',
      'username': 'johndoe',
      'password': 'password123',
    },
  ),
);

// Reset state
AuthProviderHelper.reset<UserModel>(context);

// Cancel current request
AuthProviderHelper.cancelRequest<UserModel>(context);
```

### 4. Optimized Rebuilds with Selector

```dart
// Only rebuilds when loading state changes
AuthProviderSelector<UserModel, bool>(
  selector: (state) => state.isLoading,
  builder: (context, isLoading, provider) {
    return Text(isLoading ? 'Loading...' : 'Ready');
  },
)

// Only rebuilds when user data changes
AuthProviderSelector<UserModel, UserModel?>(
  selector: (state) => state.data,
  builder: (context, user, provider) {
    return Text(user?.firstName ?? 'No user');
  },
)
```

## State Management

The provider uses `AuthProviderState<T>` which has the following states:

- **idle**: Initial state
- **loading**: When performing auth operation (with optional progress)
- **success**: Successful auth operation with data
- **error**: Error state with error details

## Methods Available

### Authentication Operations
- `login()` - User login
- `logout()` - User logout
- `register()` - User registration
- `forgetPassword()` - Password reset request
- `checkCode()` - Verify reset code
- `sendCode()` - Send verification code
- `updateUser()` - Update user profile
- `deleteUser()` - Delete user account
- `changePassword()` - Change user password

### State Helpers
- `state.isIdle` - Check if idle
- `state.isLoading` - Check if loading
- `state.isSuccess` - Check if success
- `state.isError` - Check if error
- `state.isUnAuthorized` - Check if unauthorized error

### Data Access
- `data` - Get current user data
- `response` - Get current API response
- `error` - Get current error
- `currentEvent` - Get current/last event

## Context Extensions

```dart
// Get provider instance
final provider = context.authProvider<UserModel>();

// Get current state
final state = context.authProviderState<UserModel>();
```

## Comparison with AuthBloc

| Feature | AuthBloc | AuthProvider |
|---------|----------|--------------|
| State Management | Stream-based | ChangeNotifier-based |
| Memory Usage | Higher | Lower |
| Boilerplate | More | Less |
| Learning Curve | Steeper | Easier |
| Testing | Complex | Simple |
| Hot Reload | Good | Excellent |
| Type Safety | Good | Excellent |

## Migration from AuthBloc

To migrate from your existing AuthBloc:

1. Replace `BlocProvider` with `ChangeNotifierProvider`
2. Replace `BlocBuilder` with `Consumer` or `AuthProviderConsumer`
3. Replace `BlocSelector` with `Selector` or `AuthProviderSelector`
4. Replace `context.read<AuthBloc>().add(event)` with `provider.methodCall()`

### Before (AuthBloc):
```dart
BlocProvider<AuthBloc<UserModel>>(
  create: (context) => AuthBloc<UserModel>(),
  child: BlocBuilder<AuthBloc<UserModel>, AuthState<UserModel>>(
    builder: (context, state) {
      return state.when(
        idle: () => const Text('Ready'),
        loading: (event, count, total, isInit) => const CircularProgressIndicator(),
        success: (data, response, event) => Text('Welcome, ${data?.firstName}!'),
        error: (error, event, isUnAuth, isCancel) => Text('Error: ${error?.message}'),
      );
    },
  ),
)
```

### After (AuthProvider):
```dart
ChangeNotifierProvider<AuthProvider<UserModel>>(
  create: (context) => AuthProvider<UserModel>(),
  child: AuthProviderConsumer<UserModel>(
    builder: (context, state, provider) {
      return state.when(
        idle: () => const Text('Ready'),
        loading: (event, count, total, isInit) => const CircularProgressIndicator(),
        success: (data, response, event) => Text('Welcome, ${data?.firstName}!'),
        error: (error, event, isUnAuth, isCancel) => Text('Error: ${error?.message}'),
      );
    },
  ),
)
```

## Best Practices

1. **Use Selector for optimization**: When you only need specific parts of the state
2. **Dispose properly**: Always dispose providers in StatefulWidgets
3. **Use helper methods**: They provide a cleaner API
4. **Handle loading states**: Always show loading indicators
5. **Error handling**: Implement retry mechanisms
6. **Use autoLogin**: For immediate authentication on app start

## Performance Tips

- Use `AuthProviderSelector` instead of `Consumer` when possible
- Implement `shouldRebuild` for complex selectors
- Use `listen: false` when accessing provider without listening
- Dispose providers properly to avoid memory leaks

## Example Models

Make sure your models are properly serializable:

```dart
class UserModel {
  final int? id;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? username;

  UserModel({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.username,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    id: json['id'],
    firstName: json['firstName'],
    lastName: json['lastName'],
    email: json['email'],
    username: json['username'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'firstName': firstName,
    'lastName': lastName,
    'email': email,
    'username': username,
  };
}
```

## Error Handling

The auth provider automatically handles different types of errors:

```dart
AuthProviderConsumer<UserModel>(
  builder: (context, state, provider) {
    return state.when(
      error: (error, event, isUnAuth, isCancel) {
        if (isUnAuth) {
          // Handle unauthorized access
          return const UnauthorizedWidget();
        } else if (isCancel) {
          // Handle cancelled request
          return const CancelledWidget();
        } else {
          // Handle other errors
          return ErrorWidget(error?.message ?? 'Unknown error');
        }
      },
      // ... other states
    );
  },
)
```

## Integration with Existing Code

The auth provider is designed to work seamlessly with your existing authentication flow. It uses the same `BaseBlocHelper` and authentication use cases as your AuthBloc, ensuring compatibility with your current API structure and error handling.





