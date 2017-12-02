# Jekyll::DiacriticCompressor

This is a sanitization plugin.

It turns characters with combining diacritical marks into their single-codepoint equivalent.

## Example

The character "Ä" can be represented two ways:

- by codepoint 196
- by the combination of the codepoints 65 (A) and 776 ( ̈ )

This plugin ensures it is the first option wherever possible.

## Installation

Add 'jekyll-diacritic-compressor' to the `jekyll_plugins` group in your Gemfile.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/janosch-x/jekyll-diacritic-compressor.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
