## environment

1. ruby 2.5.1
2. rails 5.2.2

## Start server

### Bundle
```
bundle install
```

### Database initialization

### Configuration

```
$ cp config/database.yml.example config/database.yml
``` 

##### Create database

```
rails db:create
rails db:migrate
rails db:seed
```

If you need to add test data

`rails db:seed_fu`

### Run server
```
rails s -p PORT
```

### API doc
visit app api doc via: `/graphiql`
