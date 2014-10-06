karr-db-03
==========

## ActiveRecord boilerplate 

This is a minimalist implementation of ActiveRecord to live-code a demo for @LeWagon students

- clone the repo
- run `bundle install` to install missing gems
- run `rake db:create` to create your db
- run your migrations with `rake db:migrate`

Now you can play with the `Restaurant` model, example

```bash
$ irb
$ irb(main):001:0> load "config/application.rb"
$ Restaurant.create(name: "Corba Salonu", address: "rue du fbg st-denis", rating: 4)
```

