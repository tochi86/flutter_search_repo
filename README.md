# flutter_search_repo

GitHubのリポジトリを検索できるアプリです。
iOSとAndroidで動きます。

<img src="resources/demo.gif" width=320>

## 環境構築

FVMをインストール
```
brew tap leoafarias/fvm
brew install fvm
```

Flutter SDKをインストール
```
fvm install
```

## アーキテクチャ

Androidアプリで推奨されている、MVVMアーキテクチャを参考に実装
- [アプリ アーキテクチャ ガイド](https://developer.android.com/jetpack/guide?hl=ja)

<img src="https://developer.android.com/topic/libraries/architecture/images/mad-arch-overview-data.png" width=320>

## 利用したライブラリ

- [flutter_riverpod](https://pub.dev/packages/flutter_riverpod)
- [freezed](https://pub.dev/packages/freezed)
- [http](https://pub.dev/packages/http)
- [mocktail](https://pub.dev/packages/mocktail)
