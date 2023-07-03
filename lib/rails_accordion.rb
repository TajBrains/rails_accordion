# frozen_string_literal: true

require "zeitwerk"

loader = Zeitwerk::Loader.for_gem
loader.ignore("#{__dir__}/generators")
loader.setup

module RailsAccordion
  def self.root
    RailsAccordion::Engine.routes.find_script_name({})
  end
end

loader.eager_load
