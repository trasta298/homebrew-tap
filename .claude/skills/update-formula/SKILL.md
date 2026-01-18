---
name: update-formula
description: Homebrew Formulaのバージョンを更新する。新しいバージョンがリリースされた時に使用
allowed-tools: Read, Edit, Bash, Grep, Glob
---

# Homebrew Formula バージョン更新スキル

Homebrew TapのFormulaを新しいバージョンに更新します。

## 使い方

```
/update-formula <formula名> <新バージョン>
```

例: `/update-formula keifu v0.3.0`

## 引数

$ARGUMENTS

## 手順

1. **引数の解析**: Formula名と新バージョンを取得
2. **現在のFormulaを確認**: `Formula/<name>.rb` を読み込む
3. **リリースアセットを確認**: `gh release view` でバイナリ一覧を取得
4. **SHA256を取得**: 各プラットフォーム用tarballのハッシュを計算
5. **Formulaを更新**: バージョン、URL、SHA256を更新
6. **コミット**: 変更をコミット（プッシュはユーザーに確認）

## SHA256取得コマンド

```bash
curl -sL <tarball_url> | shasum -a 256
```

## 対応プラットフォーム

keifuの場合、以下のプラットフォームに対応:

- macOS ARM64: `keifu-v<VERSION>-aarch64-apple-darwin.tar.gz`
- macOS Intel: `keifu-v<VERSION>-x86_64-apple-darwin.tar.gz`
- Linux ARM64: `keifu-v<VERSION>-aarch64-unknown-linux-gnu.tar.gz`
- Linux x86_64: `keifu-v<VERSION>-x86_64-unknown-linux-gnu.tar.gz`

## 注意事項

- バージョン番号は `v` プレフィックス付き（例: `v0.3.0`）で指定
- GitHubリリースが存在することを確認してから実行
- コミット後のプッシュは確認を取ること
