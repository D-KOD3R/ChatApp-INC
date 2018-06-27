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

============================================================================================================
Application logic:

Devise Authentication System migrate it with role field
edit all the forms forr user with role
rails g controller messages new index

rails g model messages content sender_id:integer reciever_id:integer
MODEL USER
has_many :recieved_messages
has_many :sent_messages

MODEL MESSAGE
belongs_to :receiver
belongs_to :sender







