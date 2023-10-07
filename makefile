# https://stackoverflow.com/a/14061796/2237879
#
# This hack allows you to run make commands with any set of arguments.
#
# For example, these lines are the same:
#   > make g devise:install
#   > bundle exec rails generate devise:install
# And these:
#   > make add-migration add_deleted_at_to_users deleted_at:datetime
#   > bundle exec rails g migration add_deleted_at_to_users deleted_at:datetime
# And these:
#   > make add-model Order user:references record:references{polymorphic}
#   > bundle exec rails g model Order user:references record:references{polymorphic}
#
RUN_ARGS := $(wordlist 2, $(words $(MAKECMDGOALS)), $(MAKECMDGOALS))
DOCKER := docker exec -it $$(docker-compose ps -q web)

bash:
	$(DOCKER) bash

console:
	$(DOCKER) bundle exec rails console

rc:
	$(DOCKER) bundle exec rails $(RUN_ARGS)

add-migration:
	$(DOCKER) bundle exec rails g migration $(RUN_ARGS)

add-model:
	$(DOCKER) bundle exec rails g model $(RUN_ARGS)

db-create:
	bundle exec rake db:create

dbm:
	$(DOCKER) bundle exec rake db:migrate
dbs:
	$(DOCKER) bundle exec rake db:seed

db-rollback:
	$(DOCKER) bundle exec rake db:rollback

lint-ruby-setup:
	$(DOCKER) bundle exec rubocop --auto-gen-config

lint-ruby:
	$(DOCKER) bundle exec rubocop -a

run-console:
	$(DOCKER) bundle exec rails console

run-generate:
	$(DOCKER) bundle exec rails generate $(RUN_ARGS)

up:
	docker compose up $(RUN_ARGS)

c: run-console
g: run-generate
s: run-rails
