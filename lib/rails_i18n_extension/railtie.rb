require 'rails'

module RailsI18nExtension
  class Railtie < Rails::Railtie
    config.before_configuration do
      config.i18n.load_path += Dir[File.join(__dir__, 'locales', '**', '*.{rb,yml}')]
    end
  end
end
