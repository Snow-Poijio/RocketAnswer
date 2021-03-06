source 'https://rubygems.org'

gem 'rails', '4.0.4'

# rack server
gem 'unicorn'

# DB系
gem 'mysql2'

# 機能ライブラリ系
gem 'bcrypt', '~> 3.1.7'
gem 'kaminari'
## I18nの辞書
gem 'rails-i18n'
## 設定ファイルの管理に
gem 'rails_config'
gem 'jquery-fileupload-rails'
gem 'carrierwave'
gem 'devise'
## 認可ライブラリ
gem 'cancancan', '~> 1.7'

# asset系
gem 'sass-rails', '~> 4.0.2'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'selectize-rails'

# view系
gem 'jbuilder', '~> 1.2'
gem 'font-awesome-rails'
## パンくずリスト
gem 'gretel'
## Markdown
gem 'redcarpet'

# 管理画面
gem 'activeadmin', github: 'gregbell/active_admin'

# 開発ツール系
## 高機能コンソール
gem 'pry'
gem 'pry-rails'
gem 'hirb'
gem 'hirb-unicode'
gem 'awesome_print'
## デバッグ出力
gem 'tapp'

group :development do
  # エラー画面拡張
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'

  # railsコマンド高速起動
  gem 'spring'
  gem "spring-commands-rspec"

  # ER図作成
  gem 'rails-erd'
end


# テスト系
group :development, :test do
  # RSpec
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails'
  gem 'database_cleaner'

  # Guard
  gem 'rb-fsevent', :require => false
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-livereload'
  # Growl通知
  gem 'growl'
  # Guardの通知センター通知(for OS X Mountain Linon)
  gem 'terminal-notifier-guard'

  # Code coverage
  gem "simplecov", require: false

  # N+1 Query検出
  gem 'bullet'

  # Capistrano
  gem 'capistrano', '~> 3.1.0', require: false
  gem 'capistrano-rails', '~> 1.1', require: false
  gem 'capistrano-bundler', '~> 1.1.2', require: false
end

