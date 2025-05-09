# 要件定義

## アプリ概要

- アプリ名(仮称): ...
- 目的: ...
- 対象ユーザー: ...

## 対応プラットフォーム

- iOS(iPhone)
- Android

## 主要機能一覧

- ユーザ登録
  - 匿名認証/GoogleアカウントとAppleアカウントでアカウント作成
- ログイン/ログアウト
  - 認証機能付きログイン
- ...

## UI/UX要件（簡易）

- **デザインテイスト**： ...
- **言語**：英語(デフォルト)、日本語
  - 端末の言語設定に応じて自動で切り替え
  - アプリ内で言語切り替えも可能
- **アクセシビリティ**：特になし

## 非機能要件

- **パフォーマンス**：高速起動、レスポンスタイム1秒以内
- **セキュリティ**：SSL通信、パスワードハッシュ化、認証トークン
- **バックエンド連携**：REST API もしくは、Firebase
- **データ保存**：クラウド保存

## マネタイズ案（サブスクリプション）

- プレミアムプラン（月額課金）
  - 広告非表示
  - 月額料金：300円
  - トライアル：なし
  - 課金処理：RevenueCatを利用（iOS/Android対応）

## 法務・ポリシー対応

- 設定画面やメニューから以下の画面へ遷移できるようにする
  - プライバシーポリシー
  - 利用規約
  - 特定商取引法に関する表記（日本のみ）
  - お問い合わせフォーム

## 将来的な機能案（余裕があれば）

- ...
