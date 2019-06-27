# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, index: true, unique: true|

### Association
- has_many :groups, through: :group_users
- has_many :codes

codesテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|code|string|null: false|
|memo|string||
|user_id|integer||

### Association
- has_many :messages
- belongs_to :user

tabテーブル

|Column|Type|Options|
|------|----|-------|
||references|null: false, foreign_key: true|
||references|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user


