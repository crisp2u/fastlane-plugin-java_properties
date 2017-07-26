describe Fastlane::Actions::JavaPropertiesAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The java_properties plugin is working!")

      Fastlane::Actions::JavaPropertiesAction.run(nil)
    end
  end
end
