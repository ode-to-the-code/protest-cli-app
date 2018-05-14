# ProtestCliApp

This gem communicates with the New York Times list of bestselling books. It pulls a list
of bestsellers and lets you choose a book to learn more about. It then gives you a brief
description of the book that you choose.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'protest_cli_app'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install protest_cli_app

## Usage


First you run './bin/protest-cli-app' in your terminal. The app should offer you
a list of bestselling books. At the end of the list will be simple instructions.
You can enter a number, like '1' or '2', and see more information about the corresponding
book on the list. You can also type 'list' to see the list again, or 'exit' to leave the program.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ode-to-the-code/protest_cli_app.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
