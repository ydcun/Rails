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




备忘：
- 创建controller
> rails generate controller welcome index 

- 创建资源
> config/routes.rb   resources:articles
> rake routes 

- 创建模型
> rails generate model Article title:string text:text