# GitOn

git_on

Provides a method to query status of the git repository in which the caller's
source code resides. Handles cases where Git is not installed, not initiated for
this code, or nothing has been checked in.

## Installation

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add git_on
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install git_on
```

## Usage

require 'git_on'

status = GitOn.status

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/rleber/git_on. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/rleber/git_on/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the GitOn project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/rleber/git_on/blob/master/CODE_OF_CONDUCT.md).
