Rails.application.configure do
  config.cache_classes                              = true
  config.eager_load                                 = true
  config.consider_all_requests_local                = false
  config.action_controller.perform_caching          = true
  config.cache_store                                = :memory_store, { size: 24.megabytes }
  config.serve_static_files                         = ENV['RAILS_SERVE_STATIC_FILES'].present?
  config.assets.js_compressor                       = :uglifier
  config.assets.compile                             = false
  config.assets.digest                              = true
  config.log_level                                  = :debug
  config.i18n.fallbacks                             = true
  config.active_support.deprecation                 = :notify
  config.log_formatter                              = ::Logger::Formatter.new
  config.active_record.dump_schema_after_migration  = false
  config.action_mailer.default_url_options          = { host: 'active-bridge.com' }
  config.action_mailer.delivery_method              = :mailgun
  config.action_mailer.mailgun_settings             = {
    api_key: 'key-6ad371c7e56cc40ef057014e089766d0',
    domain: 'sandboxe7e942fc95b747f6a5f4409f81adf58c.mailgun.org'
  }
end
