module BigosModule

  mattr_accessor :authorization_inject_code
  @@inject_code = nil

  class Base

    def self.frontend_widget
      raise("not implemented by this module")
    end

    def self.backend_widget
      raise("not implemented by this module")
    end
  end

  class AdminController < ActionController::Base
    eval(authorization_inject_code) unless authorization_inject_code.blank?
  end

end
