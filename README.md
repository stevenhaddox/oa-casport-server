# oa-casport-server

## Simple to Setup & Use

Literally, it's scaffolds I'm that lazy. It doesn't really matter what is
returned to the (oa-casort)[https://github.com/stevenhaddox/oa-casport] gem as
long as it's JSON / XML and you give the gem the proper base URL & path
options.

As a result, this app literally just sits here with a basic user model db
migration & a sqlite db. Simple do the following to get it started:

```
$ git clone https://github.com/stevenhaddox/oa-casport-server.git
$ cd oa-casport-server
$ bundle install
$ cp config/database.yml.example config/database.yml
$ bundle exec rake db:migrate
# Start it on port 3000 via whatever you want
$ bundle exec rails s
```

## Setup some fake data

Go create a few fake users for kicks and giggles and take note of their ID
numbers. As long as this app is running you're able to configure `oa-casport`
within `OmniAuth` to be able to get results from this app by using the code
below appropriately in your app.

```
use OmniAuth::Builder do
  provider :casport, :client_options => { :cas_server => 'http://localhost:3000' }
end
```

## The End
