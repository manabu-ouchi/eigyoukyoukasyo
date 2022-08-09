# テーブル設計
## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| email              | string  | null: false, unique:true  |
| encrypted_password | string  | null: false               |
| first_name         | string  | null: false               |
| last_name          | string  | null: false               |
| profile            | text    |                           |
| Department_id      | integer | null: false               |



### Association
- has_many :questions
- has_many :posts
- has_many :comments
- has_many :records






## posts テーブル

| Column             | Type      | Options                        |
| ------------------ | --------- | ------------------------------ |
| title              | string    | null: false                    |
| content            | text      | null: false                    |
| user               | references| null: false, foreign_key: true |
| genre_id           | integer   | null: false                    |



### Association
- has_many :comments
- belongs_to :user

- belongs_to :genre



## questions テーブル

| Column             | Type      | Options                        |
| ------------------ | --------- | ------------------------------ |
| title              | string    | null: false                    |          
| content            | text      | null: false                    |          
| user               | references| null: false, foreign_key: true |          
| genre_id           | integer   | null: false                    |         

### Association
- belongs_to :user
- has_many :comments

- belongs_to :genre


## comments テーブル

| Column             | Type      | Options                        |
| ------------------ | --------- | ------------------------------ |
| post_id            | string    | null: false,                   |          
| question_id        | string    | null: false,                   |          
| content            | text      | null: false,                   |   

- belongs_to :post
- belongs_to :question


## record テーブル
| mendan              | integer     | null: false                    |
| fulltalk            | integer     | null: false                    |
| mikomi              | integer     | null: false                    |
| mikomiuorder        | integer     | null: false                    |
| order               | integer     | null: false                    |
| payment             | integer     | null: false                    |
| user                | references  |foreign_key: true               |


### Association
- belongs_to :user