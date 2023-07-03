module RailsAccordion
  class Engine < ::Rails::Engine
    isolate_namespace RailsAccordion

    initializer "rails_accordion.helpers" do
      ActiveSupport.on_load :action_controller do
        helper RailsAccordion::ApplicationHelper
      end
    end

    config.app_middleware.use(
      Rack::Static,
      urls: ["/rails_accordion_assets"],
      root: RailsAccordion::Engine.root.join("public")
    )
  end
end
