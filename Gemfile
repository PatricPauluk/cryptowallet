source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.8'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.8', '>= 5.2.8.1'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

gem 'pry-rails' # Exibe os dados do rails console de forma mais legível
gem "tty-spinner" # Adiciona um spinner quando tiver carregando algo no terminal
gem 'rails-i18n', '~> 5.1' # Responsavel pela localização PT-BR da aplicação, configurado em: config/initializers/locale.rb

# Instalação do jquery e notifyjs usando rails-assets (forma obsoleta, o recomendado é utilizar yarn):
# source 'https://rails-assets.org' do
#   gem 'rails-assets-jquery'
#   gem 'rails-assets-notifyjs'
# end
# O código acima faz o mesmo que o abaixo, porém de forma mais eficaz:
# gem 'rails-assets-jquery', '3.3.1', source: 'https://rails-assets.org' # Instala o jquery de https://rails-assets.org/#/components/jquery?version=3.3.1
# gem 'rails-assets-notifyjs', source: 'https://rails-assets.org' # Instala o notify.js de https://rails-assets.org/#/components/notifyjs

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  # gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  # gem 'chromedriver-helper'

  # Eu comentei e desinstalei as gems 'selenium-webdriver' e 'chromedriver-helper' acima, e utilizei a gem 'webdriver' no lugar.
  # Desinstalei com o comando: 'gem uninstall selenium-webdriver chromedriver-helper'.
  gem 'webdriver' # Gerencia automaticamente o download e a instalação do Chromedriver correto.
  # Por algum motivo, tive um erro abaixo a usar o comando 'rails s -e test' no terminal:
  # /home/patrick/.asdf/installs/ruby/2.7.8/lib/ruby/gems/2.7.0/gems/chromedriver-helper-1.2.1/lib/chromedriver-helper.rb:4 in `<main>':
  # undefined method `driver_path=' for Selenium::WebDriver::Chrome:Module (NoMethodError)
  # Resolvi o problema adicionando a gem 'webdriver'e rodando 'bundle install' no terminal.
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
