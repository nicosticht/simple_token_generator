# SimpleTokenGenerator

This is a simple token generator. This is part of a code challenge.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simple_token_generator', github: 'nicosticht/simple_token_generator'
```

And then execute:

    $ bundle

## Usage

To generate a token add following line to your code:

```ruby
SimpleTokenGenerator::Generator.call #=> ABCD
```

This generates a token with the default values.

```ruby
delimiter: '-'
prefix: nil
slices: 1
size_of_slice: 4
```

A more complex example:

```ruby
SimpleTokenGenerator::Generator.call(delimiter: '-', prefix: 'P/', slices: 3, size_of_slice: 2) #=> P/AB-CD-EF
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nicosticht/simple_token_generator. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SimpleTokenGenerator project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/nicosticht/simple_token_generator/blob/master/CODE_OF_CONDUCT.md).
