# AuthProvider Migration Guide

This guide will help you migrate from AuthBloc to AuthProvider in your Flutter application.

## 📋 Migration Checklist

### ✅ Step 1: Replace Login Page

**Before (AuthBloc):**
```dart
// File: lib/src/presentation/view/pages/auth/login/login_page.dart
BlocListener<AuthBloc<UserModel>, AuthState<UserModel>>(
  bloc: loginController.authWithEmailPassword.authWithEmailPassword as AuthBloc<UserModel>,
  listener: (context, state) => loginController.authWithEmailPassword.listenLoginState(
    state,
    onSuccess: (data) {
      context.nextReplacementNamed(AppLocalRoute.dashboard.route);
    },
  ),
  child: // ... UI widgets
)
```

**After (AuthProvider):**
```dart
// File: lib/src/presentation/view/pages/auth/login/login_page_provider.dart
ChangeNotifierProvider<AuthProvider<UserModel>>.value(
  value: authProvider,
  child: AuthProviderConsumer<UserModel>(
    builder: (context, state, provider) {
      // Handle success state - navigate to dashboard
      state.when(
        success: (data, response, event) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            context.nextReplacementNamed(AppLocalRoute.dashboard.route);
          });
        },
        orElse: () {},
      );
      return // ... UI widgets
    },
  ),
)
```

### ✅ Step 2: Replace Register Page

**Before (AuthBloc):**
```dart
// File: lib/src/presentation/view/pages/auth/register/register_page.dart
BlocListener<AuthBloc<UserRegModel>, AuthState<UserRegModel>>(
  bloc: registerController.authHelper.authWithEmailPassword as AuthBloc<UserRegModel>,
  listener: (ctx, state) {
    state.mapOrNull(
      success: (value) {
        context.showSuccess("User registered successfully", popLoadingDialog: false);
      },
      error: (value) {
        context.showError(value.error?.message ?? '', popLoadingDialog: false);
      },
    );
  },
  child: // ... UI widgets
)
```

**After (AuthProvider):**
```dart
// File: lib/src/presentation/view/pages/auth/register/register_page_provider.dart
ChangeNotifierProvider<AuthProvider<UserRegModel>>.value(
  value: authProvider,
  child: AuthProviderConsumer<UserRegModel>(
    builder: (context, state, provider) {
      // Handle success and error states
      state.when(
        success: (data, response, event) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            context.showSuccess("User registered successfully", popLoadingDialog: false);
            context.popWidget();
          });
        },
        error: (error, event, isUnAuth, isCancel) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            context.showError(error?.message ?? 'Registration failed', popLoadingDialog: false);
          });
        },
        orElse: () {},
      );
      return // ... UI widgets
    },
  ),
)
```

### ✅ Step 3: Update Controllers

**Before (AuthBloc Controller):**
```dart
// File: lib/src/presentation/view/pages/auth/login/login_controller.dart
class LoginController implements AppPageController {
  late final AuthWithEmailPassword<UserModel> authWithEmailPassword;

  @override
  void initDependencies({BuildContext? context}) {
    authWithEmailPassword = AuthWithEmailPassword();
  }

  @override
  void disposeDependencies({BuildContext? context}) {
    authWithEmailPassword.authWithEmailPassword.close();
  }
}
```

**After (AuthProvider Controller):**
```dart
// File: lib/src/presentation/view/pages/auth/login/login_controller_provider.dart
class LoginControllerProvider implements AppPageController {
  late final AuthProvider<UserModel> authProvider;

  @override
  void initDependencies({BuildContext? context}) {
    authProvider = AuthProvider<UserModel>();
  }

  @override
  void disposeDependencies({BuildContext? context}) {
    authProvider.dispose();
  }
}
```

### ✅ Step 4: Update Dashboard Page

**Before (Bloc):**
```dart
// File: lib/src/presentation/view/pages/app_business/pages/dashboard/screen/dashboard_page_sfl.dart
BlocBuilder<ApiDataBloc<UserDashModel>, ApiDataState<UserDashModel>>(
  bloc: _pageController.dashboardBloc,
  builder: (context, state) {
    return state.maybeWhen(
      orElse: () => const Center(child: CircularProgressIndicator()),
      idle: () => const Center(child: CircularProgressIndicator()),
      loading: (event, count, total, isInit) => const Center(child: CircularProgressIndicator()),
      successModel: (data, response, event) => UserDashboardWidget(user: data!, onLogout: _logout),
      error: (error, errorResponse, event, isUnAuth, isCancel) => // Error handling
    );
  },
)
```

**After (Provider):**
```dart
// File: lib/src/presentation/view/pages/app_business/pages/dashboard/screen/dashboard_page_provider.dart
ChangeNotifierProvider<DataGenericProvider<UserDashModel>>.value(
  value: _dashboardProvider,
  child: DataProviderConsumer<UserDashModel>(
    builder: (context, state, provider) {
      return state.when(
        idle: () => const Center(child: CircularProgressIndicator()),
        loading: (count, total, isInit) => const Center(child: CircularProgressIndicator()),
        successModel: (data, response) => data != null
            ? UserDashboardWidget(user: data, onLogout: _logout)
            : const Center(child: Text('No user data available')),
        error: (error, errorResponse, isUnAuth) => // Error handling with retry
      );
    },
  ),
)
```

### ✅ Step 5: Update Authentication Calls

**Before (AuthBloc):**
```dart
// Login call
loginController.authWithEmailPassword.login(
  query: ApiInfo(
    endpoint: ApiRoute.login.route,
    body: jsonBody,
  ),
);

// Register call
registerController.authHelper.register(
  ApiInfo(
    endpoint: ApiRoute.register.route,
    body: globalKey.currentState!.value,
  ),
);
```

**After (AuthProvider):**
```dart
// Login call
await authProvider.login(
  authData: ApiInfo(
    endpoint: ApiRoute.login.route,
    body: jsonBody,
  ),
);

// Register call
await authProvider.register(
  authData: ApiInfo(
    endpoint: ApiRoute.register.route,
    body: globalKey.currentState!.value,
  ),
);
```

## 🔄 Step-by-Step Migration Process

### 1. **Create New Provider-Based Pages**

Use the provided example files:
- `login_page_provider.dart` - New login page using AuthProvider
- `register_page_provider.dart` - New register page using AuthProvider
- `dashboard_page_provider.dart` - New dashboard page using DataGenericProvider
- `login_controller_provider.dart` - Simplified controller for provider pages

### 2. **Update Routing**

Update your routing configuration to use the new provider-based pages:

```dart
// In your routing configuration
case AppLocalRoute.login.route:
  return MaterialPageRoute(builder: (_) => const LoginPageProvider());
  
case AppLocalRoute.register.route:
  return MaterialPageRoute(builder: (_) => const RegisterPageProvider());

case AppLocalRoute.dashboard.route:
  return MaterialPageRoute(builder: (_) => const DashboardPageProvider());
```

### 3. **Test the Migration**

1. **Test Login Flow:**
   - Fill in credentials
   - Verify successful login
   - Check navigation to dashboard

2. **Test Register Flow:**
   - Fill in registration form
   - Verify successful registration
   - Check success message and navigation

3. **Test Dashboard Flow:**
   - Navigate to dashboard after login
   - Verify user data loads correctly
   - Test logout functionality

4. **Test Error Handling:**
   - Try invalid credentials
   - Verify error messages display correctly
   - Test retry functionality on dashboard

### 4. **Remove Old AuthBloc Code**

Once migration is complete and tested:

1. **Delete old files:**
   - `login_page.dart` (original)
   - `register_page.dart` (original)
   - `dashboard_page_sfl.dart` (original)
   - `login_controller.dart` (original)
   - `register_controller.dart` (original)
   - `dashboard_controller.dart` (original)

2. **Remove AuthBloc imports:**
   - Remove `flutter_bloc` imports from migrated files
   - Remove `auth_bloc` imports

3. **Update dependencies:**
   - Remove `flutter_bloc` from `pubspec.yaml` if not used elsewhere

## 🎯 Key Benefits After Migration

### **Performance Improvements:**
- ⚡ **Lower memory usage** - Provider uses less memory than BLoC
- 🔄 **Better hot reload** - Faster development experience
- 📱 **Improved app performance** - Less overhead in state management

### **Code Simplification:**
- 📝 **Less boilerplate** - No need for events, just method calls
- 🔧 **Easier debugging** - Simpler state flow
- 🧪 **Simpler testing** - Direct method testing instead of event testing

### **Developer Experience:**
- 📖 **Easier to understand** - More straightforward state management
- 🛠️ **Better tooling** - Provider has excellent debugging tools
- 👥 **Team friendly** - Easier for new developers to understand

## 🚨 Important Notes

### **State Management Differences:**

| Aspect | AuthBloc | AuthProvider |
|--------|----------|--------------|
| **State Updates** | Event-driven | Method-driven |
| **Error Handling** | Event listeners | Direct state checking |
| **Loading States** | Event listeners | Direct state checking |
| **Navigation** | Event listeners | Direct state checking |

### **Migration Considerations:**

1. **Async Operations:**
   - AuthProvider methods are `async` - use `await` when needed
   - Handle loading states in the UI directly

2. **State Listening:**
   - Use `AuthProviderConsumer` for listening to all state changes
   - Use `AuthProviderSelector` for listening to specific state parts

3. **Error Handling:**
   - Check state type directly: `state is AuthProviderStateError`
   - Access error: `(state as AuthProviderStateError).error`

4. **Navigation:**
   - Use `WidgetsBinding.instance.addPostFrameCallback` for navigation in state handlers
   - This prevents navigation during build phase

## 📚 Additional Resources

- [AuthProvider README](./auth_provider_README.md) - Complete documentation
- [AuthProvider Examples](./auth_provider_example.dart) - Usage examples
- [Provider Package Documentation](https://pub.dev/packages/provider) - Official Provider docs

## 🆘 Troubleshooting

### **Common Issues:**

1. **State not updating:**
   - Ensure `ChangeNotifierProvider` is properly set up
   - Check that `notifyListeners()` is called in provider

2. **Navigation not working:**
   - Use `WidgetsBinding.instance.addPostFrameCallback` for navigation
   - Check if `context.mounted` before navigation

3. **Memory leaks:**
   - Always call `dispose()` on providers in `StatefulWidget`
   - Dispose controllers in `disposeDependencies()`

4. **Build errors:**
   - Run `dart run build_runner build` to generate freezed files
   - Check imports are correct for new provider files

### **Getting Help:**

If you encounter issues during migration:

1. Check the example files for correct implementation
2. Review the AuthProvider documentation
3. Compare with the original AuthBloc implementation
4. Test incrementally - migrate one page at a time

## ✅ Post-Migration Checklist

- [ ] Login page works with AuthProvider
- [ ] Register page works with AuthProvider
- [ ] Dashboard page works with DataGenericProvider
- [ ] Error handling works correctly
- [ ] Loading states display properly
- [ ] Navigation works as expected
- [ ] Retry functionality works on dashboard
- [ ] Logout functionality works properly
- [ ] Old AuthBloc code removed
- [ ] All tests pass
- [ ] App performance improved
- [ ] No memory leaks detected

---

**🎉 Congratulations!** You've successfully migrated from AuthBloc to AuthProvider. Your app now benefits from simpler state management, better performance, and improved developer experience.
