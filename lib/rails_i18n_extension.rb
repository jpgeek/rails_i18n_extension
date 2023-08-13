# frozen_string_literal: true

require_relative "rails_i18n_extension/version"
require_relative 'rails_i18n_extension/railtie' if defined?(Rails)

module RailsI18nExtension
  class Error < StandardError; end
  # Your code goes here...
end
