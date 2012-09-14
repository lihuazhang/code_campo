# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
CodeCampo::Application.initialize!
CodeCampo::Application.configure do
  config.gem 'sitemap_generator'
end
