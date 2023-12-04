import 'package:demo/api/api_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final apiserviceProvider = Provider<Apiservice>((ref) {
  return Apiservice();
});

final getpostProvider = FutureProvider((ref) async {
  return ref.read(apiserviceProvider).getpost();
});
