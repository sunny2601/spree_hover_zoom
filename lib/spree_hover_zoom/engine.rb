module SpreeHoverZoom
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'spree_hover_zoom'

    config.autoload_paths += %W(#{config.root}/lib)

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
    
     initializer "spree.hover_zoom.preferences", :after => "spree.environment" do |app|
      SpreeHoverZoom::Config = Spree::HoverZoomConfiguration.new 
    end
    
  end
end
