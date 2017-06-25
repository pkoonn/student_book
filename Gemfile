source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  'https://github.com/#{repo_name}.git'
end

gem 'rails', '~> 5.0.3'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'

gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

# 認証に使う
gem 'devise'
# rails consoleをリッチにする
gem 'pry-rails'
# html template部分をスッキリ書く
gem 'slim-rails'
gem 'bootstrap-sass'

group :development, :test do
  gem 'pry-byebug'
  # ER�}��pdf�ŏo��
  gem 'rails-erd'
end

group :development do
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # error画面を使いやすくする
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'annotate'
end
