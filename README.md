# QR Menu Backend

## Technologies and libraries:

1.  Ruby 3.2.0 and Rails 7.0.4 in API-only mode
2.  PostgreSQL as main DB
3.  Redis for storing links hashes
4.  [standrdrb](https://github.com/testdouble/standard) for linting. (For RubyMine check [this](https://github.com/testdouble/standard))
5.  [rubocop-rails](https://github.com/rubocop/rubocop-rails) and [rubocop-rspec](https://github.com/rubocop/rubocop-rspec) for linting
6.  [RSpec](http://rspec.info/) for testing
7.  [Simplecov](https://github.com/simplecov-ruby/simplecov) for test coverage
8.  [Factory Bot Rails](https://github.com/thoughtbot/factory_bot_rails) for factories
9.  [Faker](https://github.com/faker-ruby/faker) for seeds
10. [Bullet](https://github.com/flyerhzm/bullet) for detecting N+1
11. [Pry](https://github.com/pry/pry) and [Pry Byebug](https://github.com/deivid-rodriguez/pry-byebug) for debug
12. [Alba](https://github.com/okuramasafumi/alba) for serialization
13. [Dry Validation](https://github.com/dry-rb/dry-validation) for validation
14. TODO: Github actions(Tests, Spellchecker, PR Template, Standard), Docker, etc.

## For development

1. Clone repo
2. Create user for postgresql
3. `cp config/database.yml.sample config/database.yml`
4. Paste credentials from created user to `config/database.yml`
