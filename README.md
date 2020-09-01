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

#テーブル設計

##usersテーブル

| Column    |  Type  |  Options     |
| --------  | ------ |  ----------  |
| name      | string |  nul: false  |
| email     | string |  nul: false  |
| password  | string |  nul: false  |

###Association
- has_many :room_users
- has_many :rooms, through: room_users
- has_many :messages

##rooms

| Column    |  Type  |  Options     |
| --------  | ------ |  ----------  |
| name      | string |  nul: false  |

##rooms_usersテーブル

| Column    |  Type      |  Options     |
| --------  | ---------- |  ----------  |
| name      | references |  nul: false, forein_key: true  |
| room      | referemces |  nul: false, forein_key: true  |

###Association
-belongs_to :user
-belongs_to :room

##messages

| Column    |  Type      |  Options                       |
| --------  | ---------- |  ----------------------------  |
| content   | string     |                                |
| user      | references |  nul: false, forein_key: true  |
| room      | references |  nul: false, forein_key: true  |

###Association
-belongs_to :room
-belongs_to :user