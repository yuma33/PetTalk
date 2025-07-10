# 🐶 PetTalk

## ■ 概要

PetTalkは、ranteqカリキュラムのRails基礎で習得した技術を活用して作成した、ペットの日常を写真付きで投稿できるSNS風アプリです。  
ユーザーは自分のペットのかわいい瞬間を共有でき、投稿に対してコメントや「いいね」、さらに投稿のブックマークが可能です。

コメント・いいね・ブックマークの操作はすべて**非同期通信**（Ajax）で行われ、スムーズなユーザー体験を実現しています。  
また、多言語対応のために**i18n（国際化）**にも対応しています。

---

## ■ このサービスへの思い・作りたい理由

私は大の動物好きで、ペットや動物の写真や動画をみんなで共有し合って楽しめるアプリを作りたいと思いPetTalkを開発しました。  
また、ranteqのRails基礎編の復習として実践的に学んだ技術を活かしたかったことも作成の大きな動機です。

---

# ■ 開発期間
約14日間
---

## ■ 使い方

1. ユーザー登録・ログイン  
2. ペットの写真とコメントを投稿  
3. 他ユーザーの投稿に対してコメント、いいね、ブックマークが可能  
4. 非同期での操作によりページ遷移なしで快適に利用可能

---
 

---



# 💻 機能紹介

| ユーザー登録機能 |
| :---: | 
![2](https://github.com/user-attachments/assets/7bd67d0b-8695-4304-919a-907ab0b9f6d9)

| ログイン/ログアウト機能 |
| :---: | 
![ 1 ](https://github.com/user-attachments/assets/cfc0fee6-91b1-470e-bead-07ee2611f13b)

| 投稿作成 |
| :---: | 
![投稿作成](https://github.com/user-attachments/assets/725afe77-08ee-4b64-99e6-610484362faa)


| 投稿詳細 |
| :---: | 
![7](https://github.com/user-attachments/assets/f4df0044-21db-4b81-b63a-9889ef590ace)

| 　投稿一覧機能 |
| :---: | 
![6](https://github.com/user-attachments/assets/92a2d854-f73c-44f9-b075-f681d922828a)


| お気入り登録機能（非同期） |
| :---: | 
![5jpeg](https://github.com/user-attachments/assets/65b36743-4c49-461b-9458-a00a140e3931)



|コメント機能（非同期） |
| :---: | 
![8](https://github.com/user-attachments/assets/2df8ac64-952e-4acc-aadd-ae1b9ddfc5af)


# ■ 使用技術 / 技術構成

- **Ruby on Rails 7.2.2**  
- **PostgreSQL (`pg` gem)**  
- **認証：Sorcery**  
- **画像アップロード：CarrierWave**  
- **検索・絞り込み：Ransack**  
- **ページネーション：Kaminari**  
- **非同期通信：Turbo (Turbo Rails)**  
- **JavaScript・CSSビルド：jsbundling-rails / cssbundling-rails**  
- **多言語対応：rails-i18n**  
- **その他：faker（ダミーデータ）, rubocop（コードチェック）, letter_opener_web（開発メール確認）, config（設定管理）**
