# README

# DB設計
## usersテーブル
|column|type|options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|

## productsテーブル
|column|type|options|
|------|----|-------|
|arrival|string|null: false|
|successful_bid|string|null: true|
|product_name|string|null: false|
|product_price|integer|null: false|
|stock|string|null: false|
|unit_price|integer|null: false|
|shipping_fee|integer|null: false|
|total_price|integer|null: true|

### Association
- belongs_to :sale, optional: true

## salesテーブル
|column|type|options|
|------|----|-------|
|sold_day|date|null: false|
|market|string|null: false|
|proceeds|string|null: false|
|shipping_feed|integer|null: false|
|profit|integer|null: false|
|sold_period|date|null: false|

### Association
- has_one :product

## stocksテーブル
|column|type|options|
|------|----|-------|
|place|string|unique: true|

## marketsテーブル
|column|type|options|
|------|----|-------|
|place|string|unique: true|

## agesテーブル
|column|type|options|
|------|----|-------|
|age|string|unique: true|
|season|string|unique: true|




# 商品管理アプリ product_manegement

## URL

http://18.177.66.43/

商品管理アプリ
- 商品登録
- 販売商品一覧
- 全商品一覧
- 販売履歴一覧
- 年代検索

## 制作背景
今の時代、販売するサイト（メルカリやラクマなどフリマサイト等）は、ありふれていますが、売れた後の管理をするシステムが無かったので、個人向け商品管理システムを制作をしました。

## 機能

- ユーザー登録、ログイン、ログアウト

- 商品登録  
  →入荷日、落札した商品名、出品名、出品価格、仕入先、落札価格、負担した送料、合計仕入れ金額

- 販売商品一覧  
  →商品登録をした商品、且つ販売中の商品が表示される  
  →売れた、編集、削除、商品メモ機能

- 全商品一覧  
  →商品登録をした全ての商品が表示される

- 販売履歴一覧  
  →売れた商品の一覧が表示される

-  年代検索  
  →ヨウジヤマモトのみ年代検索が可能

## プレビュー
### 非同期自動計算  
#### 仕入れ金額自動計算
  ![20be7af400415064726f4a08f8733a44](https://user-images.githubusercontent.com/55130952/70041405-79f2fc80-1600-11ea-9c27-3cd0a3c0a468.gif)  

  →出品価格、落札価格、負担した送料を入力すると合計仕入れ金額が非同期で自動反映されます。 

#### 利益自動計算
  ![353a0638a2c6a0db2c4219685dbd6868](https://user-images.githubusercontent.com/55130952/70042101-a9563900-1601-11ea-9bc3-6fcd0b332b39.gif)  

  →売り上げ金額、負担する送料を入力すると利益が非同期で自動反映されます。(仕入れ価格は商品登録の際に入れた情報を反映させている)

### 年代検索機能  
  ![2381a2083bb1ccfc9c5c34649d4d7526](https://user-images.githubusercontent.com/55130952/70116794-1243bc80-16a7-11ea-9db5-ef0676ac1798.gif)  
    →A~Z(小文字も可)のアルファベットを入れるとヨウジヤマモトの年代検索ができます。

## 使用技術
- Haml
- SCSS
- Ruby/Ruby on Rails
- JavaScript/jQuery
- MySQL
- GitHub
- AWS