# User

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

## Association

has_many :lives

# Project

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| name   | string     | null: false                    |
| info   | text       | null: false                    |
| user   | references | null: false, foreign_key: true |

## Association

belongs_to :user<br>
has_many :comment

# ProjectMember

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| live   | references | null: false, foreign_key: true |

## Association

belongs_to :user<br>
belongs_to :live
