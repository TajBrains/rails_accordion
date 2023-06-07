module RailsAccordion
  class Configuration
    attr_accessor :default_state, :animation_duration, :multiple_open

    def initialize
      @default_state = :all_closed
      @animation_duration = 300
      @multiple_open = false
    end
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configuration=(config)
    @configuration = config
  end

  def self.configure
    yield configuration
  end
end
