# traQ_webhook-ruby
traQ Webhook用Rubyライブラリ

----

## Installation
```ruby
gem 'traq_webhook'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install traq_webhook

## Usage

```ruby
require 'traq_webhook'

client = TraqWebhook::Client.new do |config|
  config.id         = 'YOUR TRAQ_WEBHOOK_ID'
  config.token      = 'YOUR TRAQ_SECRET_TOKEN'
  config.channel_id = 'TRAQ_CHANNEL_ID'  # Option
end

message = 'example message'
client.post(message)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nagatea/traQ_webhook-ruby.
