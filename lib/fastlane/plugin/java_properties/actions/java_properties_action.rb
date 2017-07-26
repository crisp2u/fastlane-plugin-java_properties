module Fastlane
  module Actions
    class JavaPropertiesAction < Action
      def self.run(params)
        UI.message("The java_properties plugin is working!")
      end

      def self.description
        "Read/Write Java Property files"
      end

      def self.authors
        ["Cristian Pop"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "Read and Write Java Property files"
      end

      def self.available_options
        [
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "JAVA_PROPERTIES_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
          #                             type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://github.com/fastlane/fastlane/blob/master/fastlane/docs/Platforms.md
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
