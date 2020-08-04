lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'jekyll-diacritic-compressor'
  spec.version       = '1.0.0'
  spec.authors       = ['Janosch Müller']
  spec.email         = ['janosch84@gmail.com']

  spec.summary       = 'Jekyll plugin to substitute combining diacritical marks'
  spec.homepage      = 'https://www.github.com/janosch-x/jekyll-diacritic-compressor'
  spec.license       = 'MIT'

  spec.files         = ['lib/jekyll-diacritic-compressor.rb']
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport', '~> 6'
  spec.add_dependency 'jekyll', '~> 4.1'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
