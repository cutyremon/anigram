require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AniGram
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    # Include the authenticity token in remote forms.
    config.action_view.embed_authenticity_token_in_remote_forms = true
    config.time_zone = 'Asia/Bangkok'
    config.i18n.load_path += Dir[Rails.root.join('lib', 'locale', '*.{rb, yml}')]
    config.i18n.default_locale = :en
    Koala.config.api_version = 'v2.0'
  end
end