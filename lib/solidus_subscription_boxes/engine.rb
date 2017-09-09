module SolidusSubscriptionBoxes
  class Engine < ::Rails::Engine
    isolate_namespace SolidusSubscriptionBoxes

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/decorators/**/*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare(&method(:activate).to_proc)
  end
end
