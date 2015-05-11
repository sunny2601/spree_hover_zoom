# Author::    Tom Statter
# Date::      March 2013
#
# Details::   Manage configuration for hover zoom extensions
#
module Spree
  module Admin
    class HoverZoomSettingsController < BaseController
     
      def show
        preferences
      end
     
      def edit
        preferences
      end
     
      def update
        params.each do |name, value|
          next unless SpreeHoverZoom::Config.has_preference?(name)
          SpreeHoverZoom::Config[name] = value
        end
     
        redirect_to admin_showcase_settings_path
      end
      
      private
      
      # css: {'position':'absolute', 'top': '70px', 'left':'740px'}
      def preferences
        @preferences ||= [:position]       
      end
    end
    
  end
end