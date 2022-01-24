.PHONY: build
build:
	fvm flutter pub get
	fvm flutter gen-l10n
	fvm flutter packages pub run build_runner build --delete-conflicting-outputs

.PHONY: test
test:
	fvm flutter test

.PHONY: clean
clean:
	fvm flutter clean
