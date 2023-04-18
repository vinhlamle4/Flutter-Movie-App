.PHONY: pub get
pub_get:
	flutter clean
	flutter pub get

.PHONY: gen code
runner:
	flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: build-android-debug-dev
build-android-debug-dev:
	flutter build apk --debug

.PHONY: build-android-release-dev
build-android-release-dev:
	flutter build apk --release
