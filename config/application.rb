require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module App
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.time_zone = 'Tokyo' #アプリケーションのタイムゾーン
    config.active_record.default_timezone = :local #データベースのタイムゾーン
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

     # 認証トークンをremoteフォームに埋め込む
  config.action_view.embed_authenticity_token_in_remote_forms = true
  end

 
  
end
