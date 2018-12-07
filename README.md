# IzuminBotV2
IzuminBotV2, the partner of producers and developers.

## Description
進捗はやしたり頑張りを報告するといずみんがほめてくれたりするSlackBotです

## Environment
Ruby >= 2.5.3  
Bundler >= 1.17.1

## Setup
`.env` にBotインテグレーションのトークンを設定する必要があります

https://your-workspace.slack.com/services/new/bot にアクセスし画面の指示に従ってトークンを取得してください

`.env.example` を参考に `.env` を作成してください。

**Notice! :** Botインテグレーションの追加はワークスペースの管理者であるか、あるいは管理者から権限を得ている必要があります

## Usage

### Startup

1. `bundle install`
1. `bundle exec ruby izumi.rb`

### in Slack
**Notice! :** いずみんと遊ぶ前に `/invite` してBotを招待しておく必要があります

|コマンド|呼び方の例|効果|
|:--|:--|:--|
|へんじ|`いずみん、いる？`|返事をします|
|ほめる|`進捗！`|進捗などのがんばりをほめます|
|がんばれ|`つらい`|つらいひとをはげまします|

## License
このリポジトリ内のコード部分については MIT License とします