// ignore_for_file: public_member_api_docs, sort_constructors_first

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import 'auth_provider.dart';
import 'auth_provider_state.dart';

class AuthProviderWidget {
  // Get the current AuthProviderState
  static AuthProviderState<T> authProviderState<T>(BuildContext context) {
    final provider = Provider.of<AuthProvider<T>>(context);
    return provider.authState;
  }

  // Get the AuthProvider instance
  static AuthProvider<T> authProvider<T>(BuildContext context) {
    return Provider.of<AuthProvider<T>>(context);
  }
}

// Consumer widget for AuthProvider
class AuthProviderConsumer<T> extends StatelessWidget {
  final Widget Function(
    BuildContext context,
    AuthProviderState<T> state,
    AuthProvider<T> provider,
  )
  builder;

  const AuthProviderConsumer({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider<T>>(
      builder: (context, provider, child) {
        return builder(context, provider.authState, provider);
      },
    );
  }
}

// Selector widget for AuthProvider
class AuthProviderSelector<T, R> extends StatelessWidget {
  final R Function(AuthProviderState<T> state) selector;
  final Widget Function(
    BuildContext context,
    R selected,
    AuthProvider<T> provider,
  )
  builder;
  final bool Function(R previous, R next)? shouldRebuild;

  const AuthProviderSelector({
    super.key,
    required this.selector,
    required this.builder,
    this.shouldRebuild,
  });

  @override
  Widget build(BuildContext context) {
    return Selector<AuthProvider<T>, R>(
      selector: (context, provider) => selector(provider.authState),
      shouldRebuild: shouldRebuild,
      builder: (context, selected, child) {
        final provider = Provider.of<AuthProvider<T>>(context);
        return builder(context, selected, provider);
      },
    );
  }
}

// Extension for easy access to AuthProvider in BuildContext
extension AuthProviderContextExtension on BuildContext {
  AuthProviderState<T> authProviderState<T>() {
    return AuthProviderWidget.authProviderState<T>(this);
  }

  AuthProvider<T> authProvider<T>() {
    return AuthProviderWidget.authProvider<T>(this);
  }
}
