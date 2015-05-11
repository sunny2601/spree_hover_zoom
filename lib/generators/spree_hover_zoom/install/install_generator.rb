module SpreeHoverZoom
  module Generators
    class InstallGenerator < Rails::Generators::Base

      def add_javascripts
        append_file 'vendor/assets/javascripts/spree/frontend/all.js', "//= require frontend/easyzoom.js\n"
      end

      def add_stylesheets
        inject_into_file 'vendor/assets/stylesheets/spree/frontend/all.css', " *= require frontend/spree_hover_zoom\n", :before => /\*\//, :verbose => true
      end

      #def add_migrations
      #  run 'bundle exec rake railties:install:migrations FROM=spree_hover_zoom'
      #end

      #def run_migrations
      #   res = ask 'Would you like to run the migrations now? [Y/n]'
      #   if res == '' || res.downcase == 'y'
      #     run 'bundle exec rake db:migrate'
      #   else
      #     puts 'Skipping rake db:migrate, don\'t forget to run it!'
      #   end
      #end
    end
  end
end
