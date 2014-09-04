require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BadRailsIdeas
  class Application < Rails::Application
    config.autoload_paths << Rails.root.join('lib/misc')
 
    config.action_controller.permit_all_parameters = true
  end
end
