module Celtec
  module Autocargo
    class Vehicle
      attr_reader :registration_plate

      def initialize(registration_plate)
        @registration_plate = registration_plate
      end
    end
  end
end

vehicle = Celtec::Autocargo::Vehicle.new('ABC1234')
puts vehicle.registration_plate


module Celtec
  PLATFORM_VERSION = 2.0

  module Autocargo
    module Helpers
    end
  end
end

# namespaced
module Celtec
  module Autocargo
    module Helpers
      class Version
        puts Module.nesting.inspect

        def self.current
          PLATFORM_VERSION
        end
      end
    end
  end
end

# scoped
class Celtec::Autocargo::Helpers::ScopedVersion
  PLATFORM_VERSION = 1.0

  puts Module.nesting.inspect

  def self.current
    PLATFORM_VERSION
  end
end

puts Celtec::Autocargo::Helpers::Version.current
