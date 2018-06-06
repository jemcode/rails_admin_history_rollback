# Rails Admin History Rollback

[![Gem Version](https://badge.fury.io/rb/rails_admin_history_rollback.svg)](http://badge.fury.io/rb/rails_admin_history_rollback)
[![Dependency Status](https://gemnasium.com/rikkipitt/rails_admin_history_rollback.svg)](https://gemnasium.com/rikkipitt/rails_admin_history_rollback)
[![Code Climate](https://codeclimate.com/github/rikkipitt/rails_admin_history_rollback/badges/gpa.svg)](https://codeclimate.com/github/rikkipitt/rails_admin_history_rollback)

[RailsAdmin](https://github.com/sferik/rails_admin) extension for enabling users to easily visualise and revert their history audit created by the [PaperTrail](https://github.com/airblade/paper_trail) gem.

## Installation

To enable **rails_admin_history_rollback**, add the following to your `Gemfile` ensuring it is added *after* rails_admin:

```ruby
gem 'rails_admin'
gem 'rails_admin_history_rollback'
```

It should go without saying that this plugin also requires the paper_trail gem.

E.g. `gem 'paper_trail'`


## Configuration
Simply enable paper_trail on your model `--with-changes --with-associations` and set up as usual by following the [paper_trail](https://github.com/airblade/paper_trail) instructions.

```bash
rails generate paper_trail:install --with-changes --with-associations
```

In the `rails_admin.rb` initializer, uncomment the following lines to enable auditing:

```ruby
history_index
history_show
```

## Notes

You may also need to `require "paper_trail"` in `application.rb`

As pointed out in issue [#8](https://github.com/rikkipitt/rails_admin_history_rollback/issues/8), `paper_trail` master branch and release [v5.0.0](https://github.com/airblade/paper_trail/blob/master/CHANGELOG.md#500-unreleased) (when available) causes session issues. Login is reset by devise; `paper_trail` tries to access to the `current_user` variable before `devise` ([airblade/paper_trail#556](https://github.com/airblade/paper_trail#556)).

The fix is to manually add `set_paper_trail_whodunnit` before_action as advised here: (https://github.com/airblade/paper_trail#finding-out-who-was-responsible-for-a-change) 

```ruby
# app/controllers/application_controller.rb
class ApplicationController < ActionController::Base
  [...]
  before_action :set_paper_trail_whodunnit
  [...]
end
```

## Screenshots

![History view](https://github.com/rikkipitt/rails_admin_history_rollback/raw/master/screenshots/history.png "history view")

![Modal view](https://github.com/rikkipitt/rails_admin_history_rollback/raw/master/screenshots/modal.png "modal view")

## About Jemcode

[<img src="https://www.jemco.de/logo.svg" width="400" alt="Jemcode">][hire]

This repository is maintained and funded by Jemcode Limited. We are [available for hire][hire].

[hire]: https://www.jemco.de?utm_source=github
