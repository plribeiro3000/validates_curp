# ValidatesCurp

This projects aims to validate CURP documents (Clave Única de Registro de Población).

It follows documentation found [here](http://www.ordenjuridico.gob.mx/Federal/PE/APF/APC/SEGOB/Instructivos/InstructivoNormativo.pdf) in the government official  website.

The documentation is also included in the [docs](https://github.com/plribeiro3000/validates_curp/tree/master/docs) folder of this project.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'validates_curp'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install validates_curp

## Usage

Just use as any other validator:

```ruby
class User < ActiveRecord::Base
  validates :curp, curp: true
end
```

## Testing

Require the matcher:

```ruby
require 'validates_curp/require_a_valid_curp_matcher'
```

Use in your tests:

```ruby
it { is_expected.to require_a_valid_curp } # It will test the attribute :curp by default
it { is_expected.to require_a_valid_curp(:id) }
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/plribeiro3000/validates_curp. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/plribeiro3000/validates_curp/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ValidatesCurp project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/plribeiro3000/validates_curp/blob/master/CODE_OF_CONDUCT.md).
