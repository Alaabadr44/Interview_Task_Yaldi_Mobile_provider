abstract class UseCase<R, Q> {
  R call({required Q event});
  // Future<DataState> call({required QueryParams params});
}
