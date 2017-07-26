module Fastlane
  module Helper
    class JavaPropertiesHelper
      # class methods that you define here become available in your action
      # as `Helper::JavaPropertiesHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the java_properties plugin helper!")
      end
    end
  end
end
