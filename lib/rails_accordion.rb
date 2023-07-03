# frozen_string_literal: true

require "zeitwerk"

loader = Zeitwerk::Loader.for_gem
loader.ignore("#{__dir__}/generators")
loader.setup

module RailsAccordion
  class Railtie < Rails::Railtie
    ActiveSupport.on_load :action_view do
      include RailsAccordion
    end
  end

  def self.root
    RailsAccordion::Engine.routes.find_script_name({})
  end

  def accordion(**args, &block)
    render AccordionComponent.new(**args), &block
  end

  def accordion_item(**args, &block)
    render ItemComponent.new(**args), &block
  end

  def rails_accordion_assets
    render "rails_accordion/assets"
  end
end

loader.eager_load
