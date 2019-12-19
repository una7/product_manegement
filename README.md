# README

# DB設計
## usersテーブル
|column|type|options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|

### Association
- has_many :products

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
- belongs_to :user
- belongs_to :sale, optional: true

## salesテーブル
|column|type|options|
|------|----|-------|
|sold_day|date|null: false|
|market|string|null: false|
|proceeds|string|null: false|
|shipping_feed|integer|null: false|
|profit|integer|null: false|
|sold_period|date|null: true|
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




# 商品管理アプリ product_managements

## URL

http://18.177.66.43/

商品管理アプリ
- 商品登録
- 販売商品一覧
- 全商品一覧
- 販売履歴一覧
- 年代検索

## 制作背景
今の時代、販売するサイト（メルカリやラクマなどフリマサイト等）は、ありふれていますが、売れた後の商品やお金の管理をするシステムが無かったので、個人向け商品管理システムの制作をしました。

## 機能

- ユーザー登録、ログイン、ログアウト

- 商品登録  
  →入荷日、落札した商品名、出品名、出品価格、仕入先、仕入れ価格、負担した送料、合計仕入れ金額

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
  ![ef80a230a7653aff6504e4b16fede7b0](https://user-images.githubusercontent.com/55130952/71146205-a39a5d80-2267-11ea-8c27-8ce5b87988d0.gif)
  
  →出品価格、仕入れ価格、負担した送料を入力すると合計仕入れ金額が非同期で自動反映されます。  

#### 利益自動計算
  ![f81f0df029842b08a89864919324965d](https://user-images.githubusercontent.com/55130952/71146283-fd028c80-2267-11ea-9325-867492030c53.gif)
  
  →売り上げ金額、負担する送料を入力すると利益が非同期で自動反映されます。(仕入れ価格は商品登録の際に入れた情報を反映させている)

### 年代検索機能  
  ![ebd5e6a1b015abec7b7f8cc966460515](https://user-images.githubusercontent.com/55130952/70225852-2d8bf600-1793-11ea-9407-f96226953205.gif)  
    →A~Z(小文字も可)のアルファベットを入れるとヨウジヤマモトの年代検索ができます。

## 使用技術
- Haml
- SCSS
- Ruby/Ruby on Rails
- JavaScript/jQuery
- MySQL
- GitHub
- AWS