#require 'java-properties'
module Fastlane
  module Actions
    module SharedValues
      WRITE_JAVA_PROPERTIES_CUSTOM_VALUE = :WRITE_JAVA_PROPERTIES_CUSTOM_VALUE
    end

    class WriteJavaPropertiesAction < Action
      def self.run(params)
        # fastlane will take care of reading in the parameter and fetching the environment variable:
        UI.message "Parameter API Token: #{params[:data]}"
        #JavaProperties.generate(params[:data])

        # sh "shellcommand ./path"

        # Actions.lane_context[SharedValues::WRITE_JAVA_PROPERTIES_CUSTOM_VALUE] = "my_val"
      end

      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "Write a Java Properties files based on a hash"
      end

      def self.details
        # Optional:
        # this is your chance to provide a more detailed description of this action
        "Use this if you need to generate Java Property files"
      end

      def self.available_options
        # Define all options your action supports. 
        
        # Below a few examples
        [
          FastlaneCore::ConfigItem.new(key: :data,
                                       env_name: "FL_WRITE_JAVA_PROPERTIES_INPUT", # The name of the environment variable
                                       description: "Hash containing the values to be writtem", # a short description of this parameter,
                                       type: Hash,
                                       optional: false,
                                       verify_block: proc do |value|
                                          UI.user_error!("No API token for WriteJavaPropertiesAction given, pass using `api_token: 'token'`") unless (value and not value.empty?)
                                          # UI.user_error!("Couldn't find file at path '#{value}'") unless File.exist?(value)
                                       end),
          FastlaneCore::ConfigItem.new(key: :output_file,
                                       env_name: "FL_WRITE_JAVA_PROPERTIES_OUTPUT_FILE",
                                       description: "File path where to write the result",
                                       optional: false,
                                       is_string: true) 
        ]
      end

      def self.output
        # Define the shared values you are going to provide
        # Example
        [
          ['WRITE_JAVA_PROPERTIES_FILE_PATH', 'outut of path of the property file']
        ]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.authors
        # So no one will ever forget your contribution to fastlane :) You are awesome btw!
        ["Cristian Pop"]
      end

      def self.is_supported?(platform)
        # you can do things like
        # 
        #  true
        # 
        #  platform == :ios
        # 
        #  [:ios, :mac].include?(platform)
        # 

        true
      end
    end
  end
end
