.PHONY: build
build:
	fvm install
	sed -i'.bak' -e "s/'Running pod install...'/'Running bundle exec pod install...'/g" .fvm/flutter_sdk/packages/flutter_tools/lib/src/macos/cocoapods.dart
	sed -i'.bak' -e "s/\['pod', 'install', '--verbose'\]/\['bundle', 'exec', 'pod', 'install', '--verbose'\]/g" .fvm/flutter_sdk/packages/flutter_tools/lib/src/macos/cocoapods.dart
	rm .fvm/flutter_sdk/bin/cache/flutter_tools.snapshot
	cd ios && bundle install && cd ..
	fvm flutter pub get
	fvm flutter gen-l10n
	fvm flutter packages pub run build_runner build --delete-conflicting-outputs

.PHONY: test
test:
	fvm flutter test

.PHONY: clean
clean:
	fvm flutter clean
