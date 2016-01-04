# motion-openssl

OpenSSL library for RubyMotion.

Currently, this has the minimum implementation to make SecureRandom available.

## Installation

Add this line to your RubyMotion application's Gemfile:

```ruby
gem 'motion-openssl'
```

Or for your gem, add this to .gemspec file:

```ruby
spec.add_runtime_dependency 'motion-openssl'
```

And `require` it in your gem loader:

```ruby
require 'motion-openssl'
```

## Usage

```ruby
pid = $$
now = Time.now
ary = [now.to_i, now.nsec, pid]
OpenSSL::Random.random_add(ary.join(""), 0.0)
OpenSSL::Random.random_bytes(n)
```

## Development

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Special thanks

Special thanks for Felix Schulze who created [OpenSSL-for-iPhone](https://github.com/x2on/OpenSSL-for-iPhone).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kayhide/motion-openssl. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

