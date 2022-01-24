

import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Flutter Search Repo';

  @override
  String get repoListPageTitle => 'Search repository';

  @override
  String get repoListPageHintText => 'Enter search keyword';

  @override
  String get repoListPageRetry => 'Retry';

  @override
  String repoDetailPageStars(int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: '$count Star',
      other: '$count Stars',
    );
  }

  @override
  String repoDetailPageBy(String name) {
    return 'by $name';
  }
}
