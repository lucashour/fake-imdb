# Imdb

The gem returns movies' and directors' identifiers. It's a fake gem with academic purposes.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'imdb', git: 'https://github.com/lucashour/fake-imdb'
```

And then execute:

    $ bundle install

## Usage

```ruby
require 'imdb/connector'

Imdb::Connector.new('Star_Wars').movie
Imdb::Connector.new('George_Lucas').director
```

It does not support queries with spaces or some punctuation symbols, so you need to replace them with the symbol `_`. If the received query is incorrect, then one of the following errors will be raised:

```ruby
Imdb::SpacesError
Imdb::PunctuationError
```

Invalid punctuation symbols: `¿`, `?`, `¡`, `!`, `.`, `\` and `-`.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
