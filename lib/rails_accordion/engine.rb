module RailsAccordion
  class Engine < ::Rails::Engine
    isolate_namespace RailsAccordion

    config.app_middleware.use(
      Rack::Static,
      urls: ["/rails_accordion_assets"],
      root: RailsAccordion::Engine.root.join("public")
    )
  end
end
