# NestedLevel

Find how deep is your Array or Hash.

## Usage

```ruby
max_nesting = NestedLevel.call(deeply_nested_hash)
JSON.pretty_generate(deeply_nested_hash, max_nesting: max_nesting)

NestedLevel.call([]) # => 1
NestedLevel.call([ [] ]) # => 2

NestedLevel.call({}) # => 1
NestedLevel.call({ a: { b: :c } }) # => 2
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nested_level'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nested_level

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/hack` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/JuanitoFatas/nested_level. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the NestedLevel project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/JuanitoFatas/nested_level/blob/master/CODE_OF_CONDUCT.md).
