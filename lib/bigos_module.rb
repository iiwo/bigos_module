module BigosModule

  class Base < AbstractController::Base

    include AbstractController::Rendering
    include AbstractController::Layouts
    include AbstractController::Helpers
    include AbstractController::Translation
    include AbstractController::AssetPaths
    include ActionController::UrlWriter

    self.view_paths = "app/views"

    def self.frontend_widget
      raise("not implemented by this module")
    end

    def self.backend_widget
      raise("not implemented by this module")
    end

  end

end
