# frozen_string_literal: true

require_relative "lib/rails_accordion/version"

Gem::Specification.new do |spec|
  spec.name = "rails_accordion"
  spec.version = ENV['GEM_VERSION'] || RailsAccordion::VERSION
  spec.authors = ["Ahmadshoh Nasrullozoda"]
  spec.email = ["tajbrains@gmail.com"]

  spec.summary = "rails_accordion is a Ruby gem that provides an easy-to-use accordion component for use in Rails web applications."
  spec.description = "rails_accordion is a Ruby gem that provides an easy-to-use accordion component for use in Rails web applications. With this gem, developers can create collapsible sections of content that can be expanded or collapsed with a single click. The accordion is a great way to improve the user experience of your web application, by providing a clean and intuitive way to display complex information."
  spec.homepage = "https://github.com/Tajbrains/rails_accordion"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Tajbrains/rails_accordion"
  spec.metadata["changelog_uri"] = "https://github.com/Tajbrains/rails_accordion/blob/master/CHANGELOG.md"

  spec.files = Dir["{bin,app,lib,public}/**/*", "MIT-LICENSE", "Rakefile", "README.md", "rails_accordion.gemspec", "Gemfile", "Gemfile.lock"]

  spec.add_dependency "stimulus-rails", "~> 1.2"
  spec.add_dependency "view_component", "~> 2.52"
  spec.add_dependency "zeitwerk", "~> 2.6"
end
