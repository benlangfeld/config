$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'config/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name             = 'config'
  s.version          = Config::VERSION
  s.date             = Time.now.strftime '%F'
  s.authors          = ['Piotr Kuczynski', 'Fred Wu', 'Jacques Crocker']
  s.email            = %w(piotr.kuczynski@gmail.com ifredwu@gmail.com railsjedi@gmail.com)
  s.summary          = 'Effortless multi-environment settings in Rails, Sinatra, Pandrino and others'
  s.description      = 'Easiest way to manage multi-environment settings in any ruby project or framework: Rails, Sinatra, Pandrino and others'
  s.homepage         = 'https://github.com/railsconfig/config'
  s.license          = 'MIT'
  s.extra_rdoc_files = %w(README.md CHANGELOG.md LICENSE.md)
  s.rdoc_options     = ['--charset=UTF-8']

  s.files = `git ls-files`.split($/)
  s.files.select! { |file| /(^lib\/|\.md$|\.gemspec$)/ =~ file }
  s.files += Dir.glob('doc/**/*')

  s.require_paths         = ['lib']
  s.required_ruby_version = '>= 2.0.0'

  s.add_dependency 'activesupport',           '>= 3.0'
  s.add_dependency 'deep_merge',              '~> 1.1.1'

  s.add_development_dependency 'bundler',     '~> 1.13',  '>= 1.13.1'
  s.add_development_dependency 'rake',        '~> 11.2',  '>= 11.2.2'

  # Testing
  s.add_development_dependency 'appraisal',   '~> 2.1',   '>= 2.1.0'
  s.add_development_dependency 'rails',       '~> 5.0',   '>= 5.0.0.1'
  s.add_development_dependency 'rspec',       '~> 3.5',   '>= 3.5.0'
  s.add_development_dependency 'rspec-rails', '~> 3.5',   '>= 3.5.2'
  s.add_development_dependency 'test-unit',   '~> 3.2',   '>= 3.2.1'
  s.add_development_dependency 'sqlite3',     '~> 1.3',   '>= 1.3.11'

  # Static code analysis
  s.add_development_dependency 'mdl',         '~> 0.4',   '>= 0.4.0'
  s.add_development_dependency 'rubocop',     '~> 0.42',  '>= 0.42.0'

  if ENV['TRAVIS']
    s.add_development_dependency 'codeclimate-test-reporter', '~> 0.6.0'
  end
end
