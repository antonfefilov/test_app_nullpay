require_relative "boot"

require "rails"
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
Bundler.require(*Rails.groups)

module Bbltree
  class Application < Rails::Application
    Rails.application.configure do
      # Devise recommendations
      config.action_mailer.default_url_options = { host: ENV["HOST"] }
    end
  end
end
