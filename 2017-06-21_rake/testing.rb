module Testing
  def self.run
    puts "Running..."
  end
end

module Testing2

  def self.setup
    puts "Setup..."
  end

  class << self
    def run
      puts "Running again..."
    end
  end
end

Testing.run
Testing2.run
Testing2.setup
