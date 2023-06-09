class ItemHeadComponent < ViewComponent::Base
  def call
    content_tag :div, content, class: "accordion_toggle"
  end
end
