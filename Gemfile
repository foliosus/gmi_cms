source 'https://rubygems.org'

gem 'rails', '~> 3.2.17'
gem 'mysql2', '~> 0.3.11'

gem 'formtastic', '~> 2.2.1'
gem 'foreigner', '~> 1.2.0'
gem 'state_machine', '~> 1.1.2'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'compass-rails', '~> 1.0.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', '~> 0.12'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails', '~> 2.0.1'
gem 'haml', '~> 3.1.7'
gem 'sass', '~> 3.2.1'

gem 'newrelic_rpm'

gem 'babosa', '0.3.5' # 2nd order dep of refinerycms. 0.3.7 requires ruby 2.

group :development do
  # gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'thin'
  # Deploy with Capistrano
  gem 'capistrano', '~> 2.12.0', require: false
  gem 'rvm-capistrano', '~> 1.2.5'
end

# Refinery CMS
gem 'refinerycms', '~> 2.0.0'

# Specify additional Refinery CMS Extensions here (all optional):
gem 'refinerycms-i18n', '~> 2.0.0'
gem 'refinerycms-blog', '~> 2.0.0'
gem 'refinerycms-inquiries', '~> 2.0.0'
# gem 'refinerycms-search', '~> 2.0.0'
gem 'refinerycms-page-images', '~> 2.0.0'
gem 'refinerycms-applications', :path => 'vendor/extensions'

group :test do
  gem 'shoulda', '~> 3.0.1'
  gem 'factory_girl_rails', '~> 3.0.0'
end

group :production do
  gem 'rb-readline', '~> 0.4.2' # Necessary for getting consoles to start in Ubuntu 11.10
end
