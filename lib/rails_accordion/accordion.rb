class RailsAccordion::Accordion
  attr_reader :name, :options, :items

  def initialize(name, options = {})
    @name = name
    @options = options
    @items = []
  end

  def item(**args, &block)
    item = RailsAccordion::Item.new(self, **args)

    yield item

    @items << item
    # items << ItemComponent.new(**args), &block

    # render 
  end

end
