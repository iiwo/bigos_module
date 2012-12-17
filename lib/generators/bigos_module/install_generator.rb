module BigosModule
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates a BigosModule initializer."
      def copy_initializer
        template "bigos_module.rb", "config/initializers/bigos_module.rb"
      end

    end
  end
end