require_relative "boot"

require "rails"
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_view/railtie"
require "sprockets/railtie"
Bundler.require(*Rails.groups)

module Bbltree
  class Application < Rails::Application
  end
end
