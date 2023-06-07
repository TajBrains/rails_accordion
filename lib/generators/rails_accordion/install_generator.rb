# frozen_string_literal: true
require "rails/generators"

module RailsAccordion
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("templates", __dir__)

      namespace "rails_accordion:install"
      desc "Copies all necessary files"

      def copy_config_file
        template 'rails_accordion.tt', 'config/initializers/rails_accordion.rb'
      end
    end
  end
end
