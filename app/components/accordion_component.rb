# frozen_string_literal: true

class AccordionComponent < ViewComponent::Base

  def initialize(**args)
    super
    @args = args.presence || {}
    set_data_params
  end

  def call
    content_tag(:div, content, **@args)
  end

  private

  def set_data_params
    @args[:data] ||= {}
    @args[:data][:controller] = [@args[:data][:controller], "accordion"].compact.join(" ")
    @args[:data][:multiple_open] = @args.delete(:multiple_open) || RailsAccordion.configuration.multiple_open
    @args[:data][:default_state] = @args.delete(:default_state) || RailsAccordion.configuration.default_state
  end
end
