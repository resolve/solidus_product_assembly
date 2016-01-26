Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'solidus_product_assembly'
  s.version     = '1.0.1'
  s.summary     = 'Adds oportunity to make bundle of products to your Spree store'
  s.description = s.summary
  s.required_ruby_version = '>= 1.9.3'

  s.author            = 'Roman Smirnov'
  s.email             = 'POMAHC@gmail.com'
  s.homepage          = 'https://github.com/gemento/solidus-product-assembly'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency "solidus_api", [">= 1.0.0.pre", "< 2"]
  s.add_dependency "solidus_backend", [">= 1.0.0.pre", "< 2"]
  s.add_dependency "solidus_core", [">= 1.0.0.pre", "< 2"]

  s.add_development_dependency 'rspec-rails', '~> 3.1.0'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'factory_girl', '~> 4.4'
  s.add_development_dependency 'coffee-rails', '~> 4.0.0'
  s.add_development_dependency 'sass-rails', '~> 4.0.0'
  s.add_development_dependency 'capybara', '~> 2.4'
  s.add_development_dependency 'poltergeist', '~> 1.6'
  s.add_development_dependency 'database_cleaner', '~> 1.3'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'pg'
end
