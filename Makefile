.PHONY: build
build:
	fvm flutter pub get
	fvm flutter packages pub run build_runner build --delete-conflicting-outputs

.PHONY: clean
clean:
	fvm flutter clean
