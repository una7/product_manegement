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

## salesテーブル
|column|type|options|
|------|----|-------|
|sold_day|date|null: false|
|market|string|null: false|
|proceeds|string|null: false|
|shipping_feed|integer|null: false|
|profit|integer|null: false|
|sold_period|date|null: false|

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
