## Subjects / Topics we covered

* Simple OOP
* private methods
* bundler and rspec setup from scratch
* rspec's default folder structure
* `lib` folder convention
* Using `bundle exec` to run stuff like the `rspec` command
* Simple stubbing using `allow` (formerly `.stub` but that's deprecated)
* Stubbing while also expecting the stub to be called using `expect`
* Mocking
* Inner classes (namespacing) - didn't get to talk about this yet

## What is it?

Order system with one class that sends an email upon submit (keeping it simple)


## Setup

I started with an empty directory and then:

1. Ran `bundle init` to set up the Gemfile
2. Added `rspec` to the `Gemfile`
3. Ran `bundle install` to downlaod and lock it into my project (creates `Gemfile.lock`)
4. Ran `bundle exec rspec --init` (just the first time) to initialize rspec (create two files `.rspec` and `spec/spec_helper.rb`)
5. Created a lib folder: `mkdir lib`
6. Added `Order` class there: `touch lib/order.rb`
7. Created a spec for `Order`: `touch spec/order_spec.rb`

## Running

`bundle exec rspec spec/order_spec.rb`

