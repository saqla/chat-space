# DB設計

## users table

|Column|Type|Options|
|------|----|-------|
|name|string|index: true, null: false|
|email|string|index: true, null: false, unique: true|

### Association

- has_many :groups, through: members
- has_many :messages
- has_many :members


## messages table

|Column|Type|Options|
|------|----|-------|
|body|text|
|image|string|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association

- belongs_to :user


## groups table

|Column|Type|Options|
|------|----|-------|
|name|string|index: true, unique: true|

### Association

- has_many :users, through: members
- has_many :members


## members table

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association

- belongs_to :user
- belongs_to :group
