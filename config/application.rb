require File.expand_path('../boot', __FILE__)

require 'rails/all'

if defined?(Bundler)
  # If you precompile assets before deploying to production, use this line
  #Bundler.require(*Rails.groups(:assets => %w(development test)))
  # If you want your assets lazily compiled in production, use this line
   Bundler.require(:default, :assets, Rails.env)
end

module Blog
  class Application < Rails::Application

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]

    # Enable the asset pipeline
    config.autoload_paths += %W(#{config.root}/lib)

    config.assets.enabled = true
    config.assets.version = '1.0'
    # Dir[File.join(Rails.root, "lib", "core_ext", "*.rb")].each {|l| require l }

  end
end