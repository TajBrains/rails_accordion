# frozen_string_literal: true

require "zeitwerk"

loader = Zeitwerk::Loader.for_gem
loader.ignore("#{__dir__}/generators")
loader.setup

module RailsAccordion

  class Error < StandardError; end

  class Engine < ::Rails::Engine
    isolate_namespace RailsAccordion

    initializer "rails_accordion.importmap" do |app|
      if defined?(Importmap)
        app.config.assets.precompile << "rails_accordion.js"
        app.config.assets.precompile << "rails_accordion.css"
      end
    end
  end

  class Railtie < Rails::Railtie
    ActiveSupport.on_load :action_view do
      include RailsAccordion
    end
  end

  def accordion(name, **args)
    acc = RailsAccordion::Accordion.new(name, **args)
    yield acc
    # acc.render
    render AccordionComponent.new(acc)
  end

  def accordion_item(**args, &block)
    render ItemComponent.new(**args), &block
  end
end

loader.eager_load
