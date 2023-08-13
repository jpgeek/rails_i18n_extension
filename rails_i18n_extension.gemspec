# frozen_string_literal: true

require_relative "lib/rails_i18n_extension/version"

Gem::Specification.new do |spec|
  spec.name = "rails_i18n_extension"
  spec.version = RailsI18nExtension::VERSION
  spec.authors = ["Steve Brown"]
  spec.email = [""]

  spec.summary = "Additions to the rails-i18n gem."
  spec.description = "The rails-i18n gem is great, but lacks man tranlations that I use in virtually every project.  For example back, next_page, delete etc."
  spec.homepage = "https://github.com/jpgeek/rails_i18n_extension"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = ""

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/jpgeek/rails_i18n_extension.git"
  spec.metadata["changelog_uri"] = "https://github.com/jpgeek/rails_i18n_extension/CHANGELOG.md"

  spec.add_dependency 'rails', '~> 7.0'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
