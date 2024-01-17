import 'package:dentsu_interview/models/dentsuquote.dart';
import 'package:dentsu_interview/providers/future_state/future_state.dart';
import 'package:dentsu_interview/services/quotes_service/quotes_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final quotesProvider =
    StateNotifierProvider<QuotesNotifier, FutureState<Map<String, dynamic>>>(
        (ref) => QuotesNotifier());

class QuotesNotifier extends StateNotifier<FutureState<Map<String, dynamic>>> {
  QuotesNotifier() : super(FutureState.initial());

  createQuote({required Map<String, dynamic> data}) async {
    state = FutureState.loading();
    try {
      await QuotesService.createQuote(data: data);
      state = FutureState.success(data: data);
    } catch (e) {
      state = FutureState.error(message: e.toString());
    }
  }
}

final getQuotesProvider =
    StateNotifierProvider<GetQuotesNotifier, FutureState<List<DentsuQuote>>>(
        (ref) => GetQuotesNotifier()..getQuotes());

class GetQuotesNotifier extends StateNotifier<FutureState<List<DentsuQuote>>> {
  GetQuotesNotifier() : super(FutureState.initial());

  getQuotes() async {
    state = FutureState.loading();
    try {
      var quotes = await QuotesService.getQuotes();
      state = FutureState.success(data: quotes);
    } catch (e) {
      state = FutureState.error(message: e.toString());
    }
  }

  filterQuotes({String? name, String? email}) async {
    state = FutureState.loading();
    try {
      var quotes = await QuotesService.getQuotes();
      if (name == null && email == null) {
        state = FutureState.success(data: quotes);
        return;
      } else if (name != null) {
        state = FutureState.success(
            data: quotes.where((element) {
          return element.firstName!
                  .toLowerCase()
                  .contains(name.toLowerCase()) ||
              element.lastName!.toLowerCase().contains(name.toLowerCase()) ||
              element.middleName!.toLowerCase().contains(name.toLowerCase());
        }).toList());
      } else if (email != null) {
        state = FutureState.success(
            data: quotes.where((element) {
          return element.email!.toLowerCase().contains(email.toLowerCase());
        }).toList());
      }
    } catch (e) {
      state = FutureState.error(message: e.toString());
    }
  }
}
