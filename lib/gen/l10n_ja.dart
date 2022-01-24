

import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'Flutter Search Repo';

  @override
  String get repoListPageTitle => 'リポジトリ検索';

  @override
  String get repoListPageHintText => '検索文字列を入力';

  @override
  String get repoListPageRetry => 'リトライ';

  @override
  String repoDetailPageStars(int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countスター',
    );
  }

  @override
  String repoDetailPageBy(String name) {
    return 'by $name';
  }
}
