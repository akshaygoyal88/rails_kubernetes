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
https://dev.to/timnans/simple-rails-6-chat-application-with-action-cable-1b6m

https://www.engineyard.com/blog/using-docker-for-rails
https://www.engineyard.com/blog/kubernetes-tutorial-running-a-rails-app-in-kubernetes

docker run -p 5432:5432 --name todo-postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres
docker run -p 3000:3000 -e DATABASE_URL=postgres://postgres:mysecretpassword@192.168.99.100:5432/railsKubernetes_development -e SECRET_KEY_BASE=69782b185cf994696b846e43b8e26a6c9f724905c74bf7556162c5a18cd17edc68a702ffbd0df7e855e2f4c6cf71bf68c794741c9234841f45446c3679bd8e6d akshaygoyal88/rails_kubernetes

docker build -t akshaygoyal88/rails_kubernetes .