require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DomainNotify
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.generators do |g|
      g.test_framework :rspec,
                      fixtures:true,
                      view_spec:false,
                      helper_spec:false,
                      routing_spec:false,
                      request_spec:false,
                      controller_spec:true
      g.fixtures_replacement :factory_girl, dir: 'spec/factories'
    end
  end
end
