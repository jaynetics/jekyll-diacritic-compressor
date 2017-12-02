require 'bundler/setup'
require 'jekyll-diacritic-compressor'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with(:rspec) { |c| c.syntax = :expect }
  config.mock_with(:rspec)   { |c| c.verify_partial_doubles = true }
end
