# テーブル設計

## users テーブル

| Column             | Type   | Options                  |
| ------------------ | ------ | -----------              |
| email              | string | null: false,unique: true |
| tel                | string | null: false,unique: true |
| encrypted_password | string | null: false              |
| name               | string | null: false              |
| profile            | text   | null: false              |


## reservations テーブル

| Column            | Type       | Options                        |
| ------            | ------     | -----------                    |
| user_id           | references | null: false, foreign_key: true |
| reservations_date | date       | null: false,                   |
| slot_id           | references | null: false, foreign_key: true |


## slots テーブル

| Column     | Type       | Options                        |
| ------     | ---------- | ------------------------------ |
| start_time | time       | null: false                    |
| end_time   | time       | null: false                    |


## blogs テーブル

| Column     | Type       | Options                        |
| ------     | ---------- | ------------------------------ |
| title      | string     | null: false                    |
| user_id    | references | null: false, foreign_key: true |
| concept    | text       | null: false                    |

## comments テーブル

| Column     | Type       | Options                        |
| ------     | ---------- | ------------------------------ |
| user_id    | references | null: false, foreign_key: true |
| concept    | text       | null: false                    |
| blog       | references | null: false, foreign_key: true |


## menus テーブル

| Column     | Type       | Options                        |
| ------     | ---------- | ------------------------------ |
| name       | string     | null: false                    |
| price      | integer    | null: false                    |
| menu_type  | varchar(10)| null: false,                   |


## dogs テーブル

| Column     | Type       | Options                        |
| ------     | ---------- | ------------------------------ |
| name       | string     | null: false                    |
| age        | integer    | null: false                    |
| dog_type   | string     | null: false                    |
| gender     | string     | null: false                    |
| character  | string     | null: false                    |