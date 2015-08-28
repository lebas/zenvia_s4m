# ZenviaS4m

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/zenvia_s4m`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'zenvia_s4m'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install zenvia_s4m

In app/config/application.rb :

```ruby    
    ZenviaS4m::configure do |config|
        config.account  = 'xxxxxxxxxx.xxx'
        config.code     = 'mycode'
        config.url      = 'http://www.zenvia360.com.br/GatewayIntegration/msgSms.do'
        config.log      = false
    end
```

## Usage

```ruby
    list = { phone: '5521988887777', message: 'Bazinga', sms_id: '12333'}
    zen = ZenviaS4m::SendSms.new(list).send
    puts zen 
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/zenvia_s4m.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

