# -*- encoding: utf-8 -*-
require File.expand_path('../lib/twitter_bootstrap_form_builder/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Luis Lopez"]
  gem.email         = ["luigibyte@gmail.com"]
  gem.description   = %q{This gem adds a form builder for twitter bootstrap}
  gem.summary       = %q{Form Builder for TwitterBootstrap}
  gem.homepage      = ""

  gem.add_development_dependency "twitter-bootstrap-rails"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "twitter_bootstrap_form_builder"
  gem.require_paths = ["lib"]
  gem.version       = TwitterBootstrapFormBuilder::VERSION
end
