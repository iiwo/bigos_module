module BigosModule

  class Base
    self.view_paths = "app/views"

    def self.frontend_widget
      raise("not implemented by this module")
    end

    def self.backend_widget
      raise("not implemented by this module")
    end
  end

  class AdminController < ActionController::Base

  end

end
