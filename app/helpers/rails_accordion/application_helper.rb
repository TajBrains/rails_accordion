module RailsAccordion
  module ApplicationHelper
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
end
