# frozen_string_literal: true

class ItemComponent < ViewComponent::Base
  renders_one :body
  renders_one :header

  def initialize(item)
    # set_classes
  end

  def call
    content_tag :div do
      "Hello world"
    end
  end

  private

  # def set_classes
  #   @args[:class] = [@args[:class], "accordion_item"].compact.join(" ")
  # end
end
