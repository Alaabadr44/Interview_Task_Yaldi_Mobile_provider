// Flutter imports:
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Project imports:

import '../../../../core/utils/api_info.dart';
import '../../../../domain/entities/user_model.dart';
import 'data_generic_provider.dart';
import 'data_provider_widget.dart';

/// Example usage of DataGenericProvider using Provider pattern
class ExampleProviderUsagePage extends StatelessWidget {
  const ExampleProviderUsagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Provider Data Example')),
      body: DataProviderBuilder<UserModel>(
        initialQuery: ApiInfo(endpoint: '/users'),
        autoFetch: true,
        loading: (context) => const Center(child: CircularProgressIndicator()),
        error:
            (context, error) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Error: $error'),
                  ElevatedButton(
                    onPressed:
                        () => DataProviderHelper.refresh<UserModel>(context),
                    child: const Text('Retry'),
                  ),
                ],
              ),
            ),
        builder: (context, state, provider) {
          return state.when(
            idle: () => const Center(child: Text('Ready to load data')),
            loading:
                (count, total, isInit) =>
                    const Center(child: CircularProgressIndicator()),
            successModel: (data, response) => _buildUserCard(data),
            successDeferentApi: (data) => _buildUserCard(data),
            successList: (data, response) => _buildUserList(data ?? []),
            successPagination: (data, response) => _buildUserList(data ?? []),
            error:
                (error, errorResponse, isUnAuth) =>
                    Center(child: Text('Error: ${error?.message}')),
          );
        },
      ),
      floatingActionButton: _buildActionButtons(),
    );
  }

  Widget _buildUserCard(UserModel? user) {
    if (user == null) {
      return const Center(child: Text('No user data'));
    }

    return Center(
      child: Card(
        margin: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'User Details',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text('ID: ${user.id ?? 'N/A'}'),
              Text('Name: ${user.username ?? 'Unknown'}'),
              Text('Email: ${user.email ?? 'N/A'}'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUserList(List<UserModel> users) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        return ListTile(
          title: Text(user.username ?? 'Unknown'),
          subtitle: Text(user.email ?? 'No email'),
          leading: CircleAvatar(child: Text((user.id ?? 0).toString())),
          trailing: const Icon(Icons.arrow_forward_ios),
        );
      },
    );
  }

  Widget _buildActionButtons() {
    return Builder(
      builder:
          (context) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FloatingActionButton(
                onPressed:
                    () => DataProviderHelper.getGeneralData<UserModel>(
                      context,
                      queryParams: ApiInfo(endpoint: '/users/1'),
                    ),
                tooltip: 'Get Single User',
                child: const Icon(Icons.person),
              ),
              const SizedBox(height: 8),
              FloatingActionButton(
                onPressed:
                    () => DataProviderHelper.getIndexData<UserModel>(
                      context,
                      queryParams: ApiInfo(endpoint: '/users'),
                      listWithoutPagination: true,
                    ),
                tooltip: 'Get Users List',
                child: const Icon(Icons.list),
              ),
              const SizedBox(height: 8),
              FloatingActionButton(
                onPressed: () => DataProviderHelper.refresh<UserModel>(context),
                tooltip: 'Refresh',
                child: const Icon(Icons.refresh),
              ),
            ],
          ),
    );
  }
}

/// Example using manual provider setup
class ManualProviderExamplePage extends StatefulWidget {
  const ManualProviderExamplePage({super.key});

  @override
  State<ManualProviderExamplePage> createState() =>
      _ManualProviderExamplePageState();
}

class _ManualProviderExamplePageState extends State<ManualProviderExamplePage> {
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
    return Scaffold(
      appBar: AppBar(title: const Text('Manual Provider Example')),
      body: ChangeNotifierProvider<DataGenericProvider<UserModel>>.value(
        value: _provider,
        child: DataProviderConsumer<UserModel>(
          loading:
              (context) => const Center(child: CircularProgressIndicator()),
          error: (context, error) => Center(child: Text('Error: $error')),
          builder: (context, state, provider) {
            return Column(
              children: [
                ElevatedButton(
                  onPressed:
                      () => provider.getGeneralData(
                        queryParams: ApiInfo(endpoint: '/users/1'),
                      ),
                  child: const Text('Load User'),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: state.when(
                    idle:
                        () => const Center(child: Text('Press button to load')),
                    loading:
                        (count, total, isInit) =>
                            const Center(child: CircularProgressIndicator()),
                    successModel:
                        (data, response) => Center(
                          child:
                              data != null
                                  ? Text('User: ${data.username}')
                                  : const Text('No data'),
                        ),
                    successDeferentApi:
                        (data) => Center(child: Text('User: ${data.username}')),
                    successList:
                        (data, response) =>
                            const Center(child: Text('List loaded')),
                    successPagination:
                        (data, response) =>
                            const Center(child: Text('Pagination loaded')),
                    error:
                        (error, errorResponse, isUnAuth) =>
                            Center(child: Text('Error: ${error?.message}')),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

/// Example using Selector for optimized rebuilds
class OptimizedProviderExamplePage extends StatelessWidget {
  const OptimizedProviderExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Optimized Provider Example')),
      body: DataProviderWrapper<UserModel>(
        initialQuery: ApiInfo(endpoint: '/users'),
        builder:
            (context) => Column(
              children: [
                // Only rebuilds when loading state changes
                DataProviderSelector<UserModel, bool>(
                  selector: (state) => state.isLoading,
                  builder: (context, isLoading, provider) {
                    return Container(
                      padding: const EdgeInsets.all(16),
                      color: isLoading ? Colors.orange : Colors.green,
                      child: Text(
                        isLoading ? 'Loading...' : 'Ready',
                        style: const TextStyle(color: Colors.white),
                      ),
                    );
                  },
                ),
                // Only rebuilds when success data changes
                Expanded(
                  child: DataProviderSelector<UserModel, UserModel?>(
                    selector: (state) => state.data,
                    builder: (context, user, provider) {
                      if (user == null) {
                        return const Center(child: Text('No user data'));
                      }
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('User: ${user.username}'),
                            Text('Email: ${user.email}'),
                            ElevatedButton(
                              onPressed: () => provider.refresh(),
                              child: const Text('Refresh'),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
      ),
    );
  }
}
