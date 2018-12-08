require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SkWeb
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
     #=========================================#
     #            FOR MODULES                  #
     #=========================================#
     config.autoload_paths += %W(#{config.root}/lib/)
     #=========================================#
     #            FOR IMAGE FOLDERS            #
     #=========================================#
     Dir.glob("#{Rails.root}/app/assets/images/**/").each do |path|
        config.assets.paths << path
     end
     #=========================================#
     #=========================================#
  end
end
