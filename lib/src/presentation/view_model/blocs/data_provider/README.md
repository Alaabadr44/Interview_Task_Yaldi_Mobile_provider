# Provider Data Generic Controller

This is a Provider-based data controller that replicates the functionality of your existing `ApiDataBloc` but using Provider state management pattern instead of BLoC.

## Features

- ✅ Same API as your existing BLoC
- ✅ Reactive state management with Provider
- ✅ Support for pagination 
- ✅ Loading states with progress tracking
- ✅ Error handling with automatic retry
- ✅ Different API support
- ✅ Easy integration with existing codebase
- ✅ Optimized rebuilds with Selector

## Files Structure

```
data_provider/
├── data_provider_state.dart         # State definitions
├── data_generic_provider.dart       # Main Provider controller
├── data_provider_widget.dart        # Helper widgets
├── example_usage.dart              # Usage examples
└── README.md                       # This documentation
```

## Installation

The Provider package is already added to your `pubspec.yaml`:

```yaml
dependencies:
  provider: ^6.1.2
```

## Basic Usage

### 1. Simple Usage with DataProviderBuilder

```dart
DataProviderBuilder<UserModel>(
  initialQuery: ApiInfo(endpoint: '/users'),
  autoFetch: true,
  loading: (context) => const CircularProgressIndicator(),
  error: (context, error) => Text('Error: $error'),
  builder: (context, state, provider) {
    return state.when(
      idle: () => const Text('Ready'),
      loading: (count, total, isInit) => const CircularProgressIndicator(),
      successModel: (data, response) => Text('User: ${data?.name}'),
      successList: (data, response) => ListView(...),
      successPagination: (data, response) => ListView(...),
      successDeferentApi: (data) => Text('Data: $data'),
      error: (error, errorResponse, isUnAuth) => Text('Error: ${error?.message}'),
    );
  },
)
```

### 2. Manual Provider Setup

```dart
class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  late DataGenericProvider<UserModel> _provider;

  @override
  void initState() {
    super.initState();
    _provider = DataGenericProvider<UserModel>(
      query: ApiInfo(endpoint: '/users'),
    );
  }

  @override
  void dispose() {
    _provider.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DataGenericProvider<UserModel>>.value(
      value: _provider,
      child: DataProviderConsumer<UserModel>(
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
// Get single data
DataProviderHelper.getGeneralData<UserModel>(
  context,
  queryParams: ApiInfo(endpoint: '/users/1'),
);

// Get list data
DataProviderHelper.getIndexData<UserModel>(
  context,
  queryParams: ApiInfo(endpoint: '/users'),
  listWithoutPagination: true,
);

// Store data
DataProviderHelper.storeData<UserModel>(
  context,
  queryParams: ApiInfo(
    endpoint: '/users',
    body: {'name': 'John', 'email': 'john@example.com'},
  ),
);

// Refresh current data
DataProviderHelper.refresh<UserModel>(context);
```

### 4. Optimized Rebuilds with Selector

```dart
// Only rebuilds when loading state changes
DataProviderSelector<UserModel, bool>(
  selector: (state) => state.isLoading,
  builder: (context, isLoading, provider) {
    return Text(isLoading ? 'Loading...' : 'Ready');
  },
)

// Only rebuilds when data changes
DataProviderSelector<UserModel, UserModel?>(
  selector: (state) => state.data,
  builder: (context, user, provider) {
    return Text(user?.name ?? 'No user');
  },
)
```

## State Management

The provider uses `DataProviderState<T>` which has the following states:

- **idle**: Initial state
- **loading**: When fetching data (with optional progress)
- **successModel**: Single model response
- **successList**: List response without pagination
- **successPagination**: Paginated list response
- **successDeferentApi**: Different API response
- **error**: Error state

## Methods Available

### Data Fetching
- `getGeneralData()` - Get single model
- `getIndexData()` - Get list/pagination data
- `storeData()` - Store/Create data
- `updateData()` - Update existing data
- `refresh()` - Refresh current data

### State Helpers
- `state.isIdle` - Check if idle
- `state.isLoading` - Check if loading
- `state.isSuccess` - Check if success
- `state.isError` - Check if error

## Context Extensions

```dart
// Get provider instance
final provider = context.dataProvider<UserModel>();

// Get current state
final state = context.dataProviderState<UserModel>();
```

## Comparison with BLoC

| Feature | BLoC | Provider |
|---------|------|----------|
| State Management | Stream-based | ChangeNotifier-based |
| Memory Usage | Higher | Lower |
| Boilerplate | More | Less |
| Learning Curve | Steeper | Easier |
| Testing | Complex | Simple |
| Hot Reload | Good | Excellent |

## Migration from BLoC

To migrate from your existing BLoC:

1. Replace `BlocProvider` with `ChangeNotifierProvider`
2. Replace `BlocBuilder` with `Consumer` or `DataProviderConsumer`
3. Replace `BlocSelector` with `Selector` or `DataProviderSelector`
4. Replace `context.read<ApiDataBloc>().add(event)` with `provider.methodCall()`

## Best Practices

1. **Use Selector for optimization**: When you only need specific parts of the state
2. **Dispose properly**: Always dispose providers in StatefulWidgets
3. **Use helper methods**: They provide a cleaner API
4. **Handle loading states**: Always show loading indicators
5. **Error handling**: Implement retry mechanisms
6. **Use autoFetch**: For immediate data loading

## Performance Tips

- Use `DataProviderSelector` instead of `Consumer` when possible
- Implement `shouldRebuild` for complex selectors
- Use `listen: false` when accessing provider without listening
- Dispose providers properly to avoid memory leaks

## Example Models

Make sure your models are properly serializable:

```dart
class UserModel {
  final int? id;
  final String? name;
  final String? email;

  UserModel({this.id, this.name, this.email});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    id: json['id'],
    name: json['name'], 
    email: json['email'],
  );
}
``` 