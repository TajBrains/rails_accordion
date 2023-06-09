# frozen_string_literal: true

class AccordionComponent < ViewComponent::Base

  def initialize(accordion, **args)
    @accordion = accordion
    @args = args.presence || {}
    set_data_params

    puts "items:"
    puts accordion.items
  end

  def call
    content_tag :div, **@args do
      @accordion.items.map do |item|
        render ItemComponent.new(item) do |it|
          it.header do
            header
          end
    
          it.body do
            body
          end
        end
      end
    end
  end

  private

  def set_data_params
    @args[:data] ||= {}
    @args[:data][:controller] = [@args[:data][:controller], "accordion"].compact.join(" ")
    @args[:data][:multiple_open] = @args.delete(:multiple_open) || RailsAccordion.configuration.multiple_open
    @args[:data][:accordion_default_state_value] = @args.delete(:default_state) || RailsAccordion.configuration.default_state
  end
end
