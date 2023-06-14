# frozen_string_literal: true

class ItemComponent < ViewComponent::Base
  renders_one :body
  renders_one :header

  def initialize(**args)
    @args = args.presence || {}
  end

  def call
    content_tag :div, class: [@args.delete(:class), "accordion_item"].compact.join(" "), data: { accordion_target: "item" }, **@args do
      header_component + body_component
    end
  end

  private

  def header_component
    content_tag :div, header, class: "accordion_toggle", data: { action: "click->accordion#toggle" }
  end

  def body_component
    if body?
      content_tag :div, class: "accordion_content", style: content_styles do
        content_tag :div, body, class: "accordion_content-container p-2"
      end
    else
      content_tag(:div, nil, class: "hidden")
    end
  end

  def content_styles
    "transition-duration: #{parse_duration}ms;"
  end

  def parse_duration
    RailsAccordion.configuration.animation_duration
  end
end
