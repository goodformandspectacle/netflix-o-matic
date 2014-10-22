require File.expand_path('../boot', __FILE__)

require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_view/railtie"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module NetflixOMatic
  class Application < Rails::Application

    config.assets.precompile += %w( gfs-netflix.css layout.css skeleton.css )
    config.assets.version = '1.0'

    config.session_store :cookie_store, key: '_netflix-o-matic_session'

    config.action_dispatch.cookies_serializer = :json

    config.secret_key_base = ENV['SECRET_KEY_BASE']

    config.log_level = :warn

    STDOUT.sync = config.autoflush_log
    logger = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    logger.level = logger.class.const_get(config.log_level.to_s.upcase)

    config.logger = ActiveSupport::TaggedLogging.new(logger)


  end
end
