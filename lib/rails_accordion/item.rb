class RailsAccordion::Item
  attr_reader :accordion, :args, :header, :body

  def initialize(accordion, **args)
    @accordion = accordion
    @args = args
  end

  def header(**args, &block)
    raise("You must provide a header for the accordion item") unless block_given?
      
    @header = ItemHeadComponent.new(**args, &block)
  end

  def body(**args, &block)
    raise("You must provide a body for the accordion item") unless block_given?

    @body = ItemBodyComponent.new(**args, &block)
  end

end
