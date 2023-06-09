class ItemBodyComponent < ViewComponent::Base
  def call
    if content?
      content_tag :div, class: "accordion_content", style: content_styles do
        content_tag :div, content, class: "accordion_content-container p-2"
      end
    else
      content_tag(:div, nil, class: "hidden")
    end
  end

  private

  def content_styles
    "transition-duration: #{parse_duration}ms;"
  end

  def parse_duration
    RailsAccordion.configuration.animation_duration
  end
end
