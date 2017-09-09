# SolidusSubscriptionBoxes
This project adds subscription box functionality to solidus. It allows an admin to specify some group of products to allow users to choose from every week. For example each week a customer spends $40 and is able to pick 4 of 8 different products. This is extremely pre-alpha, but if you want to use it, star the repo and I'll keep adding.  

Courtesy of https://www.eatlessme.at

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'solidus_subscription_boxes'
```

And then execute:
```bash
$  bundle exec rake railties:install:migrations FROM=solidus_subscription_boxe
$  bundle exec rake db:migrate
```

## Usage
Add a link to '/get-started' and allow users to check out.

## Limitations
This only works at the moment if the subscribable variant created through solidus subscriptions is the first variant. Generation of subscription options on following orders is not yet finished.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
