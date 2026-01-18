---
name: update-formula
description: Homebrew Formulaのバージョンを更新する。新しいバージョンがリリースされた時に使用
allowed-tools: Read, Edit, Bash, Grep, Glob, AskUserQuestion
---

# Homebrew Formula バージョン更新スキル

Homebrew TapのFormulaを新しいバージョンに更新します。

## 使い方

```
/update-formula <formula名>
```

例: `/update-formula keifu`

## 引数

$ARGUMENTS

## 手順

1. **引数の解析**: Formula名を取得（引数がなければ `keifu` をデフォルトとする）

2. **現在のFormulaを確認**: `Formula/<name>.rb` を読み込み、現在のバージョンを取得

3. **最新リリースを自動取得**: 以下のコマンドで最新バージョンを取得
   ```bash
   gh release list --repo trasta298/<name> --limit 1 --json tagName --jq '.[0].tagName'
   ```

4. **ユーザーに確認**: AskUserQuestionツールを使って以下を確認
   - 現在のバージョン: X.X.X
   - 最新のバージョン: Y.Y.Y
   - 「このバージョンに更新しますか？」と確認

5. **ユーザーが承認した場合のみ続行**:
   - リリースアセットを確認: `gh release view` でバイナリ一覧を取得
   - SHA256を取得: 各プラットフォーム用tarballのハッシュを計算
   - Formulaを更新: バージョン、URL、SHA256を更新
   - コミット・プッシュ

6. **バージョンが同じ場合**: 「すでに最新です」と報告して終了

## SHA256取得コマンド

```bash
curl -sL <tarball_url> | shasum -a 256
```

## 対応プラットフォーム

keifuの場合、以下のプラットフォームに対応:

- macOS ARM64: `<name>-<version>-aarch64-apple-darwin.tar.gz`
- macOS Intel: `<name>-<version>-x86_64-apple-darwin.tar.gz`
- Linux ARM64: `<name>-<version>-aarch64-unknown-linux-gnu.tar.gz`
- Linux x86_64: `<name>-<version>-x86_64-unknown-linux-gnu.tar.gz`

## 重要

- 必ずユーザーの確認を取ってから更新を実行すること
- バージョン比較時は `v` プレフィックスを考慮すること
