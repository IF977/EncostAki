Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.action_mailer.default_url_options = { host: 'clone-gustavo-2511-pvls.c9users.io' }
  #config.action_mailers.default_url_options = { :host => 'encostaki-1-pvls.c9.io' }
  ENV["GMAIL_DOMAIN"]="gmail.com"
  ENV["GMAIL_USERNAME"]="encostakiapp@gmail.com"
  ENV["GMAIL_PASSWORD"]="Encostakiapp2017"
  config.cache_classes = false
  config.action_mailer.perform_deliveries = true
  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.seconds.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = true
  
  config.action_mailer.smtp_settings = {
    address:              'smtp.gmail.com',
    port:                 587,
    domain:               'gmail.com',
    user_name:            'encostakiapp@gmail.com',
    password:             'Encostakiapp2017',
    authentication:       :plain,
    enable_starttls_auto: true
  }

  config.action_mailer.perform_caching = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
  #lEMBRAR DE QUANDO FOR DAR DEPLOY MUDAR ESSES CODIGOS.
  ENV['FACEBOOK_APP_ID'] = "2427701934121933";
  #Esse é o codigo do heroku ENV['FACEBOOK_APP_ID'] = "510749972610314";
  ENV['FACEBOOK_APP_SECRET'] = "a043b078cafc4a7eacfdd6181e0fad28";
  #Esse é o codigo do heroku ENV['FACEBOOK_APP_SECRET'] = "9cdf6fa3e0a9c7c745e2dc7c5e90717b";
  #senha do gmail: Encostakiapp2017 e a do facebook: Encostakiapp2017! logins: encostakiapp@gmail.com
end
