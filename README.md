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

E.g. `gem 'paper_trail', '~> 4.0.0.beta'`


## Configuration
Simply enable paper_trail on your model `--with-changes` and set up as usual by following the [paper_trail](https://github.com/airblade/paper_trail) instructions.

```bash
rails generate paper_trail:install --with-changes
```

## Screenshot

![History view](https://github.com/rikkipitt/rails_admin_history_rollback/raw/master/screenshots/history.png "history view")

![Modal view](https://github.com/rikkipitt/rails_admin_history_rollback/raw/master/screenshots/modal.png "modal view")


## Contributing
Submitting a Pull Request:

1. [Fork the repository.][fork]
2. [Create a topic branch.][branch]
3. Implement your feature or bug fix.
4. Add, commit, and push your changes.
5. [Submit a pull request.][pr]

[fork]: http://help.github.com/fork-a-repo/
[branch]: http://learn.github.com/p/branching.html
[pr]: http://help.github.com/send-pull-requests/


## License
**This project rocks and uses MIT-LICENSE.**

Copyright 2015 Rikki Pitt

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
