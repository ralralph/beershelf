source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 5.2.3'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.12'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

# ユーザー管理
gem 'devise'
gem 'pundit'
# gem 'rails_admin'

# 画像関連
gem 'carrierwave'
gem 'mini_magick'

# 検索機能
gem 'ransack'

# 装飾関連
gem 'toastr-rails'
gem 'jquery-rails'
gem 'bootstrap', '~> 4.3.1'
gem 'font-awesome-sass'

# 外部ライブラリ
gem 'country_select', '~> 4.0'

gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
# テスト用
  gem 'rspec-rails'
  gem 'spring-commands-rspec'
  gem 'database_cleaner'
  gem 'launchy'

  # デバック用
  gem 'pry-rails'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # デバック関連
  gem 'rubocop', require: false
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
