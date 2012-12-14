module BigosModule

  class Base < ::Rails::Engine

    def frontend_widget
      raise("not implemented by this module")
    end

    def backend_widget
      raise("not implemented by this module")
    end

  end

end
