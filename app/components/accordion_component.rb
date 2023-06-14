# frozen_string_literal: true

class AccordionComponent < ViewComponent::Base
  def initialize(**args)
    @args = args.presence || {}
  end

  def call
    content_tag(:div, content, data: data_options, **@args)
  end

  private

  def data_options
    data = @args.delete(:data) || {}
    {
      controller: [data.delete(:controller), "accordion"].compact.join(" "),
      accordion_multiple_open_value: @args.delete(:multiple_open) || RailsAccordion.configuration.multiple_open,
      accordion_default_state_value: @args.delete(:default_state) || RailsAccordion.configuration.default_state,
      **data
    }
  end
end
